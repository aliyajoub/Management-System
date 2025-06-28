# دليل الاختبارات لنظام إدارة المبيعات

يحتوي هذا الدليل على معلومات حول كيفية كتابة وتشغيل الاختبارات في مشروع نظام إدارة المبيعات.

## الواجهة الخلفية (Backend)

### إعداد بيئة الاختبار

تستخدم الواجهة الخلفية Jest كإطار عمل للاختبارات. يمكنك الاطلاع على إعدادات Jest في ملف `backend/jest.config.js`.

### تشغيل الاختبارات

يمكنك تشغيل اختبارات الواجهة الخلفية باستخدام الأمر التالي:

```bash
# من داخل مجلد backend
npm test

# أو باستخدام Docker
docker-compose exec backend npm test
```

### كتابة الاختبارات

يجب وضع ملفات الاختبار في نفس المجلد مع الملفات التي تختبرها، مع إضافة `.test.js` أو `.spec.js` إلى اسم الملف. على سبيل المثال:

- `src/controllers/auth.controller.js` -> `src/controllers/auth.controller.test.js`
- `src/models/user.model.js` -> `src/models/user.model.test.js`

### مثال على اختبار وحدة

```javascript
const { calculateTotal } = require('../utils/calculations');

describe('Calculation Utils', () => {
  test('calculateTotal should add tax correctly', () => {
    const items = [
      { price: 100, quantity: 2 },
      { price: 50, quantity: 1 }
    ];
    const taxRate = 0.15;
    
    const result = calculateTotal(items, taxRate);
    
    // (100 * 2 + 50 * 1) * 1.15 = 287.5
    expect(result).toBe(287.5);
  });
});
```

### اختبار API

لاختبار نقاط النهاية API، نستخدم `supertest`:

```javascript
const request = require('supertest');
const app = require('../index');

describe('Products API', () => {
  test('GET /api/products should return all products', async () => {
    const response = await request(app).get('/api/products');
    expect(response.status).toBe(200);
    expect(Array.isArray(response.body)).toBe(true);
  });
});
```

## الواجهة الأمامية (Frontend)

### إعداد بيئة الاختبار

تستخدم الواجهة الأمامية Jest و React Testing Library لاختبار المكونات. يمكنك الاطلاع على إعدادات Jest في ملف `frontend/jest.config.js`.

### تشغيل الاختبارات

يمكنك تشغيل اختبارات الواجهة الأمامية باستخدام الأمر التالي:

```bash
# من داخل مجلد frontend
npm test

# أو باستخدام Docker
docker-compose exec frontend npm test
```

لتشغيل الاختبارات في وضع المراقبة (يعيد تشغيل الاختبارات عند تغيير الملفات):

```bash
npm test -- --watch
```

### كتابة الاختبارات

يجب وضع ملفات الاختبار في نفس المجلد مع المكونات التي تختبرها، مع إضافة `.test.jsx` أو `.spec.jsx` إلى اسم الملف. على سبيل المثال:

- `src/components/Button.jsx` -> `src/components/Button.test.jsx`
- `src/pages/Login.jsx` -> `src/pages/Login.test.jsx`

### مثال على اختبار مكون

```jsx
import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import Button from './Button';

describe('Button Component', () => {
  test('renders button with correct text', () => {
    render(<Button>Click me</Button>);
    expect(screen.getByText('Click me')).toBeInTheDocument();
  });

  test('calls onClick handler when clicked', () => {
    const handleClick = jest.fn();
    render(<Button onClick={handleClick}>Click me</Button>);
    
    fireEvent.click(screen.getByText('Click me'));
    
    expect(handleClick).toHaveBeenCalledTimes(1);
  });
});
```

### اختبار Redux

لاختبار مكونات Redux، يمكنك استخدام `redux-mock-store`:

```jsx
import React from 'react';
import { render, screen } from '@testing-library/react';
import { Provider } from 'react-redux';
import configureStore from 'redux-mock-store';
import UserProfile from './UserProfile';

const mockStore = configureStore([]);

describe('UserProfile Component', () => {
  test('displays user information from Redux store', () => {
    const store = mockStore({
      auth: {
        user: {
          name: 'Test User',
          email: 'test@example.com'
        }
      }
    });
    
    render(
      <Provider store={store}>
        <UserProfile />
      </Provider>
    );
    
    expect(screen.getByText('Test User')).toBeInTheDocument();
    expect(screen.getByText('test@example.com')).toBeInTheDocument();
  });
});
```

## تغطية الاختبارات (Test Coverage)

يمكنك تشغيل الاختبارات مع تقرير التغطية باستخدام:

```bash
# للواجهة الخلفية
npm test -- --coverage

# للواجهة الأمامية
npm test -- --coverage
```

سيتم إنشاء تقرير التغطية في مجلد `coverage/` ويمكنك فتح `coverage/lcov-report/index.html` في المتصفح لعرض تقرير مفصل.

## اختبارات التكامل (Integration Tests)

لإجراء اختبارات التكامل التي تختبر تفاعل الواجهة الأمامية مع الواجهة الخلفية، يمكنك استخدام أدوات مثل Cypress أو Playwright. هذه الأدوات غير مضمنة في المشروع حاليًا ولكن يمكن إضافتها عند الحاجة.

## اختبارات E2E (End-to-End)

لإجراء اختبارات E2E، يمكنك إضافة Cypress إلى المشروع:

```bash
# تثبيت Cypress في الواجهة الأمامية
cd frontend
npm install --save-dev cypress
```

ثم إضافة سكريبت في `package.json`:

```json
"scripts": {
  "cypress:open": "cypress open",
  "cypress:run": "cypress run"
}
```

## أفضل الممارسات للاختبارات

1. **اختبر السلوك، وليس التنفيذ**: ركز على اختبار ما يفعله المكون أو الوظيفة، وليس كيفية تنفيذها.
2. **استخدم بيانات اختبار واضحة**: استخدم بيانات اختبار واضحة ومفهومة تعكس سيناريوهات العالم الحقيقي.
3. **اختبر الحالات الإيجابية والسلبية**: اختبر كلاً من المسارات السعيدة والمسارات الخاطئة.
4. **استخدم المحاكاة (Mocking) بحكمة**: استخدم المحاكاة لعزل الوحدة التي تختبرها، ولكن لا تفرط في استخدامها.
5. **حافظ على الاختبارات مستقلة**: يجب أن يكون كل اختبار مستقلاً عن الاختبارات الأخرى.
6. **اكتب اختبارات قابلة للصيانة**: تجنب التكرار واستخدم الدوال المساعدة عند الحاجة.

## استكشاف الأخطاء وإصلاحها

إذا واجهت مشاكل في تشغيل الاختبارات، جرب ما يلي:

1. تأكد من تثبيت جميع التبعيات: `npm install`
2. امسح ذاكرة التخزين المؤقت: `npm cache clean --force`
3. تحقق من إصدارات Node.js و npm
4. تحقق من ملفات الإعدادات: `jest.config.js` و `setupTests.js`
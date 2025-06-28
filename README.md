# نظام إدارة المبيعات والمخزون للبقالة

نظام متكامل لإدارة المبيعات والمخزون للبقالات والمتاجر الصغيرة، مع دعم كامل للغة العربية والإنجليزية.

## المميزات

- واجهة مستخدم سهلة الاستخدام وبديهية
- دعم متعدد اللغات (العربية والإنجليزية)
- إدارة المنتجات والفئات
- إدارة المخزون والتنبيهات
- نظام نقاط البيع (POS)
- إدارة العملاء
- التقارير والإحصائيات
- إدارة المستخدمين والصلاحيات

## المتطلبات

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## التثبيت والتشغيل

1. استنسخ المستودع:

```bash
git clone https://github.com/yourusername/grocery-management-system.git
cd grocery-management-system
```

2. قم بتشغيل التطبيق باستخدام Docker Compose:

```bash
docker-compose up -d
```

3. قم بالوصول إلى التطبيق:
   - واجهة المستخدم: http://localhost:3004
   - واجهة API: http://localhost:3001/api

## هيكل المشروع

```
├── backend/             # خدمة الواجهة الخلفية (Node.js/Express)
├── frontend/            # خدمة الواجهة الأمامية (React)
├── docker-compose.yml   # تكوين Docker Compose
└── README.md            # ملف التوثيق
```

## التطوير

### الواجهة الأمامية

```bash
cd frontend
npm install
npm start
```

### الواجهة الخلفية

```bash
cd backend
npm install
npm run dev
```

## قاعدة البيانات

يستخدم النظام PostgreSQL كقاعدة بيانات. يمكنك الوصول إليها من خلال:

- المضيف: localhost
- المنفذ: 5432
- اسم قاعدة البيانات: grocery_management
- المستخدم: postgres
- كلمة المرور: postgres

## المساهمة

null

## الترخيص

هذا المشروع مرخص بموجب رخصة MIT - انظر ملف [LICENSE](LICENSE) للتفاصيل.
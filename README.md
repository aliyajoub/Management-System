# Grocery Management System
## General Description
The Grocery Management System is an integrated application specifically designed for managing small and medium-sized grocery stores. The system features full Arabic language support, with an easy-to-use and intuitive user interface that helps store owners efficiently manage their sales and inventory.

## Key Features
- Multilingual User Interface : Full support for Arabic with the ability to add English language.
- Comprehensive Dashboard : Display sales statistics, low stock products, and recent sales.
- Point of Sale (POS) System : User-friendly interface for quick and efficient sales transactions.
- Product and Category Management : Organize products into categories with barcode and price tracking capabilities.
- Inventory Management : Monitor inventory levels with alerts for low stock products.
- Customer Management : Store customer data and track their purchases.
- Invoice Management : Easily create and print invoices.
- Reports and Statistics : Detailed reports on sales, inventory, and profits.
- User and Permission Management : Define different roles and permissions for users.
## Technologies Used
### Frontend
- React.js : JavaScript framework for building interactive user interfaces.
- Material-UI : React component library following Google's Material Design.
- Redux : For centralized application state management.
- i18next : For multilingual support.
- Recharts : For displaying data in charts.
- Formik & Yup : For handling forms and data validation.
### Backend
- Node.js & Express : For building the application programming interface (API).
- Sequelize : ORM system for database interaction.
- PostgreSQL : Relational database for storing system data.
- JWT : For authentication and authorization management.
- bcryptjs : For password encryption.
### Development and Deployment Tools
- Docker & Docker Compose : For unifying development and deployment environments.
- ESLint & Prettier : To ensure code quality and consistent formatting.
- Jest : For code testing.
## Database Structure
The system uses a PostgreSQL database with a comprehensive structure that includes the following tables:

- Users, roles, and permissions
- Products and categories
- Inventory and inventory movements
- Sales and sales details
- Customers
- Invoices
## How to Run
The system is run using Docker Compose, which simplifies the installation and operation process across different environments:

```
docker-compose up -d
```
After running, the user interface can be accessed via a browser at: http://localhost:3005
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

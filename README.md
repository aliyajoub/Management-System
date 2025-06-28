# Management-System
Grocery Management System
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
# ظام إدارة المبيعات والمخزون للبقالة
## الوصف العام
نظام إدارة المبيعات والمخزون للبقالة هو تطبيق متكامل مصمم خصيصًا لإدارة المتاجر والبقالات الصغيرة والمتوسطة. يتميز النظام بدعم كامل للغة العربية، مع واجهة مستخدم سهلة الاستخدام وبديهية تساعد أصحاب المتاجر على إدارة مبيعاتهم ومخزونهم بكفاءة عالية.

## المميزات الرئيسية
- واجهة مستخدم متعددة اللغات : دعم كامل للغة العربية مع إمكانية إضافة اللغة الإنجليزية.
- لوحة تحكم شاملة : عرض إحصائيات المبيعات، المنتجات منخفضة المخزون، والمبيعات الأخيرة.
- نظام نقاط البيع (POS) : واجهة سهلة الاستخدام لإجراء عمليات البيع بسرعة وكفاءة.
- إدارة المنتجات والفئات : تنظيم المنتجات في فئات مع إمكانية تتبع الباركود والأسعار.
- إدارة المخزون : مراقبة مستويات المخزون مع تنبيهات للمنتجات منخفضة المخزون.
- إدارة العملاء : حفظ بيانات العملاء وتتبع مشترياتهم.
- إدارة الفواتير : إنشاء وطباعة الفواتير بسهولة.
- التقارير والإحصائيات : تقارير مفصلة عن المبيعات والمخزون والأرباح.
- إدارة المستخدمين والصلاحيات : تحديد أدوار وصلاحيات مختلفة للمستخدمين.
## التقنيات المستخدمة
### الواجهة الأمامية (Frontend)
- React.js : إطار عمل JavaScript لبناء واجهات المستخدم التفاعلية.
- Material-UI : مكتبة مكونات React تتبع تصميم Material Design من Google.
- Redux : لإدارة حالة التطبيق بشكل مركزي.
- i18next : لدعم تعدد اللغات.
- Recharts : لعرض البيانات في رسوم بيانية.
- Formik & Yup : للتعامل مع النماذج والتحقق من صحة البيانات.
### الواجهة الخلفية (Backend)
- Node.js & Express : لبناء واجهة برمجة التطبيقات (API).
- Sequelize : نظام ORM للتعامل مع قاعدة البيانات.
- PostgreSQL : قاعدة بيانات علائقية لتخزين بيانات النظام.
- JWT : لإدارة المصادقة والتفويض.
- bcryptjs : لتشفير كلمات المرور.
### أدوات التطوير والنشر
- Docker & Docker Compose : لتوحيد بيئة التطوير والنشر.
- ESLint & Prettier : لضمان جودة الكود واتساق التنسيق.
- Jest : لاختبار الكود.
## هيكل قاعدة البيانات
يستخدم النظام قاعدة بيانات PostgreSQL مع هيكل شامل يتضمن الجداول التالية:

- المستخدمين والأدوار والصلاحيات
- المنتجات والفئات
- المخزون وحركات المخزون
- المبيعات وتفاصيل المبيعات
- العملاء
- الفواتير
## كيفية التشغيل
يتم تشغيل النظام باستخدام Docker Compose، مما يسهل عملية التثبيت والتشغيل على مختلف البيئات:

```
docker-compose up -d
```
بعد التشغيل، يمكن الوصول إلى واجهة المستخدم عبر المتصفح على العنوان: http://localhost:3005


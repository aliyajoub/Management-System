# مخطط قاعدة البيانات لنظام إدارة مبيعات البقالة

هذا المستند يوضح هيكل قاعدة البيانات المقترح لنظام إدارة مبيعات البقالة متعدد اللغات. تم تصميم المخطط ليدعم جميع متطلبات النظام بما في ذلك إدارة المنتجات، المبيعات، المستخدمين، ونظام المكافآت، مع دعم كامل للغتين العربية والإنجليزية.

## الجداول الرئيسية

### 1. جدول المستخدمين (Users)

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role_id INTEGER NOT NULL REFERENCES roles(id),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 2. جدول الأدوار (Roles)

```sql
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 3. جدول صلاحيات الأدوار (Role_Permissions)

```sql
CREATE TABLE role_permissions (
    role_id INTEGER NOT NULL REFERENCES roles(id),
    permission_id INTEGER NOT NULL REFERENCES permissions(id),
    PRIMARY KEY (role_id, permission_id)
);
```

### 4. جدول الصلاحيات (Permissions)

```sql
CREATE TABLE permissions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 5. جدول الفئات (Categories)

```sql
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name_ar VARCHAR(100) NOT NULL,  -- الاسم بالعربية
    name_en VARCHAR(100) NOT NULL,  -- الاسم بالإنجليزية
    description_ar TEXT,            -- الوصف بالعربية
    description_en TEXT,            -- الوصف بالإنجليزية
    image_url VARCHAR(255),
    parent_id INTEGER REFERENCES categories(id),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 6. جدول المنتجات (Products)

```sql
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    barcode VARCHAR(50) UNIQUE,
    name_ar VARCHAR(100) NOT NULL,  -- الاسم بالعربية
    name_en VARCHAR(100) NOT NULL,  -- الاسم بالإنجليزية
    description_ar TEXT,            -- الوصف بالعربية
    description_en TEXT,            -- الوصف بالإنجليزية
    category_id INTEGER NOT NULL REFERENCES categories(id),
    purchase_price DECIMAL(10, 2) NOT NULL,
    selling_price DECIMAL(10, 2) NOT NULL,
    discount_price DECIMAL(10, 2),
    stock_quantity INTEGER NOT NULL DEFAULT 0,
    min_stock_level INTEGER DEFAULT 5,
    unit_id INTEGER NOT NULL REFERENCES units(id),
    image_url VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 7. جدول الوحدات (Units)

```sql
CREATE TABLE units (
    id SERIAL PRIMARY KEY,
    name_ar VARCHAR(50) NOT NULL,  -- الاسم بالعربية
    name_en VARCHAR(50) NOT NULL,  -- الاسم بالإنجليزية
    abbreviation_ar VARCHAR(10),   -- الاختصار بالعربية
    abbreviation_en VARCHAR(10),   -- الاختصار بالإنجليزية
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 8. جدول العملاء (Customers)

```sql
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    address TEXT,
    loyalty_points INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 9. جدول الفواتير (Invoices)

```sql
CREATE TABLE invoices (
    id SERIAL PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE NOT NULL,
    customer_id INTEGER REFERENCES customers(id),
    user_id INTEGER NOT NULL REFERENCES users(id),
    total_amount DECIMAL(10, 2) NOT NULL,
    discount_amount DECIMAL(10, 2) DEFAULT 0,
    tax_amount DECIMAL(10, 2) DEFAULT 0,
    final_amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 10. جدول تفاصيل الفواتير (Invoice_Items)

```sql
CREATE TABLE invoice_items (
    id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL REFERENCES invoices(id),
    product_id INTEGER NOT NULL REFERENCES products(id),
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    discount_amount DECIMAL(10, 2) DEFAULT 0,
    total_price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 11. جدول الموردين (Suppliers)

```sql
CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    address TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 12. جدول عمليات الشراء (Purchases)

```sql
CREATE TABLE purchases (
    id SERIAL PRIMARY KEY,
    purchase_number VARCHAR(20) UNIQUE NOT NULL,
    supplier_id INTEGER NOT NULL REFERENCES suppliers(id),
    user_id INTEGER NOT NULL REFERENCES users(id),
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 13. جدول تفاصيل عمليات الشراء (Purchase_Items)

```sql
CREATE TABLE purchase_items (
    id SERIAL PRIMARY KEY,
    purchase_id INTEGER NOT NULL REFERENCES purchases(id),
    product_id INTEGER NOT NULL REFERENCES products(id),
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 14. جدول حركات المخزون (Stock_Movements)

```sql
CREATE TABLE stock_movements (
    id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL REFERENCES products(id),
    quantity INTEGER NOT NULL,  -- موجب للإضافة، سالب للسحب
    movement_type VARCHAR(20) NOT NULL,  -- 'purchase', 'sale', 'adjustment', 'return'
    reference_id INTEGER,  -- رقم الفاتورة أو عملية الشراء
    reference_type VARCHAR(20),  -- 'invoice', 'purchase', 'adjustment'
    notes TEXT,
    user_id INTEGER NOT NULL REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 15. جدول إعدادات النظام (Settings)

```sql
CREATE TABLE settings (
    id SERIAL PRIMARY KEY,
    key VARCHAR(50) UNIQUE NOT NULL,
    value TEXT,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 16. جدول اللغات (Languages)

```sql
CREATE TABLE languages (
    id SERIAL PRIMARY KEY,
    code VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    is_rtl BOOLEAN DEFAULT FALSE,
    is_default BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## البيانات الأولية

### إدخال الأدوار الأساسية

```sql
INSERT INTO roles (name, description) VALUES
('admin', 'مدير النظام مع كامل الصلاحيات'),
('manager', 'مدير المتجر'),
('cashier', 'كاشير / موظف مبيعات');
```

### إدخال اللغات المدعومة

```sql
INSERT INTO languages (code, name, is_rtl, is_default, is_active) VALUES
('ar', 'العربية', TRUE, TRUE, TRUE),
('en', 'English', FALSE, FALSE, TRUE);
```

### إدخال وحدات القياس الأساسية

```sql
INSERT INTO units (name_ar, name_en, abbreviation_ar, abbreviation_en) VALUES
('قطعة', 'Piece', 'ق', 'pc'),
('كيلوجرام', 'Kilogram', 'كجم', 'kg'),
('جرام', 'Gram', 'جم', 'g'),
('لتر', 'Liter', 'ل', 'l'),
('مليلتر', 'Milliliter', 'مل', 'ml'),
('عبوة', 'Package', 'عب', 'pkg');
```

## العلاقات والمؤشرات

- تم تصميم قاعدة البيانات باستخدام العلاقات المرجعية (Foreign Keys) لضمان سلامة البيانات.
- يجب إنشاء مؤشرات (Indexes) على الأعمدة التي يتم البحث فيها بشكل متكرر لتحسين الأداء.
- تم تضمين حقول متعددة اللغات في الجداول الرئيسية لدعم اللغتين العربية والإنجليزية.

## ملاحظات تصميمية

1. **دعم تعدد اللغات**: تم تصميم الجداول لتخزين البيانات بلغات متعددة من خلال حقول منفصلة لكل لغة (مثل name_ar و name_en).

2. **تتبع المخزون**: يتم تتبع حركة المخزون من خلال جدول stock_movements الذي يسجل جميع العمليات التي تؤثر على كمية المنتجات.

3. **نظام المكافآت**: يتم تخزين نقاط الولاء للعملاء في جدول customers ويمكن استخدامها للحصول على خصومات.

4. **الأمان والصلاحيات**: تم تنفيذ نظام أدوار وصلاحيات مرن يسمح بتحديد وصول المستخدمين إلى وظائف النظام المختلفة.

5. **قابلية التوسع**: تم تصميم المخطط ليكون قابلاً للتوسع مع نمو النظام وإضافة ميزات جديدة.

هذا المخطط يمثل الهيكل الأساسي لقاعدة البيانات ويمكن تعديله أو توسيعه حسب المتطلبات المحددة للنظام.
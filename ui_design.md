# تصميم واجهة المستخدم لنظام إدارة مبيعات البقالة

هذا المستند يوضح تصميم واجهة المستخدم (UI/UX) المقترح لنظام إدارة مبيعات البقالة متعدد اللغات. تم تصميم الواجهة لتكون سهلة الاستخدام، جذابة بصرياً، وتدعم اللغتين العربية والإنجليزية بشكل كامل.

## المبادئ التوجيهية للتصميم

1. **بساطة الاستخدام**: واجهة بديهية وسهلة التعلم لجميع المستخدمين.
2. **الاستجابة**: تصميم متجاوب يعمل على مختلف أحجام الشاشات والأجهزة.
3. **الاتساق**: استخدام عناصر تصميم موحدة في جميع أنحاء التطبيق.
4. **دعم RTL/LTR**: تصميم يدعم الاتجاهين من اليمين إلى اليسار (العربية) ومن اليسار إلى اليمين (الإنجليزية).
5. **سهولة الوصول**: مراعاة معايير إمكانية الوصول لضمان استخدام الجميع للنظام.

## نظام الألوان

### الألوان الأساسية
- **اللون الرئيسي**: #3498db (أزرق)
- **اللون الثانوي**: #2ecc71 (أخضر)
- **لون التنبيه**: #e74c3c (أحمر)
- **لون التحذير**: #f39c12 (برتقالي)
- **لون النجاح**: #27ae60 (أخضر داكن)
- **لون المعلومات**: #3498db (أزرق فاتح)

### ألوان الخلفية والنص
- **خلفية رئيسية**: #ffffff (أبيض)
- **خلفية ثانوية**: #f8f9fa (رمادي فاتح جداً)
- **نص أساسي**: #333333 (رمادي داكن)
- **نص ثانوي**: #6c757d (رمادي متوسط)
- **نص معطل**: #adb5bd (رمادي فاتح)

## الخطوط

### الخط العربي
- **الخط الرئيسي**: "Cairo", sans-serif
- **الخط البديل**: "Tajawal", sans-serif

### الخط الإنجليزي
- **الخط الرئيسي**: "Roboto", sans-serif
- **الخط البديل**: "Open Sans", sans-serif

### أحجام الخطوط
- **العناوين الرئيسية (h1)**: 24px
- **العناوين الفرعية (h2)**: 20px
- **العناوين الصغيرة (h3)**: 18px
- **النص العادي**: 16px
- **النص الصغير**: 14px
- **النص الأصغر**: 12px

## تخطيط الصفحات الرئيسية

### 1. صفحة تسجيل الدخول

```
+------------------------------------------+
|                                          |
|                 [شعار]                  |
|                                          |
|      +---------------------------+       |
|      |       اسم المستخدم       |       |
|      +---------------------------+       |
|                                          |
|      +---------------------------+       |
|      |       كلمة المرور        |       |
|      +---------------------------+       |
|                                          |
|      [تذكرني]                            |
|                                          |
|      +---------------------------+       |
|      |       تسجيل الدخول       |       |
|      +---------------------------+       |
|                                          |
|      [نسيت كلمة المرور؟]                 |
|                                          |
+------------------------------------------+
```

### 2. اللوحة الرئيسية (Dashboard)

```
+------------------------------------------+
| [شعار] | [البحث]         [المستخدم] [⚙️] |
+--------+-------------------------------+--+
|        |                              |  |
| القائمة|     إحصائيات سريعة          |  |
| الجانبية|  +------+  +------+  +------+ |  |
|        |  |المبيعات| |المخزون| |العملاء| |  |
|        |  | اليوم | | المتاح| |النشطين| |  |
|        |  +------+  +------+  +------+ |  |
|        |                              |  |
|        |     الرسوم البيانية         |  |
|        |  +----------------------+    |  |
|        |  |                      |    |  |
|        |  |   مبيعات الأسبوع     |    |  |
|        |  |                      |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  +----------+  +----------+  |  |
|        |  | المنتجات |  | الفئات   |  |  |
|        |  | الأكثر   |  | الأكثر   |  |  |
|        |  | مبيعاً   |  | مبيعاً   |  |  |
|        |  +----------+  +----------+  |  |
|        |                              |  |
+--------+------------------------------+--+
```

### 3. صفحة نقاط البيع (POS)

```
+------------------------------------------+
| [شعار] | [البحث]         [المستخدم] [⚙️] |
+--------+-------------------------------+--+
|        |                              |  |
| القائمة|  +----------------------+    |  |
| الجانبية|  |                      |    |  |
|        |  |      سلة المشتريات    |    |  |
|        |  |                      |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  +----------------------+    |  |
|        |  | المجموع: 00.00       |    |  |
|        |  | الضريبة: 00.00       |    |  |
|        |  | الخصم: 00.00         |    |  |
|        |  | الإجمالي: 00.00      |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  [دفع نقدي] [دفع إلكتروني]   |  |
|        |                              |  |
|        |  +----------------------+    |  |
|        |  |                      |    |  |
|        |  |    قائمة المنتجات    |    |  |
|        |  |                      |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
+--------+------------------------------+--+
```

### 4. صفحة إدارة المنتجات

```
+------------------------------------------+
| [شعار] | [البحث]         [المستخدم] [⚙️] |
+--------+-------------------------------+--+
|        |                              |  |
| القائمة|  [+ إضافة منتج جديد]         |  |
| الجانبية|                              |  |
|        |  +----------------------+    |  |
|        |  | الفلترة:                |    |  |
|        |  | [الفئة] [السعر] [المخزون]|    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  +------------------------+  |  |
|        |  | الصورة | الاسم | السعر |  |  |
|        |  |        |      |       |  |  |
|        |  +------------------------+  |  |
|        |  | [منتج 1]               |  |  |
|        |  | [منتج 2]               |  |  |
|        |  | [منتج 3]               |  |  |
|        |  | ...                    |  |  |
|        |  +------------------------+  |  |
|        |                              |  |
|        |  [1] [2] [3] ... [التالي]    |  |
|        |                              |  |
+--------+------------------------------+--+
```

### 5. صفحة إدارة العملاء

```
+------------------------------------------+
| [شعار] | [البحث]         [المستخدم] [⚙️] |
+--------+-------------------------------+--+
|        |                              |  |
| القائمة|  [+ إضافة عميل جديد]         |  |
| الجانبية|                              |  |
|        |  +------------------------+  |  |
|        |  | الاسم | الهاتف | النقاط |  |  |
|        |  |      |        |        |  |  |
|        |  +------------------------+  |  |
|        |  | [عميل 1]               |  |  |
|        |  | [عميل 2]               |  |  |
|        |  | [عميل 3]               |  |  |
|        |  | ...                    |  |  |
|        |  +------------------------+  |  |
|        |                              |  |
|        |  [1] [2] [3] ... [التالي]    |  |
|        |                              |  |
+--------+------------------------------+--+
```

### 6. صفحة التقارير

```
+------------------------------------------+
| [شعار] | [البحث]         [المستخدم] [⚙️] |
+--------+-------------------------------+--+
|        |                              |  |
| القائمة|  [المبيعات] [المخزون] [العملاء] |  |
| الجانبية|                              |  |
|        |  +----------------------+    |  |
|        |  | الفترة:               |    |  |
|        |  | [من] [إلى] [تطبيق]    |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  +----------------------+    |  |
|        |  |                      |    |  |
|        |  |   الرسم البياني      |    |  |
|        |  |                      |    |  |
|        |  +----------------------+    |  |
|        |                              |  |
|        |  +------------------------+  |  |
|        |  | التاريخ | المبلغ | العميل |  |  |
|        |  |        |       |        |  |  |
|        |  +------------------------+  |  |
|        |  | [بيانات التقرير]       |  |  |
|        |  +------------------------+  |  |
|        |                              |  |
|        |  [طباعة] [تصدير PDF] [Excel] |  |
|        |                              |  |
+--------+------------------------------+--+
```

## مكونات واجهة المستخدم

### 1. القائمة الجانبية

تحتوي على الروابط الرئيسية للنظام:

- الرئيسية (Dashboard)
- نقاط البيع (POS)
- المنتجات
  - قائمة المنتجات
  - إضافة منتج
  - الفئات
  - الوحدات
- المخزون
  - حركة المخزون
  - جرد المخزون
  - تنبيهات المخزون
- المبيعات
  - الفواتير
  - مرتجعات المبيعات
- المشتريات
  - طلبات الشراء
  - مرتجعات المشتريات
  - الموردين
- العملاء
  - قائمة العملاء
  - نظام المكافآت
- التقارير
- المستخدمين
- الإعدادات

### 2. شريط التنقل العلوي

- شعار النظام
- حقل البحث
- زر تبديل اللغة (العربية/الإنجليزية)
- إشعارات
- معلومات المستخدم الحالي
- زر الإعدادات

### 3. البطاقات (Cards)

تستخدم لعرض المعلومات والإحصائيات:

```
+------------------------+
|       [أيقونة]         |
|                        |
|  العنوان               |
|  القيمة                |
|                        |
|  [مؤشر التغيير]        |
+------------------------+
```

### 4. الجداول

تستخدم لعرض البيانات المتعددة:

```
+------------------------------------------------+
| [البحث]                      [تصفية] [تصدير]  |
+------------------------------------------------+
| العمود 1 | العمود 2 | العمود 3 | ... | إجراءات |
+------------------------------------------------+
| بيانات   | بيانات   | بيانات   | ... | [تعديل]  |
|          |          |          |     | [حذف]    |
+------------------------------------------------+
| بيانات   | بيانات   | بيانات   | ... | [تعديل]  |
|          |          |          |     | [حذف]    |
+------------------------------------------------+
| ...      | ...      | ...      | ... | ...      |
+------------------------------------------------+
| [السابق] [1] [2] [3] ... [التالي]              |
+------------------------------------------------+
```

### 5. النماذج (Forms)

تستخدم لإدخال البيانات:

```
+------------------------------------------------+
| عنوان النموذج                                  |
+------------------------------------------------+
| الحقل 1:                                       |
| +--------------------------------------------+ |
| |                                            | |
| +--------------------------------------------+ |
|                                                |
| الحقل 2:                                       |
| +--------------------------------------------+ |
| |                                            | |
| +--------------------------------------------+ |
|                                                |
| [إلغاء]                              [حفظ]    |
+------------------------------------------------+
```

### 6. الأزرار

- **زر رئيسي**: للإجراءات الأساسية (حفظ، إرسال)
- **زر ثانوي**: للإجراءات الثانوية (إلغاء، رجوع)
- **زر نجاح**: للإجراءات الإيجابية (تأكيد، موافقة)
- **زر خطر**: للإجراءات الخطرة (حذف، إزالة)
- **زر تحذير**: للإجراءات التي تتطلب انتباه (تعديل، تحديث)
- **زر معلومات**: للإجراءات الإعلامية (عرض التفاصيل)

## تجربة المستخدم (UX)

### 1. تبديل اللغة

- زر تبديل اللغة متاح في كل صفحة
- عند تغيير اللغة، يتم تغيير اتجاه الواجهة (RTL/LTR) تلقائياً
- يتم حفظ تفضيل اللغة للمستخدم

### 2. الاستجابة للأجهزة المختلفة

- تصميم متجاوب يعمل على أجهزة الكمبيوتر والأجهزة اللوحية
- تخطيط خاص للشاشات الصغيرة (الهواتف الذكية)
- قائمة جانبية قابلة للطي في الشاشات الصغيرة

### 3. وضع الطباعة

- تصميم خاص للفواتير والتقارير المطبوعة
- إمكانية تخصيص محتوى الطباعة
- دعم الطباعة المباشرة من النظام

### 4. الإشعارات والتنبيهات

- إشعارات للمخزون المنخفض
- تنبيهات للعمليات الناجحة والفاشلة
- رسائل تأكيد للإجراءات المهمة

### 5. المساعدة والتوثيق

- تلميحات للحقول والأزرار
- صفحات مساعدة مدمجة
- دليل استخدام متاح بكلتا اللغتين

## نماذج الشاشات الرئيسية

### 1. نموذج الفاتورة

```
+------------------------------------------------+
|                  اسم المتجر                    |
|              معلومات المتجر                    |
+------------------------------------------------+
| فاتورة مبيعات                رقم: 00001        |
| التاريخ: 2023/01/01          الوقت: 12:00      |
| الكاشير: اسم الموظف                            |
| العميل: اسم العميل                             |
+------------------------------------------------+
| # | المنتج      | الكمية | السعر  | المجموع   |
+------------------------------------------------+
| 1 | منتج 1      | 2      | 10.00  | 20.00     |
| 2 | منتج 2      | 1      | 15.00  | 15.00     |
| 3 | منتج 3      | 3      | 5.00   | 15.00     |
+------------------------------------------------+
|                           المجموع: 50.00       |
|                           الضريبة: 7.50        |
|                           الخصم: 5.00          |
|                           الإجمالي: 52.50      |
+------------------------------------------------+
|                  شكراً لزيارتكم                |
|                  www.example.com                |
+------------------------------------------------+
```

### 2. نموذج بطاقة المنتج

```
+------------------------------------------------+
|  [صورة المنتج]                                 |
|                                                |
|  اسم المنتج                                    |
|  السعر: 00.00                                  |
|                                                |
|  الكمية المتوفرة: 00                           |
|                                                |
|  [إضافة إلى السلة]                             |
+------------------------------------------------+
```

### 3. نموذج ملخص العميل

```
+------------------------------------------------+
|  اسم العميل                                    |
|  الهاتف: 00000000                              |
|  البريد الإلكتروني: example@example.com        |
|                                                |
|  النقاط: 000                                   |
|  إجمالي المشتريات: 000.00                      |
|                                                |
|  [عرض التفاصيل]                                |
+------------------------------------------------+
```

## اعتبارات إضافية

### 1. الوضع المظلم (Dark Mode)

- توفير خيار للتبديل بين الوضع الفاتح والمظلم
- ألوان مخصصة للوضع المظلم تحافظ على راحة العين

### 2. تخصيص الواجهة

- إمكانية تخصيص ألوان الواجهة
- إمكانية تخصيص ترتيب العناصر في لوحة التحكم
- إمكانية إخفاء/إظهار بعض العناصر حسب احتياجات المستخدم

### 3. الوصول السريع

- اختصارات لوحة المفاتيح للوظائف المتكررة
- قائمة بالإجراءات الأخيرة
- تثبيت العناصر المفضلة

## خاتمة

تم تصميم واجهة المستخدم لنظام إدارة مبيعات البقالة لتكون سهلة الاستخدام، جذابة بصرياً، وتدعم اللغتين العربية والإنجليزية بشكل كامل. يركز التصميم على تحسين تجربة المستخدم وزيادة الإنتاجية من خلال واجهة بديهية وفعالة.
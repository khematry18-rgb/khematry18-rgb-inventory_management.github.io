# ប្រព័ន្ធគ្រប់គ្រងសារពើភណ្ឌ

កម្មវិធី Laravel 12 សម្រាប់គ្រប់គ្រងហាងតែមួយ រួមមានផលិតផល ស្តុក ការទិញ ការលក់ និងរបាយការណ៍។ ចំណុចប្រទាក់ប្រើភាសាខ្មែរ និងគាំទ្ររូបិយប័ណ្ណ USD និង KHR។

> ឯកសារនេះណែនាំការដំឡើង និងសាកល្បងក្នុងកុំព្យូទ័រមូលដ្ឋាន Windows/XAMPP ប៉ុណ្ណោះ។ វាមិនមានន័យថាប្រព័ន្ធត្រូវបានដាក់ឱ្យដំណើរការលើម៉ាស៊ីនមេអ៊ីនធឺណិតរួចទេ។

## ១. មុខងារប្រព័ន្ធ

- ចូលប្រើ និងគ្រប់គ្រងអ្នកប្រើប្រាស់ តួនាទី និងសិទ្ធិ។
- គ្រប់គ្រងប្រភេទ ផលិតផល អ្នកផ្គត់ផ្គង់ និងបាកូដ/QR។
- ទទួលទំនិញពីការទិញ កែសម្រួលស្តុក និងមើលប្រវត្តិចលនាស្តុក។
- កត់ត្រាការលក់ តាមដានការទូទាត់ និងបោះពុម្ពវិក្កយបត្រ/បង្កាន់ដៃ។
- មើលការជូនដំណឹង កំណត់ហេតុសកម្មភាព និងរបាយការណ៍។
- កំណត់ព័ត៌មានហាង រូបិយប័ណ្ណ USD/KHR និងការកំណត់ប្រព័ន្ធ។

## ២. បច្ចេកវិទ្យា និងតម្រូវការ

- PHP 8.2 ឬថ្មីជាងនេះ និង Composer។
- Laravel 12, Blade, Tailwind CSS និង Vite។
- MySQL ឬ MariaDB តាមរយៈ XAMPP។
- Node.js និង npm សម្រាប់បង្កើតឯកសារផ្នែកមុខ។
- PHP extensions ដែលបានពិនិត្យក្នុងបរិស្ថាននេះ៖ `pdo_mysql`, `mbstring`, `openssl`, `fileinfo`។ ផ្នែក barcode/QR ប្រើបណ្ណាល័យ Composer របស់គម្រោង។

កំណែដែលបានពិនិត្យក្នុងបរិស្ថានអភិវឌ្ឍន៍៖ PHP 8.2.12, Laravel 12.70.2, Node.js 24.15.0 និង npm 11.12.1។

## ៣. តារាងទិន្នន័យ និងទំនាក់ទំនង

ឈ្មោះមូលដ្ឋានទិន្នន័យដែលបានកំណត់ក្នុងគម្រោងគឺ `inventory_management`។ តារាងអាជីវកម្មសំខាន់ៗមាន៖

| តារាង | តួនាទី និងទំនាក់ទំនងសំខាន់ |
|---|---|
| `roles`, `permissions`, `role_permissions` | តួនាទី និងសិទ្ធិ; តួនាទីមានសិទ្ធិច្រើនតាមតារាងភ្ជាប់។ |
| `users` | អ្នកប្រើប្រាស់ភ្ជាប់ទៅតួនាទី។ |
| `categories`, `products` | ផលិតផលជាកម្មសិទ្ធិរបស់ប្រភេទមួយ។ |
| `suppliers`, `purchases`, `purchase_items` | ការទិញភ្ជាប់អ្នកផ្គត់ផ្គង់ និងមានជួរទំនិញច្រើន; ជួរនីមួយៗយោងទៅផលិតផល។ |
| `sales`, `sale_items` | ការលក់មានជួរទំនិញច្រើន; ជួរនីមួយៗយោងទៅផលិតផល។ |
| `stock_movements` | ប្រវត្តិចូល ចេញ និងកែសម្រួលស្តុក។ |
| `payments` | ការទូទាត់ដែលពាក់ព័ន្ធនឹងប្រតិបត្តិការទិញ ឬលក់។ |
| `system_settings` | ការកំណត់ហាង និងប្រព័ន្ធ។ |
| `notifications`, `activity_logs` | ការជូនដំណឹង និងប្រវត្តិសកម្មភាព។ |
| `sessions`, `cache`, `jobs`, `migrations` | តារាងគាំទ្រដែល Laravel និងកម្មវិធីប្រើ។ |

ការលក់ និងការទិញរក្សារូបិយប័ណ្ណ និងអត្រាប្តូរប្រាក់របស់ប្រតិបត្តិការនីមួយៗ ដើម្បីមិនបម្លែងទិន្នន័យប្រវត្តិ នៅពេលកែអត្រាប្តូរប្រាក់នៅពេលក្រោយ។ ការកំណត់ MySQL ប្រើ `utf8mb4` និង `utf8mb4_unicode_ci` ដើម្បីគាំទ្រអក្សរខ្មែរ។

## ៤. តួនាទី និងការចូលប្រើដំបូង

ការកំណត់សិទ្ធិដំបូងមានតួនាទី Admin, Manager និង Staff។ ជាទូទៅ Admin គ្រប់គ្រងប្រព័ន្ធ និងអ្នកប្រើប្រាស់, Manager ធ្វើការលើការទិញ/លក់/ស្តុក/របាយការណ៍ ហើយ Staff មានសិទ្ធិប្រតិបត្តិការដែលបានកំណត់កម្រិត។ សិទ្ធិពិតអាស្រ័យលើតារាងសិទ្ធិដែលបានកំណត់ក្នុងមូលដ្ឋានទិន្នន័យ។

Seeder បង្កើត ឬធ្វើបច្ចុប្បន្នភាពតួនាទី និងសិទ្ធិដំបូងប៉ុណ្ណោះ មិនបង្កើតគណនីអ្នកប្រើប្រាស់ ឬទិន្នន័យអាជីវកម្មក្លែងក្លាយទេ។ ដំណើរការ `php artisan db:seed` លើប្រព័ន្ធដែលកំពុងប្រើ អាចធ្វើសមកាលកម្មសិទ្ធិរបស់តួនាទីឡើងវិញ ដូច្នេះត្រូវបម្រុងទុក និងពិនិត្យជាមុន។

បន្ទាប់ពីដំឡើងថ្មី និងបង្កើតតួនាទី Admin រួច បង្កើតគណនី Admin ដំបូងដោយបើក Tinker៖

```powershell
php artisan tinker
```

បញ្ចូលបន្ទាត់ខាងក្រោមម្តងមួយៗក្នុង Tinker ហើយប្តូរឈ្មោះ អ៊ីមែល និងអត្ថបទជំនួសពាក្យសម្ងាត់ឱ្យបានសមស្រប មុនពេលដំណើរការ៖

```php
$role = App\Models\Role::where('slug', 'admin')->firstOrFail();
App\Models\User::create(['name' => 'អ្នកគ្រប់គ្រង', 'email' => 'admin@example.com', 'password' => 'REPLACE_WITH_A_UNIQUE_STRONG_PASSWORD', 'role_id' => $role->id, 'is_active' => true]);
```

ចាកចេញពី Tinker ដោយប្រើ `exit` ហើយចូលប្រព័ន្ធតាមគណនីដែលបានបង្កើត។ កម្មវិធី hash ពាក្យសម្ងាត់ដោយស្វ័យប្រវត្តិ។ កុំប្រើអ៊ីមែល ឬពាក្យសម្ងាត់គំរូខាងលើជាក់ស្តែង។

## ៥. ដំឡើងលើ Windows និង XAMPP

### ៥.១ ចាប់ផ្តើម XAMPP និងបង្កើតមូលដ្ឋានទិន្នន័យ

បើកផ្ទាំងគ្រប់គ្រង XAMPP៖

```powershell
Start-Process -FilePath 'C:\xampp\xampp-control.exe'
```

ក្នុងផ្ទាំង XAMPP ចុច **Start** សម្រាប់ MySQL និង Apache។ Apache ត្រូវការ ដើម្បីបើក phpMyAdmin; កម្មវិធី Laravel ក្នុងការណែនាំនេះដំណើរការតាម `php artisan serve`។

```powershell
Start-Process 'http://localhost/phpmyadmin'
```

ក្នុង phpMyAdmin បង្កើត database ឈ្មោះ `inventory_management` ហើយជ្រើស collation `utf8mb4_unicode_ci`។ កុំលុប ឬបង្កើតជាន់លើ database ដែលមានទិន្នន័យរួច។

### ៥.២ ដំឡើង Composer និង npm dependencies

បើក PowerShell ហើយចូលទៅថតគម្រោង៖

```powershell
Set-Location 'C:\xampp\htdocs\websites\inventory-management'
composer install
npm ci
```

### ៥.៣ កំណត់ `.env`

បង្កើត `.env` ពីគំរូ តែបើឯកសារនោះមិនទាន់មាន៖

```powershell
if (-not (Test-Path '.env')) { Copy-Item '.env.example' '.env' }
notepad .env
```

កំណត់ `APP_URL`, `DB_CONNECTION=mysql`, `DB_HOST=127.0.0.1`, `DB_PORT=3306`, `DB_DATABASE=inventory_management`, `DB_USERNAME` និង `DB_PASSWORD` ឱ្យត្រូវនឹង MySQL មូលដ្ឋានរបស់អ្នក។ កុំបញ្ចូលតម្លៃសម្ងាត់ក្នុង README ឬចែករំលែក `.env`។ គម្រោងកំណត់ timezone ជា `Asia/Phnom_Penh` ហើយ locale អាចកំណត់ជា `km`។

បង្កើត `APP_KEY` តែម្តង សម្រាប់ការដំឡើងថ្មី ដែលមិនទាន់មាន key និងមិនទាន់ប្រើប្រាស់។ កុំបង្កើត key ថ្មីលើប្រព័ន្ធដែលកំពុងដំណើរការ ដោយមិនយល់ពីផលប៉ះពាល់លើទិន្នន័យដែលបានអ៊ិនគ្រីប។

```powershell
php artisan key:generate
```

### ៥.៤ ពិនិត្យ និងដំណើរការ migrations

ពិនិត្យមូលដ្ឋានទិន្នន័យ និង migrations ជាមុន៖

```powershell
php artisan migrate:status
```

សម្រាប់ database ថ្មី ឬ migrations ថ្មីដែលបានពិនិត្យរួច និងមានការបម្រុងទុកទិន្នន័យ សូមដំណើរការ៖

```powershell
php artisan migrate
```

កុំប្រើ `migrate:fresh`, `migrate:refresh` ឬ `db:wipe` លើ database ដែលមានទិន្នន័យពិត។ ប្រសិនបើតួនាទី និងសិទ្ធិដំបូងមិនទាន់មាន សូមពិនិត្យ database មុន ហើយដំណើរការ `php artisan db:seed` តែពេលដំឡើងដំបូងប៉ុណ្ណោះ។

### ៥.៥ Storage និងឯកសារផ្នែកមុខ

Logo សាធារណៈត្រូវការតំណ `public\storage` ទៅ `storage\app\public`។ គម្រោងនេះមានតំណរួចក្នុងបរិស្ថានដែលបានពិនិត្យ។ បើមិនមាន ត្រូវបង្កើតដោយ៖

```powershell
php artisan storage:link
```

បង្កើត CSS និង JavaScript សម្រាប់ប្រើ ឬសាកល្បង production build៖

```powershell
npm run build
```

សម្រាប់ hosting សូមកំណត់ document root របស់ domain ទៅថត `public` របស់ Laravel ហើយធានាថា `storage\app\public` អាចសរសេរបាន។ បើ hosting មិនអនុញ្ញាតឱ្យបង្កើត symbolic link កម្មវិធីមាន route បម្រុងសម្រាប់បង្ហាញរូបភាពផលិតផល និង logo ពីថតនេះ ដោយត្រូវឱ្យ `.htaccess` បញ្ជូន URL ដែលរកមិនឃើញទៅ `public\index.php`។ រូបភាពដែលបានបង្ហោះនៅលើម៉ាស៊ីនមេ ត្រូវរក្សាទុកក្នុង `storage\app\public` ដដែល; database រក្សាទុកតែ path របស់រូបភាពប៉ុណ្ណោះ។ រូបភាពនៅលើកុំព្យូទ័រមូលដ្ឋានមិនត្រូវបានបញ្ជូនទៅ hosting ដោយស្វ័យប្រវត្តិទេ។

### ៥.៦ បើកប្រព័ន្ធ

នៅក្នុង terminal មួយ៖

```powershell
Set-Location 'C:\xampp\htdocs\websites\inventory-management'
php artisan serve --host=127.0.0.1 --port=8081
```

នៅក្នុង terminal ទីពីរ សម្រាប់អភិវឌ្ឍន៍ CSS/JavaScript៖

```powershell
Set-Location 'C:\xampp\htdocs\websites\inventory-management'
npm run dev
```

បើក `http://127.0.0.1:8081` ក្នុង browser រួចចូលដោយគណនី Admin ដែលបានបង្កើត។ បិទ Vite development server និងប្រើ assets ពី `npm run build` នៅពេលមិនកំពុងអភិវឌ្ឍន៍។

## ៦. បម្រុងទុក និងស្ដារទិន្នន័យ

### បម្រុងទុក

កុំរក្សាទុក backup នៅក្នុង `public` ឬបញ្ជូនឯកសារ backup ទៅកន្លែងសាធារណៈ។ ពាក្យបញ្ជាខាងក្រោមបង្កើតថតឯកជនក្នុង storage ហើយឱ្យ MySQL សួរពាក្យសម្ងាត់ដោយសុវត្ថិភាព។ ប្តូរ database username ប្រសិនបើមិនប្រើ `root`៖

```powershell
New-Item -ItemType Directory -Force 'C:\xampp\htdocs\websites\inventory-management\storage\app\private\backups' | Out-Null
cmd.exe /c "`"C:\xampp\mysql\bin\mysqldump.exe`" -u root -p inventory_management > `"C:\xampp\htdocs\websites\inventory-management\storage\app\private\backups\inventory_management.sql`""
```

រក្សាទុកច្បាប់ចម្លងបន្ថែមនៅលើឧបករណ៍ផ្ទុកដែលមានការការពារ និងសាកល្បងស្ដារលើ database ដាច់ដោយឡែក។

### ស្ដារទិន្នន័យ

ការស្ដារលើ database ដែលមានស្រាប់អាចប៉ះពាល់ ឬជំនួសទិន្នន័យ។ បម្រុងទុកស្ថានភាពបច្ចុប្បន្នជាមុន ហើយពិនិត្យថា database គោលដៅត្រឹមត្រូវ។ សម្រាប់ការសាកល្បង សូមបង្កើត database ទទេមួយផ្សេងទៀតក្នុង phpMyAdmin ហើយប្រើឈ្មោះ database នោះជំនួស `inventory_management`៖

```powershell
cmd.exe /c "`"C:\xampp\mysql\bin\mysql.exe`" -u root -p inventory_management < `"C:\xampp\htdocs\websites\inventory-management\storage\app\private\backups\inventory_management.sql`""
```

## ៧. ពិនិត្យ និងសាកល្បង

```powershell
composer validate
php artisan test
npm run build
php artisan route:list
php artisan migrate:status
```

`php artisan test` ប្រើ SQLite ក្នុង memory តាម `phpunit.xml`; វាមិនមែនជាការធ្វើតេស្តលើ database MySQL ពិតទេ។ ពិនិត្យ `migrate:status` មុនដំណើរការ migrations លើ MySQL។ បើចង់ពិនិត្យ cache/optimization មូលដ្ឋាន៖

```powershell
php artisan optimize
php artisan optimize:clear
```

## ៨. កំហុសដែលជួបញឹកញាប់

- **មិនអាចភ្ជាប់ MySQL**៖ ពិនិត្យថា MySQL បានចាប់ផ្តើមក្នុង XAMPP ហើយ និងពិនិត្យ `DB_HOST`, `DB_PORT`, database name និង account ក្នុង `.env`។
- **`No application encryption key has been specified`**៖ បង្កើត `.env` ហើយរត់ `php artisan key:generate` តែសម្រាប់ការដំឡើងថ្មីប៉ុណ្ណោះ។
- **មិនឃើញរូប Logo**៖ ពិនិត្យថា `public\storage` មានតំណទៅ `storage\app\public`; បើមិនមាន រត់ `php artisan storage:link`។
- **Vite មិនឃើញ assets**៖ រត់ `npm ci` បន្ទាប់មក `npm run build` ឬបើក `npm run dev` ក្នុង terminal មួយទៀត។
- **គ្មានគណនី Admin សម្រាប់ចូល**៖ ការដំឡើងមិនបង្កើតអ្នកប្រើប្រាស់សាកល្បងទេ។ ពិនិត្យតួនាទី Admin និងបង្កើតគណនីដំបូងតាម Tinker ដូចខាងលើ។
- **`php artisan db:show` ឬ `db:table` បរាជ័យ**៖ ព័ត៌មានខ្លះអាស្រ័យលើតារាង status របស់ MySQL/MariaDB ឬ PHP extensions។ ប្រើ `php artisan migrate:status` និង phpMyAdmin សម្រាប់ពិនិត្យជំនួស។

## ៩. បញ្ជីសុវត្ថិភាពសម្រាប់ម៉ាស៊ីនមេផលិតកម្ម

- កំណត់ `APP_ENV=production` និង `APP_DEBUG=false`; កុំបង្ហាញ stack trace ជាសាធារណៈ។
- ប្រើ `APP_KEY` ខ្លាំងដែលបានរក្សាទុកដោយសុវត្ថិភាព និងកុំបោះពុម្ពវាទៅក្នុង logs ឬឯកសារសាធារណៈ។
- ប្រើ database account មានសិទ្ធិតិចបំផុត មិនប្រើ root; រក្សាព័ត៌មានចូលក្នុង environment របស់ម៉ាស៊ីនមេ មិនដាក់ក្នុង Git។
- បើក HTTPS និង session cookie សុវត្ថិភាពនៅ production; ពិនិត្យ CSRF, authentication និង authorization លើគ្រប់ routes។
- រក្សា `.env`, `vendor`, `storage` និង backup នៅក្រៅ document root; អនុញ្ញាត upload តែប្រភេទឯកសារដែលបាន validate និងកំណត់សិទ្ធិ storage សមស្រប។
- រៀបចំ backup database ដោយស្វ័យប្រវត្តិ ការរក្សាទុកច្បាប់ចម្លងនៅកន្លែងមានសុវត្ថិភាព និងការសាកល្បងស្ដារជាប្រចាំ។
- ការដាក់ដំណើរការពិតត្រូវការកំណត់ web server ឱ្យ document root ចង្អុលទៅថត `public` របស់ Laravel។ ការរត់ `php artisan serve` គឺសម្រាប់ local development មិនមែនសម្រាប់ production hosting ទេ។

## ១០. ដាក់ឱ្យដំណើរការលើអ៊ីនធឺណិត

មិនទាន់មានការដាក់ឱ្យដំណើរការលើ hosting ឬ server ផលិតកម្មទេ។ មុនដាក់ប្រើប្រាស់ពិត ត្រូវរៀបចំម៉ាស៊ីនមេ និង HTTPS, environment variables, database/backup, web server root ទៅ `public`, file permissions, queue/scheduler ប្រសិនបើប្រើ និងដំណើរការសាកល្បងលើ staging ជាមុន។

## ១១. សាកល្បង POS ដោយកាមេរ៉ា Android

កម្មវិធីស្កេនប្រើ `@zxing/browser` ដើម្បីអាន Barcode ពីកាមេរ៉ាខាងក្រោយ ហើយបញ្ជូនតម្លៃទៅ Laravel API ដែលមានស្រាប់។ កាមេរ៉ាត្រូវការបរិបទមានសុវត្ថិភាព (HTTPS ឬ localhost); អាសយដ្ឋាន LAN ដូចជា `http://192.168.x.x:8081` ជាទូទៅមិនអាចប្រើ `getUserMedia` បានទេ។

### បើក HTTPS tunnel បណ្តោះអាសន្ន

ដំឡើង `cloudflared` តាមឯកសារផ្លូវការរបស់ Cloudflare រួចចាប់ផ្តើម Laravel នៅលើ loopback ក្នុង terminal មួយ៖

```powershell
Set-Location 'C:\xampp\htdocs\websites\inventory-management'
php artisan serve --host=127.0.0.1 --port=8081
```

ក្នុង terminal មួយទៀត បង្កើត Quick Tunnel ទៅកាន់កម្មវិធី Laravel ប៉ុណ្ណោះ៖

```powershell
cloudflared tunnel --url http://127.0.0.1:8081
```

បើក URL `https://...trycloudflare.com` ដែលបង្ហាញក្នុង terminal នៅលើទូរសព្ទ Android។ Tunnel នេះបង្ហាញកម្មវិធី Laravel ទៅអ៊ីនធឺណិតជាបណ្តោះអាសន្ន ដូច្នេះត្រូវបិទវាដោយ `Ctrl+C` ភ្លាមៗក្រោយសាកល្បង។ ប្រើតែទិន្នន័យសាកល្បងដែលមិនរសើប និងគណនីដែលមានសិទ្ធិត្រឹមត្រូវ។ កុំកំណត់ Tunnel ឱ្យចង្អុលទៅ MySQL ឬ phpMyAdmin, កុំបើក port database ឱ្យសាធារណៈ និងកុំដាក់ credentials ឬ secrets ក្នុង command, tunnel configuration ឬ URL សាធារណៈ។ ការកំណត់ Trust Proxies ក្នុងគម្រោងនេះទទួលយក forwarded headers តែពី loopback សម្រាប់របៀប local tunnel នេះ។

### ស្កេនលើទូរសព្ទ

1. បង្កើត assets មុនសាកល្បង ប្រសិនបើមិនទាន់មាន៖ `npm run build`។
2. បើក HTTPS URL របស់ tunnel នៅក្នុង Google Chrome លើ Android ហើយចូលដោយគណនីសាកល្បង។
3. ចូល **ការលក់ / POS** → ចុច **ស្កេន Barcode តាមកាមេរ៉ា**។ នៅពេល Chrome សួរ សូមចុចអនុញ្ញាតកាមេរ៉ា។ បើបានបដិសេធ សូមបើក site settings របស់ Chrome សម្រាប់ URL នោះ, កំណត់ Camera ជា **Allow**, រួចផ្ទុកទំព័រឡើងវិញ។
4. ដាក់ Barcode ក្នុងស៊ុម។ ពេលស្កេនបាន កាមេរ៉ានឹងឈប់ភ្លាមៗ ហើយផលិតផលដែលមាន Barcode នឹងចូលរទេះ។ ចុច **ស្កេនផលិតផលបន្ទាប់** ដើម្បីបន្ត ឬ **បិទម៉ាស៊ីនស្កេន** ដើម្បីចេញ។
5. សាកល្បង Barcode ដែលមានស្រាប់ក្នុងប្រព័ន្ធ, Barcode មិនស្គាល់, ផលិតផលអស់ស្តុក និងបញ្ចូល Barcode ដោយដៃ។ ពិនិត្យរទេះ និងស្តុកមុន/ក្រោយ Checkout ដោយមិនប្រើទិន្នន័យលក់ពិត ប្រសិនបើកំពុងសាកល្បង។

ការស្កេនគាំទ្រទម្រង់ដែល ZXing អាចអាន រួមមាន EAN-13, EAN-8, UPC-A/UPC-E, Code 128 និង QR។ លទ្ធផលពិតប្រាកដអាស្រ័យលើកាមេរ៉ា ពន្លឺ គុណភាព Barcode និងសមត្ថភាពកម្មវិធីរុករក; ការបញ្ចូល Barcode ដោយដៃ ឬម៉ាស៊ីនស្កេនប្រភេទក្តារចុចនៅតែអាចប្រើជាជម្រើសបាន។

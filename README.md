## 產能最佳分配與訂單規劃報表: 前後端練習作品 Machine Capacity Optimization and Order Fulfillment Planning Report
1. 在機台產能分配最大化滿足訂單的前提下，最小化改機次數，以增進工廠效率及利潤。
2. 本專案利用Gurobipy模組快速運算此大型規劃求解問題，相較人力計算更為精準且快速，提升工作效率。
3. 以MySQL資料庫儲存訂單與來料資訊。
4. 使用Django作為MVC框架整合網站前後端與資料庫，並引入會員登入、註冊功能。
5. 利用Bootstrap與Javascript建立清楚易讀的分析報表。
6. 架起來的完整網站可直接至 https://cakinghair.pythonanywhere.com/loading/ 查看。
###
1. This project aimed to optimize machine capacity allocation by minimizing the number of conversions while fulfilling orders, and improve efficiency and profit for the company.
2. Used Gurobipy to solve the large-scale linear programming problem fast and precisely, and thus enhance the enginners' work efficiency.
3. Used MySQL databases to store order and material information.
4. Used Django as the MVC framework to integrate the frontend and backend and the database, and introduce member login and registration functionalities.
5. Used Bootstrap and JavaScript to establish clear analysis reports.
6. The complete website can be viewed at https://cakinghair.pythonanywhere.com/loading/.
## 成果展示 Demo

## 檔案 Files
* `manage.py` 啟動網頁介面的主程式。
* `models.py` 管理各資料庫。
* `views.py` 從`models.py`取得資料，進行後端運算。
* `templates` 組成網站的各個頁面皆存於此資料夾。
* `urls.py` 定義並導向前端`.html`與後端`views.py`間的映射。
* `settings.py` 包含所有網站設定參數，例如資料庫連線、靜態文件路徑、應用程式管理。
###
* `manage.py` The main program that starts the website app.
* `models.py` Manages the databases.
* `views.py` Gets data from `models.py` and executes backend calculation functions.
* `templates` This folder contains all the pages that constitute the website.
* `urls.py` Defines and maps the connection between frontend `.html` files and backend `views.py`.
* `settings.py` Contains all configuration parameters of the website, such as database connections, staticfile paths, and app management.
## 授權 Autorization
MIT License

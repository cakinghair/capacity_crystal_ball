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
1. 以週為單位，以直條圖顯示各產品須產出之數量總和，以檢視訂單集中程度。 Uses a bar chart to display the sums of demand quantity for each product by week, and visualize the distribution of orders.
![image](https://github.com/user-attachments/assets/634b9252-0717-48c6-995f-24dc48224549)
2. 以面積圖顯示每週預計來料量，與訂單需求做比對，檢視來料供給是否不足或過剩。 Uses an area chart to compare the material arrival plan with the order demands, and confirm if the supply is insufficient or excessive.
![image](https://github.com/user-attachments/assets/aeae7897-9e35-489d-87d5-7cbbf0787552)
3. 根據使用者輸入可用機台總數，計算出最佳分配策略，以線圖顯示機台數變化。 Based on the number of available machines input by the user, calculates the optimal allocation strategy and visualizes the result in a line chart.
![image](https://github.com/user-attachments/assets/e6520115-c6b6-41d5-877f-14cd2f618b0b)
4. 以表格顯示訂單詳細資訊。根據前面幾頁的分析結果，將來料不足、或機台產能不足致無法出貨的訂單做標註，正常訂單則標註預計可出貨週。考慮易使用性，表格亦附有篩選、下載功能。 Lists the detailed information on each order. According to the analysis results in the previous pages, remark risked orders with the reasons (material or capacity constraint), while remarking normal orders with expected shipment week. To be more user-friendly, the table also provides filtering and download funcions.
![image](https://github.com/user-attachments/assets/9e790be5-4120-4314-9dca-7b2f166cdd28)
5. (登入才可使用) 現實情況中可能會有多個版本的來料計畫，使用者可自行建立版本，編輯數量，套用至網站做產能分析。 (Login required) In actual production circumstances, there may be multiple versions of material plans. We enable users to create and edit their own scenarios, and apply them to the website for capacity analysis.
![image](https://github.com/user-attachments/assets/e8ec4d88-0079-4cd0-81b1-be0180e89e06)
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

# 🍔 FoodExpress — Delivery & Sales Analytics

An end-to-end data analytics portfolio project simulating a real-world food delivery platform (like Zomato/Swiggy). This project covers the full analytics pipeline: **Business Problem → Python EDA → SQL Analysis → Power BI Dashboard**.

📄 [Full Project Report](FoodExpress_Project_Report.docx) · 🎤 [Presentation Deck](Food_express_analytics_presentation.pdf)

---

## 📌 Business Problem

FoodExpress is a fictional food delivery platform operating across multiple Indian cities. Management lacks a unified view of performance — data on orders, deliveries, and cancellations is scattered, making it difficult to answer fundamental operational questions.

**Key business questions answered in this project:**
1. Which cities and restaurants generate the highest revenue?
2. What is the average delivery time, and which factors affect it?
3. What is the order cancellation rate, and what reasons drive cancellations?
4. Which cuisines and payment methods are most preferred by customers?
5. Who are the top customers by order frequency and spend?
6. Is there a relationship between delivery time and customer ratings?

---

## 🛠️ Tech Stack

| Stage | Tools |
| Data Cleaning & EDA | Python (Pandas, NumPy, Matplotlib, Seaborn) |
| Data Analysis | SQL (PostgreSQL via pgAdmin4) |
| Dashboard | Power BI Desktop (live PostgreSQL connection) |
| Version Control | GitHub |

---

## 📊 Dashboard Preview

**Page 1 — Overview**
![Dashboard Page 1](dashboard_page1.png)

**Page 2 — Detailed Analysis**
![Dashboard Page 2](dashboard_page2.png)

---

## 🔍 Key Findings

- **Revenue:** Mumbai leads with ₹97K in revenue, well ahead of Delhi, Bangalore, and Hyderabad (₹66–68K). Chennai generates the least (₹47K).
- **Delivery Time:** Average delivery time is ~31–33 minutes. Dinner orders are the slowest (33 mins), likely due to peak order volume.
- **Cancellations:** Overall cancellation rate is **10.77%**. "Long delivery time" is the top reason (19.6%), but reasons are fairly evenly spread — no single dominant cause.
- **Preferences:** North Indian is the most-ordered cuisine. UPI is the dominant payment method (40.2%), followed by Cash on Delivery (20.8%).
- **Top Customers:** The top 10 customers contributed ₹26,008 in total revenue, led by Karan Sharma (₹3,097.64).
- **Delivery Time vs. Rating:** A weak negative correlation (r ≈ -0.20) shows that longer delivery times tend to correspond with lower ratings — delivery speed matters, but isn't the only driver of satisfaction.

📄 Full findings and recommendations are available in the [Project Report](FoodExpress_Project_Report.docx).

---

## 🚀 Methodology

1. **Python (EDA):** Loaded and cleaned the dataset, checked nulls/duplicates, fixed data types, extracted date features, and explored patterns through groupby aggregations and visualizations (bar charts, boxplots).
2. **SQL (Analysis):** Loaded the cleaned data into PostgreSQL and wrote queries — `GROUP BY`, `CASE WHEN`, and `CORR()` — to directly answer each business question.
3. **Power BI (Dashboard):** Connected Power BI Desktop live to the PostgreSQL database and built a 2-page interactive dashboard with KPI cards, bar/donut charts, a top-customers table, and a delivery-time-vs-rating scatter plot.

---

## 💻 How to Explore This Project

1. **Clone or download** this repository
2. **Python EDA:** Open `foodexpress_data_cleaning_eda.ipynb` in Jupyter Notebook or Google Colab
3. **SQL Analysis:** Load `foodexpress_orders.csv` into PostgreSQL, then run the queries in `foodexpress_sql_analysis.sql`
4. **Dashboard:** Open `Food_Delivery_Analytics_dashboard.pbix` in Power BI Desktop (or view the screenshots above)
5. **Full write-up:** Read `FoodExpress_Project_Report.docx` for detailed findings and recommendations

---

## 📁 Files in This Repo

- [`foodexpress_data_cleaning_eda.ipynb`](foodexpress_data_cleaning_eda.ipynb) — Full Python EDA notebook
- [`foodexpress_sql_analysis.sql`](foodexpress_sql_analysis.sql) — All business-question SQL queries
- [`foodexpress_orders.csv`](foodexpress_orders.csv) — Cleaned dataset (520 orders, 24 columns)
- [`Food_Delivery_Analytics_dashboard.pbix`](Food_Delivery_Analytics_dashboard.pbix) — Interactive Power BI dashboard
- [`FoodExpress_Project_Report.docx`](FoodExpress_Project_Report.docx) — Full written project report
- [`Food_express_analytics_presentation.pdf`](Food_express_analytics_presentation.pdf) — Summary slide deck

---

## 👤 Author

**Kumud Rajput**
BCA (AI & Data Science) Student | Aspiring Data Analyst

📫 [LinkedIn](https://www.linkedin.com/in/kumud-rajput-1b7a10316) · ✉️ thekumudrajput@gmail.com🍔 FoodExpress — Delivery & Sales Analytics


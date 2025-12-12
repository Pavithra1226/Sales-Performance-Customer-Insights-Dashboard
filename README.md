# Power BI | SQL | Python | Data Analysis Project
An end-to-end data analysis workflow including data cleaning, SQL analytics, and interactive Power BI dashboards.  

## 🚀 Project Overview
This project analyzes a retail sales dataset to answer key business questions:
- Which product lines generate the highest revenue?
- How do members vs. normal customers behave?
- Which branch performs best?
- What payment methods do customers prefer?
- How does daily revenue trend across the month?

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| Power BI | Dashboard creation, DAX measures, data modeling |
| Python (Pandas, Jupyter Notebook) | Data cleaning, preprocessing, EDA |
| SQL | Trend analysis, KPIs, aggregations, window functions |
| Excel | Initial data review |

## 🧹 Data Cleaning in Python
Performed using Pandas in Jupyter Notebook:
- Handled missing values
- Fixed inconsistent data types
- Removed duplicates
- Standardized date formats
- Extracted new features for analysis
- Exported final dataset → `cleaned_sales_data.csv`

**File:** `python_eda/eda.ipynb`

## 🧮 SQL Analysis
SQL queries were used to derive insights:
- Monthly revenue comparison
- Revenue growth percentage (window functions)
- Branch-wise gross income analysis
- Member vs. Normal customer revenue share
- Top product lines by sales

**File:** `sql_queries/analysis_queries.sql`

## 📊 Power BI Dashboard
Dashboard features:
- KPI cards: Revenue, Gross Income, Profit Margin, Rating, Quantity
- Date slicers for filtering
- Product line revenue comparison
- Branch-wise performance
- Daily revenue trend
- Customer type segmentation
- Gender-based revenue contribution
- Payment method analytics

**Screenshots:** `power_bi/dashboard_screenshots/`  
**PBIX File (optional):** `power_bi/sales_dashboard.pbix`

## 📈 Key Insights
**Revenue & Profit**
- Total Revenue: ₹322.97K
- Gross Income: ₹15K
- Profit Margin: 4.76%

**Branch Performance**
- Branch C generated the highest gross income
- Branch A and B follow with steady performance

**Customer Insights**
- Member customers contribute 50%+ of total revenue
- Average customer rating: 6.97

**Product Line Insights**
- Food & Beverages and Electronics are top performers
- Fashion accessories show moderate but stable performance

**Payment Behavior**
- E-wallet and cash are most preferred

**Trend Observations**
- Consistent daily revenue trend throughout the month
- No extreme revenue spikes — steady business flow

## 💡 What I Learned
- Data cleaning & preprocessing (Python)  
- Writing complex SQL queries  
- Building professional dashboards in Power BI  
- Creating DAX measures & data modeling  
- Turning raw data into actionable insights  
- Data storytelling for business decisions

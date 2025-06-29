🚗 Car Dataset SQL Data Analyst Portfolio Project
This is a complete, real-world data analyst portfolio project based on a dataset of cars from various brands in India. It simulates how real data analysts explore automotive data, clean messy columns like price, mileage, and ratings, and build insights for decision-making.

✅ Perfect For:
📊 Freshers building portfolio projects

🚀 People learning SQL with real-world datasets

💼 Preparing for interviews in automobile, analytics, or business roles

🎥 YouTube Tutorial (Coming Soon)
YouTube link for this car dataset project will be added here when available.

📁 Dataset Overview
Each row in the dataset represents a car with details like brand, name, price, rating, safety score, mileage, and engine power.

🧾 Columns include:

brand: Car brand name (e.g., Tata, Maruti, Hyundai)

car_name: Model of the car

price: Price in text format like Rs. 6.5 Lakh

rating: User rating like 4.6/5

safety: Safety rating (e.g., 5 Star Safety)

mileage: Mileage range (e.g., 17–25 kmpl)

power_bhp: Engine power (e.g., 87–102 bhp)

🔧 Project Workflow
1. 💽 Database & Table Creation
Created a SQL table like this:

sql
Copy
Edit
CREATE TABLE car_data (
  brand TEXT,
  car_name TEXT,
  price TEXT,
  rating TEXT,
  safety TEXT,
  mileage TEXT,
  power_bhp TEXT
);
2. 📊 Data Exploration
Total cars and total brands

Most common car brands

Cars with missing values (like safety)

Random sample of 10 cars

Duplicated car models

3. 🧹 Data Cleaning
Converted price from text to numbers (Lakh to numeric)

Extracted numeric rating (e.g., 4.5 from 4.5/5)

Cleaned mileage and power_bhp ranges

Handled null or blank values

4. 📈 Business Insights
Top 5 rated cars

Cars with 5-star safety and low price

Brand with highest average rating

Cars with power > 100 bhp

Cars with best price-per-BHP

Grouping cars into categories by engine power

Estimated total value per brand

Cars priced over ₹10 lakh with low ratings

🛠️ How to Use This Project
Clone or download your SQL project folder

Load the car dataset into PostgreSQL (or any SQL tool)

Run the queries step-by-step

Try creating your own insights using GROUP BY, CASE, and CAST

🙌 Credits
Inspired by Amlan Mohanty's Zepto project format.
Car data collected from scraped listings or publicly available car info pages.

📌 Add This to Your Resume / LinkedIn
📄 Project Title: Car Dataset SQL Data Analyst Project
📍 Skills Used: SQL, Data Cleaning, Business Analysis
🏁 Outcome: Performed data exploration, created business insights, built ready-for-job SQL portfolio content.


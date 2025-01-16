# NYC Motor Collision Vehicle Data Analysis Project

Welcome to the NYC Motor Collision Vehicle Data Analysis Project! This initiative showcases an end-to-end **data engineering pipeline** and analysis process, aiming to uncover insights into motor vehicle collisions in New York City. The project integrates data profiling, staging, transformation, modeling, and visualization to provide actionable insights into collision data.

---

## 📊 **Project Overview**

This project is a comprehensive data engineering and analytics solution that includes:
- **Data Profiling**: Identifying key characteristics and issues in raw data.
- **Data Staging**: Organizing raw data for efficient ETL processing.
- **ETL Pipeline**: Migrating and transforming 10M+ records from **BigQuery** to **MySQL** using **Talend**.
- **Data Modeling**: Designing a robust dimensional model to support analysis.
- **Data Transformation**: Cleaning and standardizing data for quality assurance.
- **Data Visualization**: Creating intuitive dashboards in **Tableau** and **PowerBI** to visualize key performance indicators (KPIs).

This pipeline was designed to address real-world analytical requirements by building an optimized star schema and using advanced data transformation and integration techniques.

---

## 🗂️ **Repository Structure**

### 🔄 Part 01 - Profiling and Staging
- **Documentation**: Includes detailed reports on source-to-target mapping and initial data profiling.
- **`NYC_MVC_Alteryx_Profiling`**: Alteryx workflows used for profiling the raw collision data.
- **Source-to-Target Mapping**: Documents mapping between source fields and target database schema.
- **Talend Jobs for Staging**: Staging jobs used for extracting and loading data into the staging environment.

### 🔄 Part 02 - Data Integration and Transformation
- **`DIMENSIONS_&_FACTS_Screenshots`**: Visual references for all dimensional and fact table structures.
- **SQL Scripts**: 
  - `Final_Dim_Model.sql`: Schema definitions for all dimensional and fact tables.
  - Data quality checks and row count validation scripts.
- **Data Cleaning and Standardization**:
  - Rules for replacing invalid or inconsistent values, e.g., replacing vehicle type codes.

### 📊 Part 03 - Visualizations
- **`NYC_Motor_Collision_Vehicles.twb`**: Tableau workbook containing interactive dashboards.
- **KPI Dashboards**: Visualizes trends, distributions, and high-risk areas for accidents.
- **PowerBI Reports**: Additional visualizations for organizational KPIs and metrics.

### 📄 Queries.pdf
Contains pre-defined SQL queries for generating actionable insights, such as borough-specific accidents, time-based analysis, and injury reports.

---

## 🛠️ **Key Features**

### 1. **Data Profiling and Cleaning**
This project begins with a thorough profiling of raw data, identifying data quality issues and inconsistencies. For instance, vehicle type codes were standardized using the following rules:

| Cleaning Values          | Replaced With         |
|--------------------------|-----------------------|
| .*amb.*                  | AMBULANCE            |
| .*chev.*                 | CHEVROLET            |
| .*mer.*                  | MERCEDES BENZ        |
| .*\d+.*                  | NOT VALID            |
| null                     | NOT VALID            |

This step ensures the accuracy and reliability of downstream data transformations.

### 2. **Dimensional Modeling**
The data is structured using a **star schema**, optimized for analytical queries. 

#### Facts:
- `fct_collision_crashes`: Records details about each collision event.
- `fct_collision_crashes_vehicles`: Captures the relationship between collisions and vehicles involved.
- `fct_collision_persons`: Tracks individual persons involved in collisions.
- `fct_collision_persons_contributing_factors`: Details contributing factors for person-level collisions.
- `fct_collisions_vehicles`: Details vehicle-specific attributes.
- `fct_collisions_vehicles_contributing_factors`: Tracks vehicle-specific contributing factors.

#### Dimensions:
- **Person Attributes**: 
  - `dim_person_injury`, `dim_person_sex`, `dim_person_type`
- **Vehicle Attributes**: 
  - `dim_vehicle_make`, `dim_vehicle_model`, `dim_vehicle_type`
- **Geographical Dimensions**:
  - `dim_arrest_borough`, `dim_state_registration`
- **Other Supporting Dimensions**:
  - `dim_safety_equipment`, `dim_travel_direction`, `dim_point_of_impact`

The schema allows efficient aggregation and drill-down analysis.

### 3. **ETL Pipeline**
The ETL process handles the migration of collision data using **Talend**, ensuring:
- **Scalability**: Processes over 10M records.
- **Performance Optimization**: Efficient joins and transformations for dimensional modeling.
- **Data Quality**: Implements cleaning rules during transformation.

### 4. **Data Visualizations**
Interactive dashboards in Tableau and PowerBI deliver actionable insights:
- **Accident Trends by Year and Borough**: Identify patterns over time and geography.
- **Vehicle Involvement Analysis**: Analyze accidents by vehicle type and model.
- **Injury and Fatality Rates**: Evaluate the severity of accidents.

Example visualizations include:
- A heatmap of accidents across NYC boroughs.
- Time-series analysis of accident trends.

---

## 🔍 **Queries and Insights**

### Example SQL Queries:

#### 1. Accidents by Year:
```sql
SELECT COUNT(c.collision_id) AS No_of_Accidents, YEAR(c.collision_dt) AS Year
FROM nyc_mvc_dimension_model.fct_collision_crashes c
JOIN nyc_mvc_dimension_model.fct_collisions_vehicles cv
  ON cv.COLLISION_ID = c.collision_id
GROUP BY YEAR(c.collision_dt);
```

#### 2. Borough-wise Accidents:
```sql
SELECT a.borough, COUNT(c.collision_id) AS No_of_Accidents
FROM nyc_mvc_dimension_model.dim_arrest_borough a
JOIN nyc_mvc_dimension_model.fct_collision_crashes c
  ON a.borough_sk = c.borough_sk
GROUP BY borough;
```

#### 3. Injuries and Fatalities:
```sql
SELECT dpi.PERSON_INJURY, COUNT(c.collision_id) AS Total
FROM nyc_mvc_dimension_model.fct_collision_crashes c
JOIN nyc_mvc_dimension_model.fct_collision_persons p
  ON p.COLLISION_ID = c.collision_id
JOIN nyc_mvc_dimension_model.dim_person_injury dpi
  ON dpi.person_injury_sk = p.person_injury_sk
GROUP BY dpi.PERSON_INJURY;
```

#### 4. Time of Accidents:
```sql
SELECT COUNT(c.collision_id) AS No_of_Accidents, c.collision_time AS TimeofAccident
FROM nyc_mvc_dimension_model.fct_collision_crashes c
JOIN nyc_mvc_dimension_model.fct_collisions_vehicles cv
  ON cv.COLLISION_ID = c.collision_id
GROUP BY c.collision_time
ORDER BY COUNT(c.collision_id) DESC;
```

#### 5. Truck Accidents by Year:
```sql
SELECT YEAR(c.collision_dt) AS Year, COUNT(c.collision_id) AS Truck_Accidents
FROM nyc_mvc_dimension_model.fct_collision_crashes c
JOIN nyc_mvc_dimension_model.fct_collisions_vehicles v
  ON v.COLLISION_ID = c.collision_id
JOIN nyc_mvc_dimension_model.dim_vehicle_type dvt
  ON dvt.vehicle_type_sk = v.vehicle_type_sk
WHERE dvt.vehicle_type LIKE '%truck%'
GROUP BY YEAR(c.collision_dt)
ORDER BY Truck_Accidents DESC;
```

---

## 🛠️ **Technologies Used**

- **Database**: BigQuery, MySQL
- **ETL Tool**: Talend
- **Programming Languages**: SQL, Python
- **Visualization Tools**: Tableau, PowerBI
- **Documentation**: ER/Studio for data modeling

---

## 📈 **Visualizations**

### Tableau Dashboards:
- Borough-specific accident heatmaps.
- Monthly trends in collision occurrences.
- Analysis of injuries and fatalities by borough.

---

## ⚙️ **How to Use**

1. Clone the repository:
```bash
git clone https://github.com/hanagojiv/NYC-Motor-Collision-Vehicles-Analysis.git
```

2. Navigate to the folder and explore the profiling, transformation, and modeling scripts.

3. Open Tableau/PowerBI files to visualize and interact with the data.

4. Use SQL queries provided in `Queries.pdf` to generate additional insights.

---

## 🙌 **Contributors**

- **Vivek Basavanth Hanagoji**

---

## 📝 **License**

This project is licensed under the MIT License.


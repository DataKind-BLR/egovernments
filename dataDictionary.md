# Data Dictionary

Data Files available:
- Raw data: coc.csv
- Un-duplicated "Problems" file : problemCategoryDictionary.csv
- Complaints rolled up to day: "rolledComplaints.csv"



# Raw Data: coc.csv

This is the raw data.
## Details
| Name | Description | Type | Missing Value |
|------|-------------|------|--------------|
| Serial ID | (Auto-Increment ID) | Numeric | - |
| Complaint.Type | Type of the Complaint. 93 possibilities | String, Categorical | - |
| Area | Denotes the area of the complaint. 260 possibilities  | String, Categorical | "NA" |
| Locality | Location at the "Locality" level. One level below "Area". 3392 possibilities (currently, may change in the future) | String, Categorical | "nan" |
| Street | Location at the street level. One level below "Locality". ~25k possibilities | String, Categorical | "NA" |
| Region | The region of the complaint. This is automatically filled using user entered details. Possible Values: ["Central Region", "South Region", "North Region"] | String, Categorical | - |
| Zone | The zone of the of complaint, like "Region", but at a lower level. Possible values: ['N01' 'N02' 'N03' 'N04' 'N05' 'N06','N07' 'N08' 'N09' 'N10' 'N11' 'N12', 'N13' 'N14' 'N15']  | String, Categorical | - |
| Ward | The ward of the complaint. Like "Zone" but at a lower level. There are 200 wards.| String, Categorical | -
| Complaint.Details | Text describing the complaint. Not always filled by the user, so the data contains a lot of duplicates. | String, Text | - |
| Email | Anonymized Email | String, Categorical | "00e3902431681886db4cf60de2db9188" is no / empty email |
| Mobile | Anonymized Mobile Numbers |  String, Categorical | - |
| Department | The department the complaint is assigned to. 48 possibilities. | String, Categorical | - |
| Complaint.Date | The date of filing the complaint. dateFormat = "%m/%d/%Y %H:%M:%S" (python) | DateTime | "NA" |
| Resolution.Date |  The day of complaint resolution. dateFormat = "%m/%d/%Y %H:%M:%S" (python) | DateTime | "NA" |
| Number.of.days.for.resolution |Derived attribute. Number of days taken to resolve complain. Set only if Is.Resolved = "YES" | Numerical | "NA" |
| Range | Derived from Number.of.days.for.resolution. Set onlu if Is.Resolved="YES". Possible Values: '(16-30 days)', '(3-7 days)', '(8-15 days)', '(<3 days)','(>30 days)' | String, Categorical | "NA" |
| Is.Resolved | Whether it is resolved "YES" or not "NO" | String, Categorical | - |


# Un-duplicated "Problems" file : problemCategoryDictionary.csv

This is generated from the raw data in the following way:
- Exact Duplicates in the columns ['Complaint.Type', 'Area', 'Locality', 'Street', 'Region', 'Zone', 'Ward', 'Complaint.Details', u'Email', u'Mobile', u'Complaint.Month', "Complaint.Year", u'Complaint.Day'] are removed
- Only resolved complaints are selected
- Exact Duplicates are removed in these columns ["Complaint.Type","Street", "Resolution.Year", "Resolution.Month", "Resolution.Day"]

It has the same structure as the raw data, except for additional derived data. They are listed below:
- Fields derived from "Complaint.Date":
    - 'Complaint.Year'
    - 'Complaint.Month'
    - 'Complaint.Day'
    - 'Complaint.Hour'
- Fields derived from "Resolution.Date":
    - 'Resolution.Year'
    - 'Resolution.Month'
    - 'Resolution.Day'
    - 'Resolution.Hour

# Complaints rolled up to day: "rolledComplaints.csv"
This is aggregated over the complaints, and rolled up so that all complaints are summed up according the the type of the complaint, on a per day basis.
The columns are:
- "Complaint.Year" - Explained Earlier
- "Complaint.Month" - Explained Earlier
- "Complaint.Day" - Explained Earlier
- "Complaint.Type" - Explained Earlier
- "Ward" - Explained Earlier
- "Department" - Explained Earlier
- "Count" - The number of complaints

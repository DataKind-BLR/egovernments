# Data Dictionary

| Name | Description | Type | Missing Value |
|------|-------------|------|--------------|
| Serial ID | (Auto-Increment ID) | Numeric | - |
| Complaint.Type | Type of the Complaint | String, Categorical | - |
| Area | Area  | String, Categorical | "NA" |
| Locality | The Locality | String, Categorical | "nan" |
| Street | Street | String, Categorical | "NA" |
| Region | Region | String, Categorical | - |
| Zone | Zone | String, Categorical | - |
| Ward | Ward | String, Categorical | -
| Complaint.Details | Text describing the complaint | String, Text | - |
| Email | Anonymized Email | String, Categorical | - |
| Mobile | Anonymized Mobile Numbers |  String, Categorical | - |
| Department | Department | String, Categorical | - |
| Complaint.Date | Complaint Date | DateTime | "NA" |
| Resolution.Date |  Complaint Resolution Date | DateTime | "NA" |
| Number.of.days.for.resolution | Number of days taken to resolve complain. Set only if Is.Resolved = "YES" | Numerical | "NA" |
| Range | Derived from Number.of.days.for.resolution | String, Categorical | - |
| Is.Resolved | Whether it is resolved "YES" or not "NO" | String, Categorical | - |

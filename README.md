# eGovernments
Problem Description and other details for eGovernments.

Other files / links:
- [Data Dictionary](dataDictionary.md)
- [Hackpad](https://dkblr.hackpad.com/Egovernments.org-ZnhibdCxJOF)

## Organization’s Mission
eGovernments Foundation transforms urban governance with the use of scalable and replicable technology solutions that enable efficient and effective municipal operations, better decision making, and contact-less urban service delivery. Mission is  to bring better & inclusive governance leading to smarter cities.

## Backgorund
eGovernments Foundation is a technology organization with a mission to improve Urban Governance and enable SmartCities. It was founded in 2003 by Nandan Nilekani (ex-CEO of Infosys) & Srikanth Nadhamuni (Silicon Valley technologist).

eGov’s eMuncipal ERP includes functions like Financial Accounting, Property & Professional Taxes, Public Works, Inventory, Payroll, Birth & Death, Public Grievance Redressal etc. The eGov solutions have been deployed in more than 275 Municipalities, and have directly benefitted more than 1.2 crore citizens by improving accountability, transparency, and service delivery.

eGov’s integrated Municipal ERP built using a Java stack, is one of the leading solutions in this space. To achieve greater scale, performance, and modern citizen-centric features, we are re-architecting our solution with focus on OpenSource, Cloud, Mobile and Analytics capabilities.

## Data to be analyzed
eGovernment Foundation is working with Corporation of Chennai for the last 6 years. The Public Grievance and redressal system is live since Feb’09. Over the last 6 years, more than 2.25 complaints have been registered in the system, 2.15 lakh complaints have been redressed.

The system categorizes the complaint into various categories and routes the complaint to the concerned officials based on the complaint type and the location of the complaint.


## Tasks:
- De-duplication
- Trend Detection / ARIMA / Time Series Modeling for alerting


### De-duplication
Complaints filed on the site by multiple people may refer to the same problem. The task is to find and model problems instead of complaints.

### Trend Detection / Time Series Modeling for alerting
The Corporation is looking for kind of Alerts and notification system along with the ability to forward the alert to the concerned employee for taking action.
The users of the system would be:
- Senior executives who will receive the alerts
- Employee to whom the alerts and notifications will be forwarded for taking action.

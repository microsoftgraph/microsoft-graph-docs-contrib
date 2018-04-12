# Microsoft Graph Reports API overview

Usage reports in the Office 365 admin center enable admins to understand their company's usage across the Office 365 services.

## Why use the Microsoft Graph Reports API?

### Integrate Office 365 usage reporting into your organization's existing reporting solution
Many companies have existing reporting solutions using a reporting application or web portal and having all IT services reporting in a unified location has its advantages.  This enables organizations and independent software vendors to incorporate Office 365 usage data into their existing reporting solutions. 

### Retain usage reports for historical analysis
Using these APIs, you can retrieve the data available in all of the usage reports, including organization level summaries per service, entity level (user, sites, accounts) usage information for reporting periods of the last 7/30/90/180 days, and daily activity aggregates.  This gives you the option to keep historical usage information for as long as it is required.

## What data is available in the in Microsoft Graph Reports API?

The following are the datasets available through the Reports API.

|Workload|Dataset|
|:--------|:--------|
|Microsoft Teams|[Device Usage](../api-reference/v1.0/resources/microsoft_teams_device_usage_reports.md)|
| |[User Activity](../api-reference/v1.0/resources/microsoft_teams_user_activity_reports.md)|
|Outlook|[Activity](../api-reference/v1.0/resources/email_activity_reports.md)|
| |[App Usage](../api-reference/v1.0/resources/email_app_usage_reports.md)|
| |[Mailbox Usage](../api-reference/v1.0/resources/mailbox_usage_reports.md)|
|Office 365 |[Activiations](../api-reference/v1.0/resources/office_365_activations_reports.md)|
| |[Active Users](../api-reference/v1.0/resources/office_365_active_users_reports.md)|
| |[Groups Activity](../api-reference/v1.0/resources/office_365_groups_activity_reports.md)|
|OneDrive |[Activity](../api-reference/v1.0/resources/onedrive_activity_reports.md)|
| |[Usage](../api-reference/v1.0/resources/onedrive_usage_reports.md)|
|SharePoint |[Activity](../api-reference/v1.0/resources/sharepoint_activity_reports.md)|
| |[Site Usage](../api-reference/v1.0/resources/sharepoint_site_usage_reports.md)|
|Skype for Business |[Activity](../api-reference/v1.0/resources/skype_for_business_activity_reports.md)|
| |[Device Usage](../api-reference/v1.0/resources/skype_for_business_device_usage_reports.md)|
| |[Organizer Activity](../api-reference/v1.0/resources/skype_for_business_organizer_activity_reports.md)|
| |[Participant Activity](../api-reference/v1.0/resources/skype_for_business_participant_activity_reports.md)|
| |[Peer to Peer Activity](../api-reference/v1.0/resources/skype_for_business_peer_to_peer_activity.md)|
|Yammer |[Activity](../api-reference/v1.0/resources/yammer_activity_reports.md)|
| |[Device Usage](../api-reference/v1.0/resources/yammer_device_usage_reports.md)|
| |[Groups Activity](../api-reference/v1.0/resources/yammer_groups_activity_reports.md)|

## Next steps

* [Reports API Reference](../api-reference/v1.0/resources/report.md)
* [General Availability Announcement](https://techcommunity.microsoft.com/t5/Office-365-Blog/Announcing-the-General-Availability-of-Microsoft-Graph-reporting/ba-p/137838)

---
title: "Microsoft Graph Data Connect app authorization"
description: "Learn about the Microsoft Graph Data Connect app authorization process"
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph app authorization

The new Microsoft Graph Data Connect app authorization experience is built into the Microsoft 365 admin center. Global administrators who authorize Data Connect apps for your organization can get started by going to **Org settings** on the **Security & Privacy** tab.
This documentation is for global administrators authorizing Microsoft Graph Data Connect apps for your organization.

The new Data Connect app authorization experience is built into the Microsoft 365 admin center. You can get started by navigating to the **Security & Privacy** tab under **Org settings**  and selecting **Microsoft Graph Data Connect applications** and navigate to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?#/Settings/MGDCAdminCenter). This is a different entry point from where admins opt-in to Data Connect. Currently, only global administrators may authorize Data Connect applications.

![Graphic showing org settings in the Security & Privacy tab for Data Connect apps.](images/org-settings-security-and-privacy-data-connect-apps.png)

## App summary view

The landing page of the Data Connect applications portal is a quick view of all Data Connect applications you may be interested in, as shown in the following images:

![Screenshot of a quick view of apps in the Data Connect portal.](images/data-connect-applications-quick-view.png)

![Graphic showing a line entry populated in the Data Connect portal.](images/data-connect-applications-quick-view-populated-with-line-entry.png)

You'll find the following types of applications in the portal:

- **Single-tenant apps**—applications that are registered in your tenant, and require access to data. These are typically enterprise scenarios.
    - - **Multi-tenant applications**— applications that are housed in another tenant, and require access to data from your tenant. These are typically ISV scenarios. Review the apps carefully, as authorizing them can enable data to be migrated from your tenant to the app developer’s tenant.

All single-tenant apps will be populated in the table by default. Only approved, denied, or expired multi-tenant apps will be included in the table. Other apps may be shown in the table with the following statuses:

- **Pending authorization**—apps that have not been acted upon yet. This status is only possible for single-tenant apps. Apps in this state will always fail at runtime.
- **Approved**—apps that an admin has approved to access M365 data for your tenant.
- **Denied**—apps that an admin has denied to access M365 data for your tenant. Apps in this state will always fail at runtime.
- **Expired**—apps that an admin has approved to access M365 data for your tenant, but the approval expired. Apps in this state will always fail at runtime.
- **Update available**—apps that an admin has previously reviewed and acted upon, but have since been updated. Apps in this state will continue working as per previous authorization. Once the admin provides a new approval, the new definition of the app will overwrite the old one.

### App details view
<!-- For this section, can we either have a set of images for the user to click through or a GIF of all wizard pages to reduce number of screenshots -->
Clicking on an app entry in the table will launch the app details view, with more information on what data the app requires. This wizard experience walks you through the relevant data access details, and allows you to approve or deny an app at the end. For what this looks like in the Data Connect app portal and M365 admin center, see the images below:

![Graphic showing the app details view in the Data Connect portal.](images/data-connect-portal-app-details-view.png)

![Graphic showing the app details view in the M365 admin center.](images/m365-admin-center-app-details-view.png)

1. Step 1 in the wizard shows overview information about the application:

`App owner` main user name of the developer who registered the application.

`Data destination` sink where the data will be delivered. If approved, this app may move the requested data to any location within the listed sink.

`App publisher` Azure AD tenant ID where the app is registered. For single-tenant apps, this should be the same AAD tenant ID as your tenant.

![Graphic showing the app details view for a teams call records dataset sample in Data Connect portal.](images/data-connect-portal-team-call-records-sample.png)

![Graphic showing the app details view for a user records dataset sample in Data Connect portal.](images/m365-admin-center-user-records-sample.png)

![Graphic showing the app details view for a group details dataset sample in Data Connect portal.](images/m365-admin-center-group-details-sample.png)

![Graphic showing the app details view for a message details dataset sample in Data Connect portal.](images/m365-admin-center-message-details-sample.png)

2. Step 2 in the wizard varies per dataset. There'll be one step per dataset registered in the app, for example:

`Columns`—specifies columns the app intends to extract via Data Connect. If approved, this app can extract any subset of approved columns for the specified dataset.

`Scope`—specifies scope (i.e., user selection) the app intends to extract via Data Connect. [Learn more about scopes in Data Connect](./data-connect-users-and-groups).

![Graphic showing the scopes review page in Data Connect portal.](images/data-connect-scopes-review-page.png)

![Graphic showing the scopes approve or decline page in Data Connect portal.](images/data-connect-scopes-approve-decline-page.png)

3. Step 3 in the wizard confirms some key information on the app for you to review. You can select `Approve`, `Decline`, or `Cancel`. An action on an app is all or nothing. Authorizing an app means you are authorizing all access specified in the previous steps.

![Graphic showing the app final authorization page in Data Connect portal.](images/data-connect-app-final-authorization.png)

When authorizing an app, you may encounter these error messages:

- App approver and owner cannot be the same user.
- App registration not found. It is possible someone deleted this app.

If an unexpected error occurs, the error message will include an error code. Please note this error code and share with Microsoft support.

### Discovering multi-tenant applications

![Graphic showing page for adding a multi-tenant app in Data Connect portal.](images/add-new-multi-tenant-app-page.png)

To discover multi-tenant applications, select `Add new multi-tenant app` above the app summary table. If your tenant is enabled for cross-tenant data migration, you'll be shown two text boxes. Once you enter the application ID and application’s tenant ID, and choose `Find`,the portal will launch the app details view for the app you're searching for.

### M365 audit logs

The fresh Microsoft Graph Data Connect app authorization experience is integrated with M365 audit logs. When admins approve or deny a Data Connect application, an auditable event emits to M365 audit logs along with all relevant data about what exactly was approved or denied. Search for Data Connect authorization events on audit logs search using any of the following:

`Workload` MicrosoftGraphDataConnect

`Record type` MicrosoftGraphDataConnectConsent

`Activities` Approved or denied an app (Under `Microsoft Graph Data Connect Activities`)

![Graphic showing an M365 audit log sample page.](images/m365-audit-log-example.png)

### Authorization validation during pipeline execution

At runtime, Data Connect validates incoming requests against all authorizations in the tenant. If a matching authorization is found, the job will proceed. If no authorization is discovered, the job will fail. Data Connect no longer stalls on `ConsentPending` when awaiting authorization. If authorization validation fails, you'll receive a specific error message on why your job failed to match existing app authorizations.

Authorization validations applied during runtime include:

- The application ID for the incoming request matches an authorized app.
- The found app authorization is approved.
- The application’s tenant ID for the incoming request matches the found app authorization’s app registration tenant ID.
- The dataset for the incoming request is one of the datasets in the found app authorization.
- The columns in the incoming request are a subset of those that were authorized for the requested dataset.
- The destination tenant ID matches the found app authorization’s destination tenant ID.
- The destination location for the incoming request is contained within the destination sink in the found app authorization.
- The scope for the incoming request aligns with the scope in the found app authorization.
  - If the app is authorized for all users/groups in the tenant, then any scope will pass this validation.
  - If the app is authorized for a list of groups, then any subset of the authorized groups will pass this validation.
  - If the app is authorized for a scope filter URI, then the incoming request must exactly match the authorized value.
  

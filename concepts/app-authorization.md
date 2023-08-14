---
title: "Microsoft Graph Data Connect app authorization"
description: "Learn how global administrators can authorize Microsoft Graph Data Connect apps in the Microsoft 365 admin center."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph Data Connect app authorization

The authorization experience for Microsoft Graph Data Connect apps is built in to the Microsoft 365 admin center. Global administrators who authorize Data Connect apps for your organization can get started by going to the Microsoft Graph Data Connect authorization portal. Go to **Org settings** on the **Security & Privacy** tab, then select **Microsoft Graph Data Connect applications**.

These are different entry points from where admins opt in to Data Connect. Only global administrators can authorize Data Connect applications.

![Graphic showing org settings in the Security & Privacy tab for Data Connect apps.](images/org-settings-security-and-privacy-data-connect-apps.png)

## App summary view

The landing page of the Data Connect applications portal provides a quick view of all Data Connect applications you might be interested in, as shown in the following image:

![Screenshot of a quick view of apps in the Data Connect portal.](images/authorization-app-summary-table.png)

You'll find the following types of applications in the portal:

- **Single-tenant apps**—applications that are registered in your tenant, and require access to data. These are typically enterprise scenarios.
- **Multi-tenant applications**—applications that are hosted in another tenant, and require access to data from your tenant. These are typically ISV scenarios. Review these apps carefully. When you authorize multi-tenant apps, data from your tenant can be migrated to the app developer’s tenant.

All single-tenant apps will be populated in the table by default. Only approved, denied, or expired multi-tenant apps will be included in the table. Other apps may be shown in the table with the following statuses:

- **Pending authorization**—apps that have not been acted upon yet. This status is only possible for single-tenant apps. Apps in this state will always fail at runtime.
- **Approved**—apps that an admin has approved to access Microsoft 365 data for your tenant.
- **Denied**—apps that an admin has denied to access M365 data for your tenant. Apps in this state will always fail at runtime.
- **Expired**—apps that an admin has approved to access M365 data for your tenant, but the approval expired. Apps in this state will always fail at runtime.
- **Update available**—apps that an admin has previously reviewed and acted upon, but have since been updated. Apps in this state will continue working as per previous authorization. Once the admin provides a new approval, the new definition of the app will overwrite the old one.

### App details view
<!-- For this section, can we either have a set of images for the user to click through or a GIF of all wizard pages to reduce number of screenshots? -->
Select an app from the table to launch the app details view, which provides more information about the data the app requires. This wizard experience walks you through the relevant data access details. When you complete the wizard, you can approve or deny the app at the end. The following image shows the app details view.

![Screenshot showing the app details view in the Data Connect portal.](images/authorization-app-details-overview.png)

First, the wizard shows overview information about the application:

**Developer**—user name of the developer who registered the application.

**Data destination**—sink where the data will be delivered. If approved, this app may move the requested data to any location within the listed sink.

**App publisher**—Azure AD tenant ID where the app is registered. For single-tenant apps, this should be the same Azure AD tenant ID as your tenant.

![Graphic showing the app details view for a teams call records dataset sample in Data Connect portal.](images/authorization-app-details-dataset.png)

Next, the wizard includes multiple dataset steps, one step per dataset registered in the app. Each page shows you relevant information for each dataset. For example:

**Columns**—specifies columns the app intends to extract via Data Connect. If approved, this app can extract any subset of approved columns for the specified dataset.

**Scope**—specifies scope (i.e., user selection) the app intends to extract via Data Connect. [Learn more about scopes in Data Connect](./data-connect-users-and-groups.md).

For details about how authorization works with different scopes, see [Authorization validation during pipeline runtime](#authorization-validation-during-pipeline-runtime).

![Graphic showing authorization validation review page in Data Connect portal.](images/authorization-app-details-review.png)

Finally, the wizard confirms some key information on the app for you to review.. You can select **Approve**, **Decline**, or **Cancel**. An action on an app is all or nothing. Authorizing an app means you are authorizing all access specified in the previous steps.

When authorizing an app, you may encounter these error messages:

- "App approver and owner cannot be the same user."
- "App registration not found. It is possible someone deleted this app."

If an unexpected error occurs, the error message will include an error code. Make a note of this error code to share with Microsoft support.

### Discovering multi-tenant applications

![Graphic showing page for adding a multi-tenant app in Data Connect portal.](images/authorization-multitenant-app-search.png)

To discover multi-tenant applications, select `Add new multi-tenant app` above the app summary table. If your tenant is enabled for cross-tenant data migration, you'll see two text boxes. After you enter the application ID and tenant ID, choose `Find`, and the portal will launch the app details view for the app you're searching for.

### Microsoft 365 audit logs

The Microsoft Graph Data Connect app authorization experience is integrated with Microsoft 365 audit logs. When admins approve or deny a Data Connect application, an auditable event emits to Microsoft 365 audit logs with relevant data about what was approved or denied. Use any of the following fields to search the audit logs for Data Connect authorization events:

**Workload** MicrosoftGraphDataConnect

**Record type** MicrosoftGraphDataConnectConsent

**Activities** Approved or denied an app (in **Microsoft Graph Data Connect Activities**)

![Graphic showing an M365 audit log sample page.](images/authorization-audit-logs.png)

### Authorization validation during pipeline runtime

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
  - If the app is authorized for a scope filter URI, then the incoming request must precisely match the authorized value.

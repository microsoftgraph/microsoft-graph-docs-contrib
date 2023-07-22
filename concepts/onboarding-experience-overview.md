---
title: "Microsoft Graph onboarding experience overview"
description: "Presenting customers with an improved overall Microsoft Graph Data Connect onboarding experience."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph onboarding experience

Microsoft Graph Data Connect has a simplified onboarding experience—featuring an improved app registration and app authorization experience, and detailed guidance for migrating existing customers to the new Data Connect experience.

Data Connect is moving from a just-in-time authorization model utilizing Privileged access management (PAM) to a pre-authorization experience decoupled from PAM. In this updated experience, data movements are authorized before pipelines are executed.
<!-- Graphic need to be updated without links. -->
![Graphic showing the improved onboarding experience for Microsoft Graph Data Connect customers.](images/new-mgdc-onboarding-flow.png)

- Admin enables Data Connect—the first step in onboarding remains unchanged. Your global administrator has to [enable Microsoft Graph Data Connect](https://admin.microsoft.com/adminportal/home#/Settings/Services/:/Settings/L1/O365DataPlan).
- Developer creates new Azure AD app—you have to first create a new AAD app (similar to the original experience).
- Developer registers app with Data Connect—once the Azure Active Directory (AAD) app is created, you need to register the app in the new [Data Connect app registration portal](https://aka.ms/mgdcinazure). This is where you specify the data you require for the application. Learn more about [app registration](./app-registration.md).
- Admin authorizes app—after the developer has registered the app with Data Connect, the global administrator can use the Data Connect app authorization portal to review the registered app, and approve it. Learn more about [app authorization](./app-authorization.md).
- Developer runs pipelines—after the admin has authorized the application, the developer can run existing pipelines without delays for runtime authorization. The pipeline creation and execution with Azure Data Factory or Azure Synapse remains the same.

## How have we improved the onboarding experience?

**Authorization is provided before any pipeline runs**—if authorization is not granted, the pipeline fails instantly. This eliminates extra runtime, which incurs ADF runtime costs, waiting on manual approval—and removes the need to align pipeline execution timelines with an admin’s availability. It also eliminates runtime authorization creation failures.

**Service principal owner licenses are no longer required**—this removes requirements for service principal owners to be Microsoft 365 users with an E5 license, and completely removes license requirements. AAD application ownership is required for updating and deleting app registrations with MGDC. 

Support for role-based access control of Data Connect applications using [Azure app roles](https://learn.microsoft.com/azure/active-directory/develop/howto-add-app-roles-in-apps#declare-roles-for-an-application) will be announced in the near future.

**Data Connect no longer requires the admin authorizing Microsoft 365 data access to have an E5 license**—user authorizing an app is required to be a global admin in order to access the [Data Connect app authorization portal](https://admin.microsoft.com/adminportal/home#/Settings/Services/:/Settings/L1/O365DataPlan), and approve apps for Data Connect.

**New Data Connect presence on Azure portal and Microsoft 365 admin center enables a more intuitive and informative experience while registering and authorizing apps**.  

**Data Connect is evolving to a per-app authorization model, which functionally means one admin authorization per customer scenario**. A single app registration will encapsulate all datasets that app requires, along with per dataset controls for columns and scopes. This also means just a single authorization is required to enable a whole scenario.

**The new Data Connect app authorization experience supports renewing an app authorization before expiry, which is not supported in PAM**.

**The fresh onboarding experience enables multi-tenant apps to initiate cross-tenant data movement with Data Connect**. This enables an Independent Software Vendor (ISV) to make use of Data Connect to extract Microsoft 365 data to bring value to customers.

## Confirming your new tenant experience
<!-- Please update placeholder. -->
If your tenant enabled Data Connect on the Microsoft 365 Admin Center after &lt;date&gt;, your organization is successfully enrolled in the new onboarding experience. Confirm this by requesting someone in your company with a Global Reader or Global Administrator-assigned role to access the Data Connect admin authorization portal. 

If you're able to access the experience shown **without the highlighted warning** "You are still using the legacy Privileged Access management Microsoft Graph Data Connect consent experience. Please enable the new consent experience for MGDC enterprise apps," your tenant is making use of the new experience.

![The highlighted warning displayed for users if their organization is not using the new tenant experience.](images/M365-admin-center-highlighted-warning.png)

If you see your tenant is not using the new experience and want to migrate, see the **[updated Microsoft Graph Data Connect onboarding experience](./onboarding-experience-overview.md)**.

---
title: "Microsoft Graph Data Connect onboarding experience"
description: "Learn about the updated onboarding experience for Microsoft Graph Data Connect."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph Data Connect onboarding experience

Microsoft Graph Data Connect has a simplified onboarding experience—featuring an improved app registration and app authorization experience, and detailed guidance for migrating existing customers to the new Data Connect experience.

This article describes the simplified onboarding experience for Microsoft Graph Data Connect. Customers who currently use the Privileged Access Management (PAM) authorization model can migrate to the simplified experience in which data transfers are authorized before the pipelines run. The following image shows the onboarding steps.
<!-- Graphic needs to be updated without links. -->
![Graphic showing the onboarding experience for Microsoft Graph Data Connect customers.](images/new-mgdc-onboarding-flow.png)

1. Your global administrator [enables Microsoft Graph Data Connect](https://admin.microsoft.com/adminportal/home#/Settings/Services/:/Settings/L1/O365DataPlan) in the Microsoft 365 admin center.

2. Create a new Azure AD app.

3. Register the app with Data Connect in the [Data Connect app registration portal](https://aka.ms/mgdcinazure)—and specify the data that is required for the application. For details, see [app registration](./app-registration.md).

4. Your global administrator authorizes the app in the Data Connect app authorization portal. For details, see [app authorization](./app-authorization.md).

5. You can now run existing pipelines without delays caused by runtime authorization. Pipelines are created and run via Azure Data Factory or Azure Synapse.

## Updated onboarding experience

The onboarding experience to Microsoft Graph Data Connect now includes improved process efficiencies and developer workflows—and improvements on the Azure portal that further enable a more intuitive and informative developer experience.

- Authorization is provided before any pipeline runs—if authorization is not granted, the pipeline fails instantly. This eliminates extra runtime, which incurs ADF runtime costs, waiting on manual approval, and minimizes runtime authorization creation failures.

- Service principal owner licenses are not required. This removes requirements for service principal owners to be Microsoft 365 users with an E5 license, and completely removes license requirements. Azure AD application ownership is required for updating and deleting app registrations with Data Connect.

- Admins don't need an E5 license. A user authorizing an app is required to be a global admin to access the [Data Connect app registration portal](https://admin.microsoft.com/Adminportal/Home?#/Settings/MGDCAdminCenter), and approve apps for Data Connect.

- Enhanced Microsoft 365 admin center experience for authorizing apps.

- Data Connect is evolving to a per-app authorization model, which functionally means one admin authorization per customer scenario. A single app registration will encapsulate all datasets that app requires, along with per dataset controls for columns and scopes. This also means just a single authorization is required to enable a whole scenario.

- Renewing an app authorization before the expiry date is now possible, which is not supported in Privileged Access Management (PAM).

- The onboarding experience enables multi-tenant apps to initiate cross-tenant data movement with Data Connect. This enables an Independent Software Vendor (ISV) to make use of Data Connect to extract Microsoft 365 data to bring value to customers.

## Confirming your new tenant experience
<!-- This date has a bit of a cyclic dependency... as soon as docs go out, we will roll this out... once this is signed off, we can decide the exact date and add it here and other places. -->
If your tenant enabled Data Connect on the Microsoft 365 Admin Center after August 2023, your organization is successfully enrolled in the new onboarding experience. Confirm this by requesting someone in your company with a Global Reader or Global Administrator-assigned role to access the Data Connect admin authorization portal.

If you're able to access the experience and you don't see the following warning text, you don't need to take any further action: You are still using the legacy Privileged Access Management Microsoft Graph Data Connect consent experience. Please enable the new consent experience for MGDC enterprise apps.

![The highlighted warning displayed for users if their organization is not using the new tenant experience.](./images/M365-admin-center-highlighted-warning.png)

If your tenant is not yet using the updated experience, for details about how to migrate, see [Migrate to the updated Microsoft Graph Data Connect onboarding experience](./existing-customer-migration.md).

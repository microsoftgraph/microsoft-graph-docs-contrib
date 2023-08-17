---
title: "Microsoft Graph Data Connect onboarding experience"
description: "Learn about the simplified onboarding experience for Microsoft Graph Data Connect."
author: "michaelvenables"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Microsoft Graph Data Connect onboarding experience

Microsoft Graph Data Connect has a simplified onboarding experience that features an enhanced app registration and app authorization experience.

This article describes the simplified onboarding experience, in which data transfers are authorized before the pipelines run. Customers who currently use the Privileged Access Management (PAM) authorization model can migrate to the simplified experience; for details, see [Existing customer migration](graph/existing-customer-migration).

The following are the steps to onboard:

1. Your global administrator [enables Microsoft Graph Data Connect](https://admin.microsoft.com/adminportal/home#/Settings/Services/:/Settings/L1/O365DataPlan) in the Microsoft 365 admin center.

2. Create a new Azure AD app.

3. Register the app with Data Connect in the [Data Connect app registration portal](https://aka.ms/mgdcinazure), and specify the data that is required for the application. For details, see [app registration](./app-registration.md).

4. Your global administrator authorizes the app in the Data Connect app authorization portal. For details, see [app authorization](./app-authorization.md).

5. You can now run existing pipelines without delays caused by runtime authorization. Pipelines are created and run via Azure Data Factory or Azure Synapse.

## Simplified onboarding experience

The simplified Data Connect onboarding experience includes process efficiencies and improved developer workflows, as well as Azure portal improvements that further enable a more intuitive and informative developer experience:

- Authorization is provided before any pipeline runs. If authorization is not granted, the pipeline fails right away. This eliminates extra runtime, which incurs ADF runtime costs and waiting on manual approval, and minimizes runtime authorization creation failures.

- Service principal owner licenses are not required. This removes requirements for service principal owners to be Microsoft 365 users with an E5 license, and removes license requirements. Azure AD application ownership is required to update and delete app registrations with Data Connect.

- Admins don't need an E5 license. A user authorizing an app is required to be a global admin to access the [Data Connect app registration portal](https://admin.microsoft.com/Adminportal/Home?#/Settings/MGDCAdminCenter), and approve apps for Data Connect.

- The Microsoft 365 admin center experience for authorizing apps is enhanced.

- Data Connect is evolving to a per-app authorization model, which functionally means one admin authorization per customer scenario. A single app registration encapsulates all datasets that an app requires, along with per dataset controls for columns and scopes. This also means that a single authorization is required to enable a scenario.

- You can renew an app authorization before the expiry date. This is not supported in Privileged Access Management (PAM).

- Multi-tenant apps can initiate cross-tenant data movement with Data Connect. This enables ISVs to make use of Data Connect to extract Microsoft 365 data to bring value to customers.

## Confirm your tenant experience
<!-- This date has a bit of a cyclic dependency... as soon as docs go out, we will roll this out... once this is signed off, we can decide the exact date and add it here and other places. -->
If your tenant enabled Data Connect in the Microsoft 365 admin center after August 2023, your organization is successfully enrolled in the simplified onboarding experience. To confirm this, request that someone in your company with a Global Reader or Global Administrator-assigned role access the Data Connect admin authorization portal.

If you're able to access the experience and you don't see the following warning text, you don't need to take any further action: 
`You are still using the legacy Privileged Access Management Microsoft Graph Data Connect consent experience. Please enable the new consent experience for MGDC enterprise apps.`

![The highlighted warning displayed for users if their organization is not using the new tenant experience.](./images/M365-admin-center-highlighted-warning.png)

If your tenant is not yet using the simplified experience, for details about how to migrate, see [Migrate to the updated Microsoft Graph Data Connect onboarding experience](./existing-customer-migration.md).

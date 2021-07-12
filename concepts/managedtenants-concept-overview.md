---
title: "Microsoft 365 Lighthouse API overview"
description: "Microsoft 365 Lighthouse is an admin portal that helps Managed Service Providers (MSPs) secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers who are using Microsoft 365 Business Premium."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
---

# Microsoft 365 Lighthouse overview

Microsoft 365 Lighthouse is an admin portal that helps Managed Service Providers (MSPs) secure and manage devices, data, and users at scale for small- and medium-sized business (SMB) customers who are using Microsoft 365 Business Premium.

Microsoft 365 Lighthouse simplifies onboarding of Microsoft 365 Business Premium tenants by recommending security configuration baselines tailored to SMB customers and providing multi-tenant views across all customer environments. With Microsoft 365 Lighthouse, MSPs can scale the management of their customers, focus on what's most important, quickly find and investigate risks, and take action to get their customers to a healthy and secure state.

## Why integrate with Microsoft 365 Lighthouse?

You can use the Microsoft 365 Lighthouse APIs in Microsoft Graph to gain insights into identified risks and take action to get your customers into a healthy and secure state.

### Devices

You can use the Microsoft 365 Lighthouse API to perform the following device tasks:

- Analyze [device compliance trends](/graph/api/resources/managedtenants-manageddevicecompliancetrend?view=graph-rest-beta) to better understand how device compliance is evolving over time for your customers.
- Understand what [device compliance policies](/graph/api/resources/managedtenants-manageddevicecompliance) have been created across your customers and the status of the policies.

### Threat management

You can use the Microsoft 365 Lighthouse API to perform the following threat management tasks:

- Gain insight to the state of [malware](/graph/api/resources/managedtenants-windowsdevicemalwarestate) that is present on the Windows devices registered for management across your customers.
- View the [protection state](/graph/api/resources/managedtenants-windowsprotectionstate?view=graph-rest-beta) for Windows devices registered for management across your customers to ensure those using Windows Defender are in a healthy state.

### Users

You can use the Microsoft 365 Lighthouse API to perform the following user tasks:

- Discover [risky users](/graph/api/resources/managedtenants-riskyuser?view=graph-rest-beta) across your customers.
- View [credential user registration summary](/graph/api/resources/managedtenants-credentialuserregistrationssummary?view=graph-rest-beta) to understand what users across your customers have registered for multi-factor authentication and self-service password reset.

## API reference

Looking for the API reference for this service?

- [Microsoft 365 Lighthouse API in Microsoft Graph beta](/graph/api/resources/intune-graph-overview?view=graph-rest-beta)

## Next steps

- See the [Changelog](changelog.md) for information about what's new in the Microsoft 365 Lighthouse API.
- Explore [examples](https://developer.microsoft.com/graph/graph/examples) for more ideas about how to use Microsoft Graph.

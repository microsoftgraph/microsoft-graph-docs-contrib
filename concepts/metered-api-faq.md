---
title: "Metered APIs and services in Microsoft Graph FAQ"
description: "Find answers for frequent questions about using metered APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
ms.topic: faq
---

# Metered APIs and services in Microsoft Graph FAQ

This article provides answers to frequently asked questions about metered APIs and services in Microsoft Graph.

## Billing setup FAQs

### What permissions are required to set up billing?
Setting up billing requires permissions both for the application registration and the Azure subscription you wish to use. Required permissions for the application registration are Application Owner or Application Administrator. Required permissions for the Azure subscription are Subscription Contributor, Owner / Resource Group Contributor, or Owner.

### Can I use a service principal to set up billing on my app registration?
Yes, it requires an application administrator or similar role for the app registration assigned to the service principal. The role can be scoped to only the target application set up for billing to prevent overly broad permissions from being granted.

### Can I use a managed identity to set up billing on my app registration?
Yes, you can create a managed identity for Azure resources. Assign role-based access control to your subscription or resource group, and add the Microsoft Entra application administrator role to the service principal associated with the managed identity. For more information, see [Tutorial: Use a Windows VM/VMSS to access Azure resources](/azure/active-directory/managed-identities-azure-resources/tutorial-windows-vm-ua-arm) for an example.

### How can I verify that my application is properly set up for billing?
For information about how to verify billing setup, see [Enable metered APIs and services](/graph/metered-api-setup?tabs=azurecloudshell#verify-setup).

## Microsoft Teams export API billing FAQs

> [!IMPORTANT]
> Starting August 25, 2025, the Microsoft Teams export APIs are no longer metered, and no billing configuration is required to use these APIs. If your application is configured for billing, no action is required. This FAQ section about the billing policy is provided for reference as the final billing cycle for metered Microsoft Teams APIs concludes.

### Are there more requirements beyond setting up billing to call Microsoft Teams export APIs?
Yes, Microsoft Teams export APIs require a `model` parameter to be passed as part of the API call. Depending on the value of the `model` parameter, a user license might also be required for certain data. For more information, see [Teams API payment models and licensing requirements](teams-licenses.md).

### How do I know which model parameter is being used in API calls?
The best way to determine which `model` parameter is in use is to inspect the code of the calling application.

### How is seeded capacity calculated?
Seeded capacity for Teams export APIs being called with the `model=a` parameter is calculated based on the number of eligible users in the target tenant. Seeded capacity is then applied to each application running against that tenant.

### How is seeded capacity applied?
Seeded capacity is evaluated at the beginning of the month, and any eligible license counts to the tenant-level calculation of seeded capacity. Each application then consumes the seeded capacity allocated to it until it's depleted. Further consumption by the application is then metered and appears on the monthly bill.

### What happens when an app that is registered but not set up for billing initiates a metered Teams export API call?
The API call fails with a 402 payment required error. This failure occurs even when targeting a user with a valid user license and passing the `model=a` parameter.

### What happens when the model parameter is excluded from a call to a Microsoft Teams export API that requires it?
When calling an API without a required `model` parameter, the API defaults to evaluation-mode behavior. The evaluation mode provides a limited number of API calls per month before returning the 402 payment required error. The evaluation mode is provided for evaluation and development only and isn't intended for production use.  

## Application consumer FAQ

### Why is my application provider asking me to set up billing?
The owner of the application registration handles billing for metered APIs and services in Microsoft Graph. If you acquired an application that requires you to be the owner of the application registration, you're responsible for any metered APIs and services used by the application.

### Do I need licenses for every user in my tenant?
A license is required for each user subject to security and compliance policies. Other scenarios might not require a license. For more information, see [Teams API payment models and licensing requirements](teams-licenses.md).

## Cost management and billing FAQ

### Where can I get the billing information for metered APIs and services?
Billing data is submitted to the Azure subscription used to create the Microsoft Graph billing resource under the service name **Microsoft Graph services**, and it is typically available 24 hours after the transactions occur.

For more information, see [Azure cost management and billing overview](/azure/cost-management-billing/cost-management-billing-overview).

The following table lists the most frequently used tools to review and monitor billing charges.

  | Type | Description |
  |:--------------------------|:----------------------------------------|
  |[Cost analysis](/azure/cost-management-billing/costs/quick-acm-cost-analysis)| Interactive chart that displays consumption. Hint: Use accumulated costs and filter by service name **Microsoft Graph services**. |
  |[Exports](/azure/cost-management-billing/costs/tutorial-export-acm-data)| Creates detailed reports with desired frequency (for example, daily or monthly). |
  |[Alerts](/azure/cost-management-billing/costs/cost-mgt-alerts-monitor-usage-spending)| Configures alerts by combining filters. |

### Is the bill broken down for each API?

The following table shows how the billing details can be aggregated or broken.

  | Type | Exports property | Cost analysis, budgets, and alerts filter |
  |:--------------------------|:----------------------------------------|:----------------------------------------|
  | Meter information | MeterName, MeterId, MeterCategory, MeterSubcategory, ProductName, ConsumedService | Meter, Meter category, Meter subcategory, Service name|
  | Resource information | InstanceId, ResourceType, ResourceGroup, SubscriptionGuid| Resource, Resource guid, Resource type, Resource group, Service name |
  | Tags | TenantId | TenantId |
  | AdditionalInfo | AppId, TenantId |  |

Some endpoints might share a meter, and billing data can't be broken down by endpoint. Alternatively, a client app can set up client-side API logging or use [Microsoft Graph activity logs](microsoft-graph-activity-logs-overview.md).

[!INCLUDE [Metered API Known Limitations](includes/metered-api-known-limitations.md)]

## Related content

- [Overview of metered APIs and services in Microsoft Graph](/graph/metered-api-overview)
- [Metered APIs and services in Microsoft Graph](/graph/metered-api-list)
- [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup)
- [Payment models and licensing requirements for Microsoft Teams APIs](teams-licenses.md)

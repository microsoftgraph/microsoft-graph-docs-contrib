---
title: "Metered APIs and services in Microsoft Graph FAQ"
description: "Find answers for frequent questions about using metered APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Metered APIs and services in Microsoft Graph FAQ

## Billing setup FAQs

### What permissions are required to setup billing?
Setting up billing requires permissions both for the application registration and the Azure subscription you wish to use. Required permissions for the application registration are Application Owner or Application Administrator. Required permissions for the Azure subscription are Subscription Contributor, Owner / Resource Group Contributor, or Owner.

### Can I use a Service Principal to setup billing on my App registration?
Yes, this requires an Application Administrator or similar role for the App Registration assigned to the Service Principal. The role can be scoped to only the target application that is being setup for billing to prevent overly broad permissions from being granted.

### Can I use a Managed Identity to setup billing on my App registration?
Yes, you can create a Managed Identity for Azure resources. Assign role based access control to your subscription or resource group, and add Entra Application Administrator role to the Service Principal associated with the Managed Identity. See [Use a managed identity to access Azure Resource Manager - Windows - Microsoft Entra](/azure/active-directory/managed-identities-azure-resources/tutorial-windows-vm-ua-arm) for an example.

### How can I verify that my application is properly setup for billing?
Instructions for verifying billing setup can be found [here](/graph/metered-api-setup?tabs=azurecloudshell#verify-setup)

## Microsoft Teams export API billing FAQs

### Are there additional requirements beyond setting up billing to call Microsoft Teams export APIs?
Yes, Microsoft Teams export APIs require a Model parameter to be passed as part of the API call. Depending on the value of the Model parameter a user license may also be required for certain data. Please see [Teams API payment models and licensing requirements](teams-licenses.md) for details about the required Model parameters and user licenses.

### How do I know which model parameter is being used in API calls?
Inspecting the code of the calling application is the best way to determine which model parameter is being used.

### How is seeded capacity calculated?
Seeded capacity for Teams export APIs being called with the model A parameter is calculated based on the number of eligible users in the target tenant. Seeded capacity is then applied to each application running against that tenant.

### How is seeded capacity applied?
Seeded capacity is evaluated at the beginning of the month, any eligible license counts to the tenant level calculation of seeded capacity. Each application then consumes the seeded capacity allocated to it until it is depleted. Further consumption by the application is then metered and appears on the monthly bill.

### What happens when an app that is registered but not setup for billing calls a metered Teams export API?
The API call will fail with a 402 Payment Required error. This is the case even if targeting a user with a valid user license and passing the model A parameter.

### What happens when the model parameter is excluded from a call to a Microsoft Teams export API that requires it?
When calling an API without a required model parameter the API will default to evaluation mode behavior. Evaluation mode provides a limited number of API calls per month before returning the 402 Payment Required error. Evaluation mode is provided for evaluation and development only and not intended for production use.  

## Application consumer FAQ

### Why is my application provider asking me to setup billing?
Billing for metered APIs and services in Microsoft Graph is handled by the owner of the application registration. If you have acquired an application that requires you to be the owner of the application registration you will be responsible for any metered APIs and services used by the application.

### Do I need licenses for every user in my tenant?
A license is required for each user that is subject to security and compliance policies. Other scenarios may not require a license, see [Teams API payment models and licensing requirements](teams-licenses.md) for more details about user license requirements for Microsoft Teams export APIs.

## Cost Management and billing FAQ

### Where can I get the billing information for metered APIs and Services?
Billing data is submitted to the Azure Subscription used to create the Graph billing resource under Service Name "Microsoft Graph Services" typically available after 24 hours after the transactions ocurred.

For a complete list of capabilities visit [Azure Cost Management and Billing overview](/azure/cost-management-billing/cost-management-billing-overview).

Most frequently used tools to review and monitor billing charges:

  | Type | Description |
  |:--------------------------|:----------------------------------------|
  |[Cost Analysis](/azure/cost-management-billing/costs/quick-acm-cost-analysis)| Interactive chart that displays consumption. Hint: Use accumulated costs and filter by Service Name "Microsoft Graph Services" |
  |[Exports](/azure/cost-management-billing/costs/tutorial-export-acm-data)| Creates detailed reports with desired frequency (ex. daily or monthly) |
  |[Alerts](/azure/cost-management-billing/costs/cost-mgt-alerts-monitor-usage-spending)| Configures alerts by combining filters |

### Is the bill broken down for each API?

The billing details can be aggregated or broken down by:

  | Type | Exports property | Cost Analysis, Budgets, and Alerts filter |
  |:--------------------------|:----------------------------------------|:----------------------------------------|
  | Meter information | MeterName, MeterId, MeterCategory, MeterSubcategory, ProductName, ConsumedService | Meter, Meter category, Meter subcategory, Service name|
  | Resource information | InstanceId, ResourceType, ResourceGroup, SubscriptionGuid| Resource, Resource guid, Resource type, Resource group, Service name |
  | Tags | TenantId | TenantId |
  | AdditionalInfo | AppId, TenantId |  |

Some endpoints might share a meter, and billing data can not be broken down by endpoint. Alternatively, a client app can setup client side API logging or use [Microsoft Graph activity logs](microsoft-graph-activity-logs-overview.md).

[!INCLUDE [Metered API Known Limitations](includes/metered-api-known-limitations.md)]

## Related content

- [Overview of metered APIs and services in Microsoft Graph](/graph/metered-api-overview)
- [Metered APIs and services in Microsoft Graph](/graph/metered-api-list)
- [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup)
- [Payment models and licensing requirements for Microsoft Teams APIs](teams-licenses.md)

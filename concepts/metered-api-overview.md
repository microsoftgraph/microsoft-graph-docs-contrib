---
title: "Overview of metered APIs and services in Microsoft Graph"
description: "Get an introduction to metered APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Overview of metered APIs and services in Microsoft Graph

Microsoft Graph includes APIs that are available at no additional cost with [user subscription licenses](/microsoft-365/enterprise/subscriptions-licenses-accounts-and-tenants-for-microsoft-cloud-offerings) and APIs and services that are metered. Metered APIs and services in Microsoft Graph incur costs based on usage. The costs might be incurred per API call made, per object returned in an API call, or through other measures.

Whether metered or not, APIs in Microsoft Graph follow these two principles:
- Customer data ownership: Customer data belongs to the customer. Learn more about how [Microsoft categorizes customer data](https://www.microsoft.com/trust-center/privacy/customer-data-definitions). 
- Reasonable access: The service provides access to customer content, within [defined limits](throttling-limits.md). 

Metering some APIs helps to ensure the health of the current and future Microsoft Graph ecosystem by balancing platform access and cost. In the event that a Microsoft Graph API that is included with user subscription licenses becomes metered, that would be a non-backward compatible change and the [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md) would apply.

For the list of metered APIs and services, see [Metered APIs and services](/graph/metered-api-list). 

## API categories and metering
Microsoft Graph APIs fall into three categories, and metering may apply based on the category of the API.

### Standard APIs
Most Microsoft Graph APIs are standard APIs. These APIs perform standard operations (create, read, update, delete) on customer content and administrative endpoints. Reasonable access limits for these APIs are defined based on documented [usage thresholds](throttling-limits.md). This helps to ensure a positive customer experience and encourages efficient API usage patterns. Access to standard APIs within the defined usage thresholds is available as part of the user license without additional costs.

### High-capacity APIs
High-capacity APIs ensure that customers and developers have access to data at scale. This category includes purpose-built, bulk export or import endpoints and Microsoft Graph services. These APIs may be metered and incur additional costs beyond user subscription licenses.

### Advanced APIs
Advanced APIs provide access to enriched or aggregated data, or advanced functionality that extends from Microsoft 365. The [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel) API is an example of an advanced API. These APIs may be metered and incur additional costs beyond user subscription licenses.

## Accessing metered APIs
To access metered APIs and services in Microsoft Graph, an application must be associated with an active Microsoft Azure subscription. For details about how to associate an app to a subscription, see [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup).

## Considerations for using metered APIs

Keep the following considerations in mind when you use metered APIs and services in Microsoft Graph:

- Metered APIs can return errors related to your subscription status in addition to other common errors. For details about Microsoft Graph errors, see [Microsoft Graph errors and resource types](errors.md).
- Metered APIs are billed according to API usage. Be sure to understand the metering unit so that you can estimate the costs associated with a particular API.

[!INCLUDE [Metered API Known Limitations](includes/metered-api-known-limitations.md)]

## See also

- [Metered APIs and services in Microsoft Graph](/graph/metered-api-list)
- [Enable metered APIs and services in Microsoft Graph](/graph/metered-api-setup)
- [Payment models and licensing requirements for Microsoft Teams APIs](teams-licenses.md)

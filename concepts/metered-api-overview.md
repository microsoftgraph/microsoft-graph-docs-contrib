---
title: "Overview of metered Microsoft 365 APIs in Microsoft Graph"
description: "Get an introduction to metered Microsoft 365 APIs and services in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Overview of metered Microsoft 365 APIs in Microsoft Graph

Microsoft Graph includes APIs that are both available at no additional cost with user subscription licenses as well as APIs and services that are metered. Metered Microsoft 365 APIs and services incur costs based on usage. The costs might be incurred per API call made, per object returned in an API call, or through other measures.

Whether metered or not, APIs in Microsoft Graph are provided based on the following two principles.
- Customer data ownership: Customer data belongs to the customer. Learn more about how [Microsoft categorizes customer data](https://www.microsoft.com/trust-center/privacy/customer-data-definitions). 
- Reasonable access: The service provides access to customer content, within [defined limits](throttling-limits.md). 

Metering some APIs helps to ensure the health of the current and future Microsoft Graph ecosystem by balancing platform access and cost. Microsoft will not charge for generally available APIs that are currently free without following the [breaking change policy](versioning-and-support.md).

## Categories of APIs
There are three categories of use cases represented in Microsoft Graph APIs.

### Standard APIs
Most Microsoft Graph APIs are standard APIs. These APIs perform standard operations (create, read, update, delete) on customer content and administrative endpoints. Reasonable access limits for these APIs are defined based on documented usage thresholds. This helps to ensure a positive customer experience and encourages efficient API usage patterns. Access to standard APIs within the defined usage thresholds is available as part of the user license without additional costs.

### High-capacity APIs
High-capacity APIs ensure that customers and developers have access to data at scale. This category includes purpose-built, bulk export or import endpoints and Microsoft Graph services. These APIs may be metered and incur additional costs beyond user subscription licenses.

### Advanced APIs
Advanced APIs provide access to enriched or aggregated data, or advanced functionality that extends from Microsoft 365, [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel.md) is an example of an advanced API. These APIs may be metered and incur additional costs beyond user subscription licenses.

## Access metered APIs
To access metered Microsoft 365 APIs and services, an application must be associated with an active Microsoft Azure subscription. For details about how to associate an app to a subscription, see [Enable metered Microsoft 365 APIs and services](/graph/metered-api-setup).

## Considerations for using metered APIs

Keep the following considerations in mind when you use metered Microsoft 365 APIs and services:

- Metered APIs can return errors related to your subscription status in addition to other common errors. For details about Microsoft Graph errors, see [Microsoft Graph errors and resource types](errors.md).
- Metered APIs are billed according to API usage. Be sure to understand the metering unit so that you can estimate the costs associated with a particular API.

## See also

- [Metered Microsoft 365 APIs and services](/graph/metered-api-list)
- [Enable metered Microsoft 365 APIs and services](/graph/metered-api-setup)

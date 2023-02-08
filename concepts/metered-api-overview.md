---
title: "Metered Microsoft 365 APIs and services on Microsoft Graph"
description: "Provides an overview of metered Microsoft 365 APIs and services on Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Metered APIs in Microsoft Graph

Microsoft Graph includes APIs that are both available at no additional cost with user subscription licenses as well as APIs and services that are metered. Metered Microsoft 365 APIs and services incur costs based on usage, this may be per API call made, per object returned in an API call, or other measurable mechanisms.

## Guiding principles
These are the principles that guide our approach to Microsoft 365 API endpoints on Microsoft Graph.
- Customer Data ownership: Customer data belongs to the customer. Learn more about how [Microsoft categorizes customer data](https://www.microsoft.com/trust-center/privacy/customer-data-definitions). 
Reasonable access: We include access to Customer content, within [defined limits](throttling-limits.md), in our user license, and provide developer experiences and documentation focused on cohesion, simplicity, and transparency – around reasonable usage, throttling limits, and pricing. 
- Trust: We understand the importance of the trust our developers, partners, and customers place in us. A change to a generally available API would always follow our [breaking change policy](versioning-and-support.md). 
Ecosystem health: We strive for a balance between platform access and cost to ensure the health of our current and future ecosystem. 

## Categories of services 
With the working principles in place, there are three categories of use cases represented in Microsoft Graph. Note that these categories are useful for illustration but don’t reflect any formal naming or branding. 

### Standard 
This category includes the broad set of APIs used to perform standard operations (e.g. create, read, update, delete) on customer content and administrative endpoints for service configuration. We continue to define and update the limits of reasonable access based on documented usage thresholds to protect our customer experience and encourage good API usage patterns. Access to this category of APIs within the defined limits is included as part of the user license without any additional costs. This is the default category that most endpoints will exist in.

### High-Capacity APIs
We want to ensure that our customers and developers have access to data at scale. This category includes purpose-built, bulk-export services like [Teams Export APIs](/microsoftteams/export-teams-content#license-requirements-for-teams-export-apis) and future bulk export or import endpoints and Microsoft Graph services.

### Advanced APIs
The third category represents access to data that’s enriched or aggregated by Microsoft or offers access to advanced functionality extended directly from Microsoft 365 infrastructure, [Azure Communication Services](https://azure.microsoft.com/products/communication-services/#overview) is an example of this.

## Accessing metered APIs
In order to access metered Microsoft 365 APIs and services an application must be associated with an active Microsoft Azure Subscription. For instructions on associating an app to a subscription please see [Onboard to Microsoft Graph Metered APIs](metered-api-onboarding.md).

## Developer considerations when using metered APIs
- When building an app that leverages metered Microsoft 365 APIs and services it is important to remember that the APIs may return errors related to your subscription status in addition to other more common errors. See [Microsoft Graph errors and resource types](errors.md) for more information on error types in Microsoft Graph.
- Metered APIs are billed according to how much usage occurs on the API. Developers should understand the metering unit to understand how to estimate costs associated with a particular API.

## Next steps
- Explore the [list of metered Microsoft 365 APIs and services](metered-api-list.md)
- [Onboard to metered Microsoft 365 APIs and services](metered-api-onboarding.md)
---
title: "Microsoft Graph usage quotas (preview)"
description: "Learn about usage quotas for Microsoft Graph APIs."
ms.localizationpriority: high
author: Jeremyke
ms.author: jeremyke
ms.subservice: non-product-specific
ms.topic: overview
ms.date: 10/08/2025
#Customer intent: As a developer integrating with Microsoft Graph, or a tenant administrator managing applications in my tenant, I want to understand tenant level usage quotas applied in Microsoft Graph.
---

# Microsoft Graph API usage quotas (preview)

> [!IMPORTANT]
> This documentation is preliminary and subject to change as capabilities are released.

Some areas of Microsoft Graph enforce usage quotas. Usage quotas apply at the tenant level and are based on the number of user licenses active for the relevant Microsoft Graph functionality. By default, an individual application can use up to 20% of the tenant's total quota before being throttled. This application quota prevents any single application from consuming all of the tenant's resources unexpectedly.

## Usage quota details

### Time window

Usage quotas are calculated based on a 24-hour window of usage. When the quota is consumed, Microsoft Graph returns `HTTP 429` error codes for subsequent requests. 1/24th of the quota will be available and API requests will be unblocked after no more than 1 hour.

### Service areas

Microsoft Graph has a large surface area covering many different APIs, with different calling patterns for different Microsoft services. To offer quotas relevant to such disparate APIs, APIs are grouped into service areas. Service areas represent sets common functionality delivered by Microsoft Graph, mostly aligned to product offerings. The following service areas are currently available:

- Microsoft Exchange
- Microsoft Teams Calling
- Microsoft Teams Messaging
- Microsoft Teams Presence

### Quota calculations

For each service area, quota is calculated based on the number of qualifying user licenses associated with that area. Qualifying user licenses are multiplied by a scaling factor, which determines the number of API calls allowed per 24-hour period. The quota is calculated frequently; as more licenses are purchased or licenses become inactive, the available quota adjusts accordingly. Changes in quota take effect and are reflected in reporting data within 48 hours.

#### Qualifying licenses

Qualifying licenses are the licenses that enable the associated functionality for each service area. Quota amounts are basic license counts only; add-ons or higher tier licenses don't add more capacity.

#### Service area quota values

The following table lists the quota values for each service area.

| Service Area  | API Requests per user license |
| :------------ | :------------------------ |
| Microsoft Exchange | 2000 API requests / day |
| Microsoft Teams Calling | 30 API requests / day |
| Microsoft Teams Messaging | 300 API requests / day |
| Microsoft Teams Presence | 2000 API requests / day |

## Managing quota for a tenant

Users with the Global Reader or a higher privileged admin role can utilize the Microsoft Graph [usage report API](/graph/api/reportroot-getapiusage) to see how the tenant's quota is being used. The usage report API provides visibility into both tenant-level and individual application usage.

## Going beyond your quota

Microsoft 365 APIs Extended Usage allows you to exceed the daily usage quota by paying for the costs associated with more API usage. You can enable Microsoft 365 APIs Extended Usage in the Microsoft 365 admin center.
The following table lists the current charges for each service area.

| Service Area | Cost per 1,000 Requests |
| :------------ | :------------------------ |
| Microsoft Exchange | $0.002 (USD) |
| Microsoft Teams Calling | $0.05 (USD) |
| Microsoft Teams Messaging | $0.01 (USD) |
| Microsoft Teams Presence | $0.01 (USD) |

## Default safe application quota

[!IMPORTANT]
> This feature is currently under development. This documentation is included here so that the full view of how the feature will work long term is visible. Feedback is welcome on the preliminary documentation.

By default, an application can consume up to 20% of the tenant's total quota. This default protects the tenant from an application consuming all of a tenant's resources unexpectedly. An application can be excluded from this default in order to allow it to use up to the full tenant quota. Because excluding too many applications at once might cause contention for the tenant's resources, it's important to only exclude applications that you know need the extra capacity to meet their goals.

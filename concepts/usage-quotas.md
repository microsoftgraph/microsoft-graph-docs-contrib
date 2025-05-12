---
title: "Microsoft Graph usage quotas"
description: "Learn about usage quotas on Microsoft Graph."
ms.localizationpriority: high
author: Jeremyke
ms.author: jeremyke
ms.subservice: non-product-specific
ms.topic: overview
ms.date: 05/14/2025
#Customer intent: As a developer integrating with Microsoft Graph, or a tenant administrator managing applications in my tenant, I want to understand tenant level usage quotas applied in Microsoft Graph.
---

# Microsoft Graph API usage quotas (preview)

## Important note

This documentation is preliminary and subject to change as more capabilities are released.

Some areas of Microsoft Graph enforce usage quotas. Usage quotas apply at the tenant level and are based on the number of user licenses active for the relevant Microsoft Graph functionality. By default, an individual application can use up to 20% of the tenant's total quota before being throttled. This application quota prevents any single application from consuming all of the tenant's resources unexpectedly.

## Usage quota details

### Time Window

Usage quotas are calculated based on a 24-hour window of usage. Once the quota is consumed, Microsoft Graph returns HTTP 429 error codes for subsequent requests. 1/24th of the quota will be available and API requests will be unblocked after no more than 1 hour.

### Service Areas

Microsoft Graph has a large surface area covering many different APIs, with different calling patterns, for different Microsoft services. To offer quotas relevant to such disparate APIs, we created groups of APIs we call service areas. Service areas represent sections of common functionality delivered by Microsoft Graph, mostly aligned to product offerings. Our initial service areas are:

- Microsoft Exchange
- Microsoft Teams Calling
- Microsoft Teams Messaging
- Microsoft Teams Presence

More service areas will be added over time.

### Quota Calculations

For each service area, quota is calculated based on the number of qualifying user licenses associated with that area. Qualifying user licenses are multiplied by a scaling factor, which determines the number of API calls allowed per 24-hour period. The quota is calculated frequently - as more licenses are purchased or licenses become inactive the available quota adjusts accordingly. Changes in quota take effect and are reflected in reporting data within 48 hours.

#### Qualifying Licenses

Qualifying licenses for each service area are licenses that enable the associated functionality of the area. Quota amounts are basic license counts only, add-ons or higher tier licenses don't add more capacity.

#### Service area quota values

| Service Area  | API Requests per user license |
| :------------ | :------------------------ |
| Microsoft Exchange | 2000 API requests / day |
| Microsoft Teams Calling | 30 API requests / day |
| Microsoft Teams Messaging | 300 API requests / day |
| Microsoft Teams Presence | 2000 API requests / day |

### Default safe application quota

By default an application can consume up to 20% of the tenant's total quota. This default protects the tenant from an application consuming all of a tenant's resources unexpectedly. An application can be excluded from this default in order to allow it to use up to the full tenant quota. Excluding too many applications at once might cause contention for the tenant's resources, so it's important to only exclude applications that you know need the extra capacity to meet their goals.

## Managing quota for a tenant

Global Administrators and users with the Global Reader role can utilize the Microsoft Graph usage [report API](/graph/api/reportroot-getapiusage) to see how the tenant's quota is being used. The usage report API provides visibility into both tenant level usage and individual application usage.

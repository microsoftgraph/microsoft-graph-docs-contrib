---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For a complete list of API updates, see the [December](changelog.md#december-2019) and [November](changelog.md#november-2019) sections of the API changelog. 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## February 2020: New and generally available

### Security
For improved security subscribing to [change notifications of user data](https://docs.microsoft.com/en-us/graph/webhooks), servers of notification endpoints must support Transport Layer Security (TLS) 1.2 or higher. The new requirement is rolled out in stages starting February 15 2020. By May 15, 2020, all notification endpoints must meet the new requirement. [Find out the stages of the rollout](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) and if necessary, use the new **latestSupportedTlsVersion** property accordingly to avoid subscription failures.

## February 2020: New in preview


## January 2020: New and generally available

### Security
As part of customer alert management, use the [update alert](/graph/api/alert-update?view=graph-rest-1.0) method and update the **comments** field as either `Closed in IPC` or `Closed in MCAS`.

## January 2020: New in preview



## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).


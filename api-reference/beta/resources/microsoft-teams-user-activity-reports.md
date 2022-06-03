---
title: "Microsoft Teams user activity reports"
description: "Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Teams user activity reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Teams user activity reports to get insights into the Microsoft Teams user activity in your organization.

## Methods

| Method                                                       | Return Type | Description                                                  |
| :----------------------------------------------------------- | :---------- | :----------------------------------------------------------- |
| [Get user detail](../api/reportroot-getteamsuseractivityuserdetail.md) | Stream      | Get details about Microsoft Teams user activity by user.     |
| [Get activity counts](../api/reportroot-getteamsuseractivitycounts.md) | Stream      | Get the number of Microsoft Teams activities by activity type. The activities are performed by Microsoft Teams licensed users. |
| [Get activity total counts](../api/reportroot-getteamsuseractivitytotalcounts.md) | Stream      | Get the number of Microsoft Teams activities by activity type. The activities are performed by Microsoft Teams licensed or non-licensed users. |
| [Get user counts](../api/reportroot-getteamsuseractivityusercounts.md) | Stream      | Get the number of Microsoft Teams licensed users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get total user counts](../api/reportroot-getteamsuseractivitytotalusercounts.md) | Stream      | Get the number of Microsoft Teams licensed or non-licensed users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |
| [Get distribution user counts](../api/reportroot-getteamsuseractivitydistributionusercounts.md) | Stream      | Get the number of Microsoft Teams licensed users by activity type over the selected period. The activity types are number of teams chat messages, private chat messages, calls, and meetings. |
| [Get distribution total user counts](../api/reportroot-getteamsuseractivitydistributiontotalusercounts.md) | Stream      | Get the number of Microsoft Teams licensed or non-licensed users by activity type over the selected period. The activity types are number of teams chat messages, private chat messages, calls, and meetings. |
| [Get total distribution activity counts](../api/reportroot-getteamsuseractivitytotaldistributioncounts.md) | Stream      | Get the number of Microsoft Teams user activities over the selected period. The activity types are team chat messages, private chat messages, calls, meetings, meetings organized, meetings attended, audio duration, video duration, screen share duration, post messages, and reply messages. |


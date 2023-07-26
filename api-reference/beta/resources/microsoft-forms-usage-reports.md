---
title: "Microsoft forms usage reports"
description: "Use the Microsoft forms usage reports to get insights into the usage of Microsoft Forms in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Forms usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft forms usage reports to get insights into the usage of Microsoft Forms in your organization.

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | --------------- | ---------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getformsuseractivityuserdetail.md ) | Stream          | Stream | Get the detailed forms usage per user.  |
| [Get user counts](../api/reportroot-getformsuseractivityusercounts.md ) | Stream          | Stream |Get the trend in the number of active users for each user type. |
| [Get activity counts](../api/reportroot-getformsuseractivitycounts.md) | Stream          | Stream | Get the number of activities count by activity type over a selected period. |
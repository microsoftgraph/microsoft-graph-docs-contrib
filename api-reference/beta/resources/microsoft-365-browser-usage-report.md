---
title: "Microsoft 365 browser usage reports"
description: "Use the Microsoft 365 browser usage reports to get insights into the usage of browser (Microsoft Edge) in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft 365 browser usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft 365 browser usage reports to get insights into the usage of browser (Microsoft Edge) in your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 Reports in the admin center - Microsoft browser usage](/microsoft-365/admin/activity-reports/browser-usage-report).

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | --------------- | ---------------------------------------- | ---------------------------------------- |
| [Get user detail](../api/reportroot-getbrowseruserdetail.md ) | Stream          | Stream | Get the detailed browser usage per user.  |
| [Get user counts](../api/reportroot-getbrowserusercounts.md ) | Stream          | Stream |Get the trend in the number of active users for each browser. |
| [Get distribution user counts](../api/reportroot-getbrowserdistributionusercounts.md) | Stream          | Stream | Get the number of users by browser over a selected period. |

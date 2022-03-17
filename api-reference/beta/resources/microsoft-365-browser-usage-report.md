---
title: "Microsoft 365 browser usage reports"
description: "Use the Microsoft 365 browser usage reports to get insights into the usage of browsers (Microsoft Edge, Microsoft Edge Legacy, and Internet Explorer) in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft browser usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft 365 browser usage reports to get insights into the usage of browsers (Microsoft Edge, Microsoft Edge Legacy, and Internet Explorer) in your organization.

## Reports

| Function                                 | CSV return type | JSON return type                         | Description                              |
| :--------------------------------------- | --------------- | ---------------------------------------- | ---------------------------------------- |
| [Get browser user counts](../api/reportroot-getbrowserusercounts.md ) | Stream          | Edm.Stream |Get the trend in the number of active users for each browser. |
| [Get browser disctribution counts](../api//reportroot-getbrowserdistributionusercounts.md) | Edm.Stream          | Stream | et the number of users by browser over the selected period. |
| [Get browser detail](../api/reportroot-getbrowseruserdetail.md ) | Stream          | Edm.Stream | Get the detailed browser useage per user.  |

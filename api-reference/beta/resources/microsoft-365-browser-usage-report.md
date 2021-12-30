---
title: "Microsoft 365 Browser usage reports"
description: "Use the Microsoft 365 Browser usage reports to get insights into the usage of Browsers in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft Browser usage reports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft Browser usage reports to get insights into the Browser usage in your organization.

## Methods

| Method                                                                        | Return Type                                    | Description                                                  |
| :---------------------------------------------------------------------------- | :--------------------------------------------- | :----------------------------------------------------------- |
| [Get browser distribution user counts](../api/reportroot-getbrowserdistributionusercounts.md)         | Edm.Stream | Get the number of users by browser over the selected period. |
| [Get browser user counts](../api/reportroot-getbrowserusercounts.md)                | Edm.Stream | Get the trend in the number of active users for each browser |
| [Get browser user detail](../api/reportroot-getbrowseruserdetail.md)            | Edm.Stream | Get the detailed browser useage per user.                    |



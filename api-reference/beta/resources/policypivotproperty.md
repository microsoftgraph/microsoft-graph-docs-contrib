---
title: "policyPivotProperty enum type"
toc.title: "policyPivotProperty enum type (preview)"
description: "Specifies how to aggregate or pivot the computed protection scopes (by Activity or Location)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# policyPivotProperty enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies how to aggregate or pivot the computed protection scopes (by Activity or Location). 

The property on which the results of a protection scope computation (using the `compute` action) should be aggregated or "pivoted". Affects how the resulting [policyUserScope](../resources/policyuserscope.md) or [policyTenantScope](../resources/policytenantscope.md) objects are grouped.

## Members

| Member             | Value | Description                                                                      |
| :----------------- | :---- | :------------------------------------------------------------------------------- |
| none               | 0     | No specific pivoting; results might be returned individually per policy match. |
| activity           | 1     | Group the results based on the user activity type (`uploadText`, `downloadFile`, etc.). |
| location           | 2     | Group the results based on the location (`policyLocationDomain`, `policyLocationUrl`). |
| unknownFutureValue | 3     | Don't use.                                |

## JSON representation

The following JSON representation shows the enum type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyPivotProperty"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyPivotProperty",
  "members": [
    { "name": "none", "value": 0 },
    { "name": "activity", "value": 1 },
    { "name": "location", "value": 2 },
    { "name": "unknownFutureValue", "value": 3 }
 ]
}
```

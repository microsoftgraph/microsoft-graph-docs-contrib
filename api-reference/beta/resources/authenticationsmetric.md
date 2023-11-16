---
title: "authenticationsMetric resource type"
description: "Represents insights on authentications for apps registered in your tenant configured for Microsoft Entra ID for customers, over a specificed period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationsMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights on authentications for apps registered in your tenant configured for Microsoft Entra ID for customers, over a specificed period.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily authentications](../api/dailyuserinsightmetricsroot-list-authentications.md)|[authentication](../resources/authenticationsmetric.md) collection|Get a list of the daily [authentications](../resources/authenticationsmetric.md) objects and their properties.|
|[List monthly authentications](../api/monthlyuserinsightmetricsroot-list-authentications.md)|[authentications](../resources/authenticationsmetric.md) collection|Get a list of the monthly [authentications](../resources/authenticationsmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| appid | String | The appID. Supports `$filter` (`eq`). |
| attemptsCount | Int64 | Number of authentication requests made. Supports `$filter` (`eq`). |
| country | String | The location where the customers authenticated from. Supports `$filter` (`eq`). |
| factDate | Date | The date of the user insight. |
| id | String | Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
| os | String | The platform for the device that the customers used. Supports `$filter` (`eq`). |
| successCount | Int64 | Number of successful authentication requests. Supports `$filter` (`eq`). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationsMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationsMetric",
  "appid": "String",
  "attemptsCount": "Int64",
  "country": "String",
  "factDate": "String (date)",
  "id": "String (identifier)",
  "os": "String",
  "successCount": "Int64"
}
```


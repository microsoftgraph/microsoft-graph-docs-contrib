---
title: "authorizationSystemInfo resource type"
description: "Represents the authorization system's identifying information."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authorizationSystemInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Represents the authorization system's identifying information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemType|authorizationSystemType|The type of authorization system.The possible values are: `azure`, `gcp`, `aws`, `unknownFutureValue`.|
|displayName|String|Display name for the authorization system.|
|id|String|Unique identifier for the authorization system.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationSystemInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemInfo",
  "id": "String",
  "displayName": "String",
  "authorizationSystemType": "String"
}
```



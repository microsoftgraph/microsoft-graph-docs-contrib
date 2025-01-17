---
title: "connectionInfo resource type"
description: "The connectionInfo object defines the connection information that is used to communicate with a resource."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# connectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The connectionInfo object defines the resource locator that is used to communicate with a resource in Microsoft Entra Entitlement Management.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|The endpoint that is used by Entitlement Management to communicate with the access package resource.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectionInfo",
  "url": "String"
}
```

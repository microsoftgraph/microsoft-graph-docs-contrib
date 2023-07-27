---
title: "workbookEmailIdentity resource type"
description: "Represents an identity type"
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookEmailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity type

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String| Display name of the user|
|email|String|Email address of the user|
|id|String|Unique identifier of the user|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workbookEmailIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookEmailIdentity",
  "displayName": "String",
  "email": "String",
  "id": "String"
}
```


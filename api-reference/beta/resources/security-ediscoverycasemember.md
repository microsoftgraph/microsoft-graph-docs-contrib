---
title: "ediscoveryCaseMember resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/16/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryCaseMember resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycasemember-list.md)|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) collection|Get a list of the ediscoveryCaseMember objects and their properties.|
|[Get](../api/security-ediscoverycasemember-get.md)|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md)|Read the properties and relationships of a ediscoveryCaseMember object.|
|[Update](../api/security-ediscoverycasemember-update.md)|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md)|Update the properties of a ediscoveryCaseMember object.|
|[Delete](../api/security-ediscoverycasemember-delete.md)|None|Delete a ediscoveryCaseMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|recipientType|microsoft.graph.security.recipientType|**TODO: Add Description**.The possible values are: `user`, `roleGroup`, `unknownFutureValue`.|
|smtpAddress|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCaseMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseMember",
  "id": "String (identifier)",
  "recipientType": "String",
  "displayName": "String",
  "smtpAddress": "String"
}
```


---
title: "managedIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# managedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedResourceId|String|**TODO: Add Description**|
|federatedTokenId|String|**TODO: Add Description**|
|federatedTokenIssuer|String|**TODO: Add Description**|
|msiType|msiType|**TODO: Add Description**.The possible values are: `none`, `userAssigned`, `systemAssigned`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedIdentity",
  "msiType": "String",
  "associatedResourceId": "String",
  "federatedTokenId": "String",
  "federatedTokenIssuer": "String"
}
```


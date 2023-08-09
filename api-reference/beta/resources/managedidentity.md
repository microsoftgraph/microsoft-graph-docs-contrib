---
title: "managedIdentity resource type"
description: "Represents details of the managed identity that was used to sign into the target resource."
author: "phoebeweiser"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# managedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of the managed identity that was used to sign into the target resource.

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


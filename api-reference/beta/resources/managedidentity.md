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
|associatedResourceId|String|The ARM resource ID of the Azure resource associated with the managed identity used for sign in.|
|msiType|msiType|The possible values are: `none`, `userAssigned`, `systemAssigned`, `unknownFutureValue`.|

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
  "associatedResourceId": "String"
}
```

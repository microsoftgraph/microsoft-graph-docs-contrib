---
title: "managedIdentity resource type"
description: "Managed Identity resource type has 2 properties for managed identity type and associated resource Id."
author: "phoebeweiser"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# managedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedResourceId|String|The ARM resource ID of the Azure resource associated with the managed identity used for signin.|
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


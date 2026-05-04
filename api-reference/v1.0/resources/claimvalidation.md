---
title: "claimValidation resource type"
description: "Defines validation settings for claim processing in verified ID profiles."
author: "tilarso"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# claimValidation resource type

Namespace: microsoft.graph

Defines validation settings for claim processing in Verified ID profiles through the [verifiedIdProfileConfiguration](../resources/verifiedidprofileconfiguration.md) object.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|The identifier of a custom extension for claim validation.|
|isEnabled|Boolean|Indicates whether claim validation is enabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimValidation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.claimValidation",
  "isEnabled": "Boolean",
  "customExtensionId": "String"
}
```

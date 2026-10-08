---
title: "faceCheckConfiguration resource type"
description: "Configuration for Face Check requirements in a Verified ID Profile"
author: "tilarso"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# faceCheckConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration for Face Check requirements in a Verified ID Profile

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether Face Check is required. Currently must be `true`.|
|sourcePhotoClaimName|String|The source claim name for the photo used to validate Face Check. Currently must be `portrait`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.faceCheckConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.faceCheckConfiguration",
  "isEnabled": "Boolean",
  "sourcePhotoClaimName": "String"
}
```


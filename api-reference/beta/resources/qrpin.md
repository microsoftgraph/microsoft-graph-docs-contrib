---
title: "qrPin resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# qrPin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/qrpin-get.md)|[qrPin](../resources/qrpin.md)|Read the properties and relationships of a qrPin object.|
|[updatePin](../api/qrpin-updatepin.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|forceChangePinNextSignIn|Boolean|**TODO: Add Description**|
|updatedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.qrPin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qrPin",
  "code": "String",
  "forceChangePinNextSignIn": "Boolean",
  "createdDateTime": "String (timestamp)",
  "updatedDateTime": "String (timestamp)"
}
```


---
title: "userConfiguration resource type"
description: "Represents a user configuration object."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: resourcePageType
---

# userConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user configuration object. User configuration objects are also known as Folder Associated Items (FAIs). It's an item associated to a folder. Each user configuration object within a folder must have a unique key.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/mailsearchfolder-post-userconfigurations.md)|[userConfiguration](../resources/userconfiguration.md)|Create a new userConfiguration object.|
|[Get](../api/userconfiguration-get.md)|[userConfiguration](../resources/userconfiguration.md)|Read the properties and relationships of [userConfiguration](../resources/userconfiguration.md) object.|
|[Update](../api/userconfiguration-update.md)|[userConfiguration](../resources/userconfiguration.md)|Update the properties of a userConfiguration object.|
|[Delete](../api/mailsearchfolder-delete-userconfigurations.md)|None|Delete a userConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|binaryData|Binary|Arbitrary binary data.|
|id|String|Unique key of this object. Inherits from [entity](../resources/entity.md)|
|structuredData|[structuredDataEntry](../resources/structureddataentry.md) collection|Key-value pairs of supported data.|
|xmlData|Binary|Binary data. Suggested for storing serialized XML.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userConfiguration",
  "id": "String (identifier)",
  "binaryData": "Binary",
  "xmlData": "Binary",
  "structuredData": [
    {
      "@odata.type": "microsoft.graph.structuredDataEntry"
    }
  ]
}
```

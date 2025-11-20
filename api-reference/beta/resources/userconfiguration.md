---
title: "userConfiguration resource type"
description: "Represents a user configuration object."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
toc.title: User configuration (preview)
---

# userConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user configuration object. User configuration objects are also known as folder associated items (FAIs). It's an item associated to a folder. Each user configuration object within a folder must have a unique key.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/mailsearchfolder-post-userconfigurations.md)|[userConfiguration](../resources/userconfiguration.md)|Create a new [userConfiguration](../resources/userconfiguration.md) object.|
|[Get](../api/userconfiguration-get.md)|[userConfiguration](../resources/userconfiguration.md)|Read the properties and relationships of a [userConfiguration](../resources/userconfiguration.md) object.|
|[Update](../api/userconfiguration-update.md)|[userConfiguration](../resources/userconfiguration.md)|Update the properties of a [userConfiguration](../resources/userconfiguration.md) object.|
|[Delete](../api/userconfiguration-delete.md)|None|Delete a [userConfiguration](../resources/userconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|binaryData|Binary|Arbitrary binary data.|
|id|String|The unique identifier for the **userConfiguration** object. Inherited from [entity](../resources/entity.md).|
|structuredData|[structuredDataEntry](../resources/structureddataentry.md) collection|Key-value pairs of supported data types.|
|xmlData|Binary|Binary data for storing serialized XML.|

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
  "binaryData": "String (Binary)",
  "id": "String (identifier)",
  "structuredData": [{"@odata.type": "microsoft.graph.structuredDataEntry"}],
  "xmlData": "String (Binary)"
}
```

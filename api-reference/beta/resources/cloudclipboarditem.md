---
title: "cloudClipboardItem resource type"
description: "Represents the information of cloudClipboardItem object."
author: "yuechen7"
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: resourcePageType
---

# cloudClipboardItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [cloudClipboardItem](../resources/cloudclipboarditem.md) object. Cloud clipboard is a feature that allows a user to copy and paste content across devices and platforms. It also provides users with a history of the items they recently copied across all their apps and devices. 

Currently, the feature is supported between Windows devices and [swiftKey app](https://support.microsoft.com/topic/how-to-use-microsoft-swiftkey-keyboard-to-copy-and-paste-text-between-swiftkey-and-windows-85c8ca64-7091-477f-91d1-99c3b1f75138) on Android devices.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudClipboardItems](../api/cloudclipboardroot-list-items.md)|Collection of [cloudClipboardItem](../resources/cloudclipboarditem.md)|Retrieve a list of [cloudClipboardItem](../resources/cloudclipboarditem.md) objects of a given user.|
|[Get cloudClipboardItem](../api/cloudclipboarditem-get.md)|[cloudClipboardItem](../resources/cloudclipboarditem.md)|Read the properties and relationships of a [cloudClipboardItem](../resources/cloudclipboarditem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Set by the server. DateTime in UTC when the object was created on the server.|
|expirationDateTime|DateTimeOffset|Set by the server. DateTime in UTC when the object expires and after that the object is no longer available. The default and also maximum TTL is **12 hours** after the creation, but it might change for performance optimization.  |
|id|Guid|The unique identifier of the object.|
|lastModifiedDateTime|DateTimeOffset|Set by the server if not provided in the client's request. DateTime in UTC when the object was modified by the client.|
|payloads|[cloudClipboardItemPayload](../resources/cloudclipboarditempayload.md) collection| A [cloudClipboardItem](../resources/cloudclipboarditem.md) can have multiple [cloudClipboardItemPayload](../resources/cloudclipboarditempayload.md) objects in the `payloads`. A window can place more than one clipboard object on the clipboard. Each one represents the same information in a different clipboard format.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudClipboardItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudClipboardItem",
  "id": "String (identifier)",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.cloudClipboardItemPayload",
      "content": "String",
      "formatName": "String"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)"
}
```


---
title: "serviceAnnouncementAttachment resource type"
description: "Represents an attachment associated with a serviceUpdateMessage object."
author: "payiAzure"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# serviceAnnouncementAttachment resource type

Namespace: microsoft.graph

Represents an attachment associated with a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/serviceannouncementattachment-get.md)|[serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md)|Read the properties and relationships of a [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The attachment content.|
|contentType|String|The content type of the attachment.|
|id|String|The attachment ID. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified.|
|name|String|The attachment name.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceAnnouncementAttachment",
  "baseType": "microsoft.graph.attachment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceAnnouncementAttachment",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "contentType": "String",
  "size": "Integer",
  "isInline": "Boolean",
  "content": "Stream"
}
```

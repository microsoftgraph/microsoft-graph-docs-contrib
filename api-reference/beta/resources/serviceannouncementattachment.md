---
title: "serviceAnnouncementAttachment resource type"
description: "Represents an attachment of a serviceUpdateMessage"
author: "payiAzure"
ms.localizationpriority: medium
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceAnnouncementAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attachment of a serviceUpdateMessage(../resources/serviceUpdateMessage.md)

Inherits from [attachment](../resources/attachment.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get serviceAnnouncementAttachment](../api/serviceannouncementattachment-get.md)|[serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md)|Read the properties and relationships of a [serviceAnnouncementAttachment](../resources/serviceannouncementattachment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The attachment content.|
|contentType|String|The content type of the attachment. Inherited from [attachment](../resources/attachment.md).|
|id|String|The attachment ID. Inherited from [entity](../resources/entity.md).|
|isInline|Boolean|Set to true if this is an inline attachment. Inherited from [attachment](../resources/attachment.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified. Inherited from [attachment](../resources/attachment.md).|
|name|String|The attachment name. Inherited from [attachment](../resources/attachment.md).|
|size|Int32|The size in bytes of the attachment. Inherited from [attachment](../resources/attachment.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
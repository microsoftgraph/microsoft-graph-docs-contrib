---
title: "serviceUpdateMessage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# serviceUpdateMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceUpdateMessages](../api/serviceupdatemessage-list.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md) collection|Get a list of the [serviceUpdateMessage](../resources/serviceupdatemessage.md) objects and their properties.|
|[Create serviceUpdateMessage](../api/serviceupdatemessage-create.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md)|Create a new [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.|
|[Get serviceUpdateMessage](../api/serviceupdatemessage-get.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md)|Read the properties and relationships of a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.|
|[Update serviceUpdateMessage](../api/serviceupdatemessage-update.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md)|Update the properties of a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.|
|[Delete serviceUpdateMessage](../api/serviceupdatemessage-delete.md)|None|Deletes a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionRequiredByDateTime|DateTimeOffset|**TODO: Add Description**|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|category|serviceUpdateCategory|**TODO: Add Description**. The possible values are: `preventOrFixIssue`, `planForChange`, `stayInformed`, `unknownFutureValue`.|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|endDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|expiryDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isMajorChange|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|services|String collection|**TODO: Add Description**|
|severity|serviceUpdateSeverity|**TODO: Add Description**. The possible values are: `normal`, `high`, `critical`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|tags|String collection|**TODO: Add Description**|
|title|String|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|viewPoint|[serviceUpdateMessageViewpoint](../resources/serviceupdatemessageviewpoint.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceUpdateMessage",
  "baseType": "microsoft.graph.serviceAnnouncementBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceUpdateMessage",
  "id": "String (identifier)",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "actionRequiredByDateTime": "String (timestamp)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "category": "String",
  "expiryDateTime": "String (timestamp)",
  "isMajorChange": "Boolean",
  "services": [
    "String"
  ],
  "severity": "String",
  "tags": [
    "String"
  ],
  "viewPoint": {
    "@odata.type": "microsoft.graph.serviceUpdateMessageViewpoint"
  }
}
```


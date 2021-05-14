---
title: "serviceUpdateMessage resource type"
description: "An entity resource type inherited from base type [serviceAnnouncementBase](../resources/serviceannouncementbase.md) to represent announcement, such as major update, for a service. e.g. Windows service has a new feature published."
author: "payiAzure"
localization_priority: Normal
ms.prod: "M365ServiceCommsPlatform"
doc_type: resourcePageType
---

# serviceUpdateMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An entity resource type inherited from base type [serviceAnnouncementBase](../resources/serviceannouncementbase.md) to represent announcement, such as major update, for a service. e.g. Windows service has a new feature published.

Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceUpdateMessages](../api/serviceupdatemessage-list.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md) collection|Gets all SHD service messages for the tenant. The operation returnsa list of the [serviceUpdateMessage](../resources/serviceupdatemessage.md) objects and their properties.|
|[Get serviceUpdateMessage](../api/serviceupdatemessage-get.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md)|Gets a specified SHD service message for the tenant. The operation returns a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object.|
|[markRead](../api/serviceupdatemessage-markread.md)|Boolean|This POST action is to mark the status of a list of service update messages as read for the login user.|
|[markUnread](../api/serviceupdatemessage-markunread.md)|Boolean|This POST action is to mark the status of a list of service update messages as unread for the login user.|
|[archive](../api/serviceupdatemessage-archive.md)|Boolean|This POST action is to mark the status of a list of service update messages as archived for the login user.|
|[unarchive](../api/serviceupdatemessage-unarchive.md)|Boolean|This POST action is to mark the status of a list of service update messages as unarchived for the login user.|
|[favorite](../api/serviceupdatemessage-favorite.md)|Boolean|This POST action is to mark the status of a list of service update messages as favorited for the login user.|
|[unfavorite](../api/serviceupdatemessage-unfavorite.md)|Boolean|This POST action is to mark the status of a list of service update messages as unfavorited for the login user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionRequiredByDateTime|DateTimeOffset|The time by when the required action needs to be done for the service message|
|body|[itemBody](../resources/itembody.md)|The content type and content of the service message body|
|category|serviceUpdateCategory|The service message category. Possible values are: `PreventOrFixIssue`, `PlanForChange`, `StayInformed`, `unknownFutureValue`.|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|More details about service message that don't need to be filter based properties are put in this key value pair collection. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|endDateTime|DateTimeOffset|The end time of the service message Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|expiryDateTime|DateTimeOffset|The expiry time of service message|
|id|String|The id of the service message. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|isMajorChange|Boolean|The value indicating whether the message describes a major update for the service|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the service message. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|services|String collection|The affected services by the service message|
|severity|serviceUpdateSeverity|The severity of the service message. Possible values are: `Normal`, `High`, `Critical`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|The start time of the service message Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|tags|String collection|A collection of tags for the service message|
|title|String|The title of the service message Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|viewPoint|[serviceUpdateMessageViewpoint](../resources/serviceupdatemessageviewpoint.md)|The view point to show user metadata of the service message|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceUpdateMessage",
  "baseType": "m365ServiceHealth.readServices.commercialWebService.models.serviceAnnouncementBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceUpdateMessage",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "id": "String (identifier)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "category": "String",
  "severity": "String",
  "tags": [
    "String"
  ],
  "isMajorChange": "Boolean",
  "actionRequiredByDateTime": "String (timestamp)",
  "services": [
    "String"
  ],
  "viewPoint": {
    "@odata.type": "microsoft.graph.serviceUpdateMessageViewpoint"
  },
  "expiryDateTime": "String (timestamp)"
}
```


---
title: "serviceUpdateMessage resource type"
description: "Represent the announcements of changes in a service."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceUpdateMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the announcements of changes in a service.

This resource type serves to important publications such as major updates in a product. For example, the publication of a new Windows feature.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceUpdateMessages](../api/serviceupdatemessage-list.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md) collection|Retrieve a list of the [serviceUpdateMessage](../resources/serviceupdatemessage.md) objects and their properties. This operation retrieves all service update messages that exist for the tenant.|
|[Get serviceUpdateMessage](../api/serviceupdatemessage-get.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md)|Retrieve the properties and relationships of a [serviceUpdateMessage](../resources/serviceupdatemessage.md) object. This operation retrieves a specified service update message for the tenant. The operation returns an error if the message does not exist for the tenant.|
|[markRead](../api/serviceupdatemessage-markread.md)|Boolean|Mark a list of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s as **read** for the login user|
|[markUnread](../api/serviceupdatemessage-markunread.md)|Boolean|Mark a list of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s as **unread** for the login user.|
|[archive](../api/serviceupdatemessage-archive.md)|Boolean|Archive a list of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s for the login user.|
|[unarchive](../api/serviceupdatemessage-unarchive.md)|Boolean|Unarchive a list of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s for the login user.|
|[favorite](../api/serviceupdatemessage-favorite.md)|Boolean|Change the status of a list of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s to favorite for the login user.|
|[unfavorite](../api/serviceupdatemessage-unfavorite.md)|Boolean|Remove the favorite status of [serviceUpdateMessage](../resources/serviceupdatemessage.md)s for the login user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionRequiredByDateTime|DateTimeOffset|The expected deadline of the action for the message.|
|body|[itemBody](../resources/itembody.md)|The content type and content of the service message body.|
|category|serviceUpdateCategory|The service message category. Possible values are: `PreventOrFixIssue`, `PlanForChange`, `StayInformed`, `unknownFutureValue`.|
|details|Collection([keyValuePair](../resources/keyvaluepair.md))|Additional details about service message. This property doesn't support filters.|
|endDateTime|DateTimeOffset|The end time of the service message.|
|id|String|The id of the service message.|
|isMajorChange|Boolean|Indicates whether the message describes a major update for the service.|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the service message.|
|services|Collection(string)|The affected services by the service message.|
|severity|serviceUpdateSeverity|The severity of the service message. Possible values are: `Normal`, `High`, `Critical`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|The start time of the service message.|
|tags|Collection(string)|A collection of tags for the service message.|
|title|String|The title of the service message.|
|viewPoint|[serviceUpdateMessageViewpoint](../resources/serviceupdatemessageviewpoint.md)|Represents user view points data of the service message.|

## Relationships
This resource type doesn't have relationships.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceUpdateMessage",
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
  }
}
```


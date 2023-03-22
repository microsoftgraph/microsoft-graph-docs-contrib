---
title: "retentionEvent resource type"
description: "Represents a trigger for event-based retention labels where start of the retention period is based on when a specific type of event occurs."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# retentionEvent resource type

Namespace: microsoft.graph.security

Represents a trigger for event-based retention labels where start of the retention period is based on when a specific type of event occurs.
To learn more about it, see [Start retention when an event occurs](/microsoft-365/compliance/event-driven-retention).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionEvents](../api/security-retentionevent-list.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) collection|Get a list of the [retentionEvent](../resources/security-retentionevent.md) objects and their properties.|
|[Create retentionEvent](../api/security-retentionevent-post.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md)|Create a new [retentionEvent](../resources/security-retentionevent.md) object.|
|[Get retentionEvent](../api/security-retentionevent-get.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md)|Read the properties and relationships of a [retentionEvent](../resources/security-retentionevent.md) object.|
|[Delete retentionEvent](../api/security-retentionevent-delete.md)|None|Delete a [retentionEvent](../resources/security-retentionevent.md) object.|
|[List retentionEventType](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get the retentionEventType resources from the exapnd eventType navigation property.|
|[Create retentionEventType](../api/security-retentioneventtype-post.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Add eventType by adding the relevant odata property when creating an event.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the retentionEvent.|
|createdDateTime|DateTimeOffset|The date time when the retentionEvent was created.|
|description|String|Optional information about the event.|
|displayName|String|Name of the event.|
|eventPropagationResult|[microsoft.graph.security.eventPropagationResult](../resources/security-eventpropagationresult.md)|Represents the success status of a created event and additional information.|
|eventQueries|[microsoft.graph.security.eventQuery](../resources/security-eventquery.md) collection| Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.|
|retentionEventStatus|[microsoft.graph.security.retentionEventStatus](../resources/security-retentioneventstatus.md) collection|Status of event propogation to the scoped locations after the event has been created.|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|id|String|Represents the unique ID of the user who created the retentionEvent. [entity](/graph/api/resources/entity).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who last modified the retentionEvent.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the retentionEvent was modified.|
|lastStatusUpdateDateTime|DateTimeOffset|Last time the status of the event was updated.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|retentionEventType|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Specifies the event that will start the retention period for labels that use this event type when an event is created.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.retentionEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionEvent",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "eventQueries": [
    {
      "@odata.type": "microsoft.graph.security.eventQuery"
    }
  ],
  "eventTriggerDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "eventPropagationResults": [
    {
      "@odata.type": "microsoft.graph.security.eventPropagationResult"
    }
  ],
  "eventStatus": {
    "@odata.type": "microsoft.graph.security.retentionEventStatus"
  },
  "lastStatusUpdateDateTime": "String (timestamp)"
}
```
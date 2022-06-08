---
title: "retentionEvent resource type"
description: "Allows a user to manage labels where start of the retention period is based on when a specific type of event occurs"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionEvent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 When configuring a retention label, the retention period can be based on when a specific type of event occurs. For content with a label that has event-triggered retention period, 'retentionEvent' resource type is useful. To learn more about it, see [Start retention when an event occurs](/microsoft-365/compliance/event-driven-retention).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionEvents](../api/security-retentionevent-list.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) collection|Get a list of the [retentionEvent](../resources/security-retentionevent.md) objects and their properties.|
|[Create retentionEvent](../api/security-retentionevent-post.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md)|Create a new [retentionEvent](../resources/security-retentionevent.md) object.|
|[Get retentionEvent](../api/security-retentionevent-get.md)|[microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md)|Read the properties and relationships of a [retentionEvent](../resources/security-retentionevent.md) object.|
|[Delete retentionEvent](../api/security-retentionevent-delete.md)|None|Deletes a [retentionEvent](../resources/security-retentionevent.md) object.|
|[List retentionEventType](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get the retentionEventType resources from the exapnd eventType navigation property.|
|[Add retentionEventType](../api/security-retentioneventtype-post.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Add eventType by adding the relevant odata property when creating an event.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the entity.|
|createdDateTime|DateTimeOffset|The date time when the entity was created.|
|description|String|Optional information about the event.|
|displayName|String|Name of the event.|
|eventPropagationResult|[microsoft.graph.security.eventPropagationResult](../resources/security-eventpropagationresult.md)|Status and errors of the Event Sync.|
|eventQueries|[microsoft.graph.security.eventQueries](../resources/security-eventqueries.md) collection| Specifies property value pairs: the workload type (SPO. ODB, EXO) and identification for an item to scope the retention event.|
|retentionEventStatus|[microsoft.graph.security.retentionEventStatus](../resources/security-retentioneventstatus.md) collection|Specifies the number of processed documents per workload.|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|id|String|Represents the user who created the [entity](/graph/api/resources/entity).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|
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
      "@odata.type": "microsoft.graph.security.eventQueries"
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
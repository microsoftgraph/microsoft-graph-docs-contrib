---
title: "retentionEvent resource type"
description: "Allows a user to manage labels where start of the retention period is based on when a specific type of event occurs"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionEvent resource type

Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 When configuring a retention label, the retention period can be based on when a specific type of event occurs. For content with a label that has event-triggered retention period, 'retentionEvent' resource type is useful. To learn more about it, see [Start retention when an event occurs](https://docs.microsoft.com/en-us/microsoft-365/compliance/event-driven-retention?view=o365-worldwide).


Inherits from [entity](../resources/recordsmanagement-entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionEvents](../api/recordsmanagement-retentionevent-list.md)|[microsoft.graph.recordsManagement.retentionEvent](../resources/recordsmanagement-retentionevent.md) collection|Get a list of the [retentionEvent](../resources/recordsmanagement-retentionevent.md) objects and their properties.|
|[Create retentionEvent](../api/recordsmanagement-recordsmanagementroot-post-events.md)|[microsoft.graph.recordsManagement.retentionEvent](../resources/recordsmanagement-retentionevent.md)|Create a new [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.|
|[Get retentionEvent](../api/recordsmanagement-retentionevent-get.md)|[microsoft.graph.recordsManagement.retentionEvent](../resources/recordsmanagement-retentionevent.md)|Read the properties and relationships of a [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.|
|[Delete retentionEvent](../api/recordsmanagement-retentionevent-delete.md)|None|Deletes a [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.|
|[List labels](../api/recordsmanagement-retentionevent-list-labels.md)|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md) collection|Get the retentionLabel resources from the labels navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the entity.|
|createdDateTime|DateTimeOffset|The date time when the entity was created.|
|description|String|Optional information about the event|
|displayName|String|Name of the event|
|eventPropagationResult|[microsoft.graph.recordsManagement.eventPropagationResult](../resources/recordsmanagement-eventpropagationresult.md)|Status and errors of the Event Sync|
|eventStatus|[microsoft.graph.recordsManagement.retentionEventStatus](../resources/recordsmanagement-retentioneventstatus.md) collection|Specifies the number of processed documents per workload|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|filesQuery|String|Specifies one or more the Property:Value pairs that you've specified in the properties (also known as Columns) of SharePoint and OneDrive for Business documents to scope the compliance retention event.|
|id|String|Id of the Event Inherited from [entity](../resources/recordsmanagement-entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|
|lastStatusUpdateTime|DateTimeOffset|Last time the status of the event was updated|
|messagesQuery|String|Specifies the keywords that are used to scope Exchange content for the compliance retention event.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|labels|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md) collection|Retention labels linked to the event|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recordsManagement.retentionEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionEvent",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "messagesQuery": "String",
  "filesQuery": "String",
  "eventTriggerDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "eventPropagationResult": {
    "@odata.type": "microsoft.graph.recordsManagement.eventPropagationResult"
  },
  "eventStatus": [
    {
      "@odata.type": "microsoft.graph.recordsManagement.retentionEventStatus"
    }
  ],
  "lastStatusUpdateTime": "String (timestamp)"
}
```


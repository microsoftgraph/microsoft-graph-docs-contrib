---
title: "retentionEventType resource type"
description: "Represents a single group for the same type of retention events. An event type is a generic desription for similar events that can be used with any label with event-based retention."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# retentionEventType resource type

Namespace: microsoft.graph.security

Represents a single group for the same type of retention events.

When a [retention event](../resources/security-retentionevent.md) is created, it is associated with a specific event type which in turn is associated with a [retention label](/graph/api-reference/beta/resources/security-retentionlabel.md). Only content with that retention label applied will be retained for the specified retention period.
For details, see [Start retention when an event occurs](/microsoft-365/compliance/event-driven-retention).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionEventTypes](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get a list of the [retentionEventType](../resources/security-retentioneventtype.md) objects and their properties.|
|[Create retentionEventType](../api/security-retentioneventtype-post.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Create a new [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Get retentionEventType](../api/security-retentioneventtype-get.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Read the properties and relationships of a [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Update retentionEventType](../api/security-retentioneventtype-update.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Update the properties of a [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Delete retentionEventType](../api/security-retentioneventtype-delete.md)|None|Delete a [retentionEventType](../resources/security-retentioneventtype.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the retentionEventType.|
|createdDateTime|DateTimeOffset|The date time when the retentionEventType was created.|
|description|String|Optional information about the event type.|
|displayName|String|Name of the event type.|
|id|String|Represents the unique ID of the user who created the retentionEventType. [entity](/graph/api/resources/entity).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who last modified the retentionEventType.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the retentionEventType was modified.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.retentionEventType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionEventType",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```


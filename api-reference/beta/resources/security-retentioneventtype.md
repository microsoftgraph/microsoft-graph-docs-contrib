---
title: "retentionEventType resource type"
description: "Provides infromation for event type. An event type is a generic desription for similar events that you want to associate with a label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionEventType resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When an event is created, it is associated to a specific event type. The creation of this event then triggers all retentuon labels which have the same event type chosen in the label wizard. Only content with retention labels applied to it of that event type will have its retention period triggered. For more information, read [Start retention when an event occurs](/microsoft-365/compliance/event-driven-retention).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionEventTypes](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get a list of the [retentionEventType](../resources/security-retentioneventtype.md) objects and their properties.|
|[Create retentionEventType](../api/security-retentionlabel-post-eventtypes.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Create a new [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Get retentionEventType](../api/security-retentioneventtype-get.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Read the properties and relationships of a [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Update retentionEventType](../api/security-retentioneventtype-update.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Update the properties of a [retentionEventType](../resources/security-retentioneventtype.md) object.|
|[Delete retentionEventType](../api/security-retentioneventtype-delete.md)|None|Deletes a [retentionEventType](../resources/security-retentioneventtype.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the entity.|
|createdDateTime|DateTimeOffset|The date time when the entity was created.|
|description|String|Optional information about the event type.|
|displayName|String|Name of the event type.|
|id|String|Represents the user who created the [entity](/graph/api/resources/entity).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|

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


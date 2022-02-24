---
title: "retentionLabel resource type"
description: "A retentionLabel allows a user to retain or delete content and configure additional settings and actions"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionLabel resource type

Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionLabels](../api/recordsmanagement-retentionlabel-list.md)|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md) collection|Get a list of the [retentionLabel](../resources/recordsmanagement-retentionlabel.md) objects and their properties.|
|[Create retentionLabel](../api/recordsmanagement-recordsmanagementroot-post-labels.md)|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md)|Create a new [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object.|
|[Get retentionLabel](../api/recordsmanagement-retentionlabel-get.md)|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md)|Read the properties and relationships of a [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object.|
|[Update retentionLabel](../api/recordsmanagement-retentionlabel-update.md)|[microsoft.graph.recordsManagement.retentionLabel](../resources/recordsmanagement-retentionlabel.md)|Update the properties of a [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object.|
|[Delete retentionLabel](../api/recordsmanagement-retentionlabel-delete.md)|None|Delete a [retentionLabel](../resources/recordsmanagement-retentionlabel.md) object.|
|[List retentionEventType](../api/recordsmanagement-retentioneventtype-list.md)|[microsoft.graph.recordsManagement.retentionEventType](../resources/recordsmanagement-retentioneventtype.md) collection|Get the retentionEventType resources from the eventType navigation property.|
|[Add retentionEventType](../api/recordsmanagement-recordsmanagementroot-post-eventtypes.md)|[microsoft.graph.recordsManagement.retentionEventType](../resources/recordsmanagement-retentioneventtype.md)|Add eventType by posting to the eventType collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionAfterRetentionPeriod|actionAfterRetentionPeriod|Specifies the action of a document that has been labeled with this label after the retention period. The possible values are: `none`, `delete`, `startDispositionReview`, `unknownFutureValue`.|
|behaviorDuringRetentionPeriod|behaviorDuringRetentionPeriod|Specifies the behaviour of a document that has been labeled with this label during the retention period. The possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the entity|
|createdDateTime|DateTimeOffset|The date time when the entity was created|
|descriptionForAdmins|String|Optional information about the label for the Admin|
|descriptionForUsers|String|Optional information about the label for the User|
|displayName|String|Unique string defining the name of the label|
|dispositionReviewStages|[microsoft.graph.recordsManagement.dispositionReviewStage](../resources/recordsmanagement-dispositionreviewstage.md) collection|A multi stage collection of reviewers that will be notified and have to approve before an item is deleted|
|id|String|Id of the label Inherited from [entity](../resources/recordsmanagement-entity.md).|
|isInUse|Boolean|Specifies if the label is currently being used|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified|
|retentionDurationInDays|Int32|Specifies the number of days to retain the content|
|retentionTrigger|retentionTrigger|Specifies if the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|eventType|[retentionEventType](../resources/recordsmanagement-retentioneventtype.md)|Optional value that specifies the event that will start the retention period for labels that use this event type|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recordsManagement.retentionLabel",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionLabel",
  "id": "String (identifier)",
  "displayName": "String",
  "behaviorDuringRetentionPeriod": "String",
  "actionAfterRetentionPeriod": "String",
  "retentionTrigger": "String",
  "retentionDurationInDays": "Integer",
  "isInUse": "Boolean",
  "descriptionForAdmins": "String",
  "descriptionForUsers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "dispositionReviewStages": [
    {
      "@odata.type": "microsoft.graph.recordsManagement.dispositionReviewStage"
    }
  ]
}
```


---
title: "retentionLabel resource type"
description: "Represents how customers can manage their data, whether and for how long to retain or delete it."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionLabel resource type

Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A retentionLabel allows a user to retain or delete content and configure additional settings and actions.

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
|actionAfterRetentionPeriod|actionAfterRetentionPeriod| Specifies the action to be applied on a document with this label after the retention period. The possible values are: `none`, `delete`, `startDispositionReview`, `unknownFutureValue`.|
|behaviorDuringRetentionPeriod|behaviorDuringRetentionPeriod|Specifies how the behavior of a document with this label should be during the retention period. The possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the entity.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the entity is created.|
|descriptionForAdmins|String|This is an optional property that provides the label information for the admin.|
|descriptionForUsers|String|This is an optional property that provides the label information for the user.|
|displayName|String|Unique string that defines a label name.|
|dispositionReviewStages|[microsoft.graph.recordsManagement.dispositionReviewStage](../resources/recordsmanagement-dispositionreviewstage.md) collection|A multi stage collection of reviewers who will be notified for approval on whether a document has to be deleted or retained further.|
|id|String|Id of the label Inherited from [entity](/graph/api/resources/entity).|
|isInUse|Boolean|Specifies if the label is currently being used.|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|
|retentionDurationInDays|Int32|Specifies the number of days to retain the content.|
|retentionTrigger|retentionTrigger|Specifies if the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|eventType|[microsoft.graph.recordsManagement.retentionEventType](../resources/recordsmanagement-retentioneventtype.md)|Optional value that specifies the event that will start the retention period for labels that use this event type.|

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


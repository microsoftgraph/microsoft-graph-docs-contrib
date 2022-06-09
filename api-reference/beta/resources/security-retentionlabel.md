---
title: "retentionLabel resource type"
description: "Represents how customers can manage their data, whether and for how long to retain or delete it."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionLabel resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how customers can manage their data, whether and for how long to retain or delete it.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionLabels](../api/security-retentionlabel-list.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) collection|Get a list of the [retentionLabel](../resources/security-retentionlabel.md) objects and their properties.|
|[Create retentionLabel](../api/security-retentionlabel-post.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Create a new [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Get retentionLabel](../api/security-retentionlabel-get.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Read the properties and relationships of a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Update retentionLabel](../api/security-retentionlabel-update.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Update the properties of a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Delete retentionLabel](../api/security-retentionlabel-delete.md)|None|Delete a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[List retentionEventType](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get the retentionEventType resources from the exapnd eventType navigation property.|
|[Add retentionEventType](../api/security-retentioneventtype-post.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Add eventType by adding the relevant odata property when creating a label.|

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
|dispositionReviewStages|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|A multi stage collection of reviewers who will be notified for approval on whether a document has to be deleted or retained further.|
|id|String|Id of the label Inherited from [entity](/graph/api/resources/entity).|
|isInUse|Boolean|Specifies if the label is currently being used.|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|
|retentionDuration|[microsoft.graph.security.retentionduration](../resources/security-retentionduration)|Specifies the number of days to retain the content.|
|retentionTrigger|retentionTrigger|Specifies if the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`.|
|defaultRecordBehavior|defaultRecordBehavior|Specifies the locked or unlocked state of a record label when it is created.The possible values are: `startLocked`, `startUnlocked`, `unknownFutureValue`.|
|labelToBeApplied|String|Specifies the replacement label to be automatically applied once the retention period of the current label is completed. |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dispositionReviewStages|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|When action at the end of retention is chosen as 'dispositionReview', dispositionReviewStages specifies a sequential set of stages with at least one reviewer in each stage.|
|eventType|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Optional value that specifies the event that will start the retention period for labels that use this event type.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.retentionLabel",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionLabel",
  "id": "String (identifier)",
  "displayName": "String",
  "behaviorDuringRetentionPeriod": "String",
  "actionAfterRetentionPeriod": "String",
  "retentionTrigger": "String",
  "retentionDuration": {
    "@odata.type": "microsoft.graph.security.retentionDuration"
  },
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
  "labelToBeApplied": "String",
  "defaultRecordBehavior": "String"
}
```

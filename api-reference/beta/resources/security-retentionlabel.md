---
title: "retentionLabel resource type"
description: "Represents how customers can manage their data, whether and for how long to retain or delete it."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# retentionLabel resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how customers can manage their data, including whether and for how long to retain or delete it.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List retentionLabels](../api/security-labelsroot-list-retentionlabel.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) collection|Get a list of the [retentionLabel](../resources/security-retentionlabel.md) objects and their properties.|
|[Create retentionLabel](../api/security-labelsroot-post-retentionlabel.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Create a new [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Get retentionLabel](../api/security-retentionlabel-get.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Read the properties and relationships of a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Update retentionLabel](../api/security-retentionlabel-update.md)|[microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md)|Update the properties of a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[Delete retentionLabel](../api/security-retentionlabel-delete.md)|None|Delete a [retentionLabel](../resources/security-retentionlabel.md) object.|
|[List retentionEventType](../api/security-retentioneventtype-list.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) collection|Get the retentionEventType resources from the exapnd eventType navigation property.|
|[Add retentionEventType](../api/security-retentioneventtype-post.md)|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Add eventType by adding the relevant odata property when creating a label.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionAfterRetentionPeriod|microsoft.graph.security.actionAfterRetentionPeriod| Specifies the action to take on a document with this label applied during the retention period. The possible values are: `none`, `delete`, `startDispositionReview`, `unknownFutureValue`.|
|behaviorDuringRetentionPeriod|microsoft.graph.security.behaviorDuringRetentionPeriod|Specifies how the behavior of a document with this label should be during the retention period. The possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the retentionLabel.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the retentionLabel is created.|
|descriptionForAdmins|String|Provides label information for the admin. Optional.|
|descriptionForUsers|String|Provides the label information for the user. Optional.|
|displayName|String|Unique string that defines a label name.|
|id|String|Unique ID of the retentionLabel. [entity](/graph/api/resources/entity).|
|isInUse|Boolean|Specifies whether the label is currently being used.|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who last modified the retentionLabel.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the retentionLabel was modified.|
|retentionDuration|[microsoft.graph.security.retentionDuration](../resources/security-retentionduration.md)|Specifies the number of days to retain the content.|
|retentionTrigger|microsoft.graph.security.retentionTrigger|Specifies whether the retention duration is calculated from the content creation date, labeled date, or last modification date. The possible values are: `dateLabeled`, `dateCreated`, `dateModified`, `dateOfEvent`, `unknownFutureValue`.|
|defaultRecordBehavior|microsoft.graph.security.defaultRecordBehavior|Specifies the locked or unlocked state of a record label when it is created.The possible values are: `startLocked`, `startUnlocked`, `unknownFutureValue`.|
|labelToBeApplied|String|Specifies the replacement label to be applied automatically after the retention period of the current label ends. |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dispositionReviewStages|[microsoft.graph.security.dispositionReviewStage](../resources/security-dispositionreviewstage.md) collection|When action at the end of retention is chosen as 'dispositionReview', dispositionReviewStages specifies a sequential set of stages with at least one reviewer in each stage.|
|retentionEventType|[microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md)|Represents the type associated with a retention event.|
|descriptors|[microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md)|Represents out-of-the-box values that provide more options to improve the manageability and organization of the content you need to label.|



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

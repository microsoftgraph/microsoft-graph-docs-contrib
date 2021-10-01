---
title: "accessReviewScheduleDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewScheduleDefinitions](../api/accessreviewscheduledefinition-list.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.|
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-create.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Read the properties and relationships of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md)|None|Deletes an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalNotificationRecipients|[accessReviewNotificationRecipientItem](../resources/accessreviewnotificationrecipientitem.md) collection|**TODO: Add Description**|
|backupReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|customData|[accessReviewCustomData](../resources/accessreviewcustomdata.md)|**TODO: Add Description**|
|customDataProvider|String|**TODO: Add Description**|
|descriptionForAdmins|String|**TODO: Add Description**|
|descriptionForReviewers|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|**TODO: Add Description**|
|scope|[accessReviewScope](../resources/accessreviewscope.md)|**TODO: Add Description**|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|instances|[accessReviewInstance](../resources/accessreviewinstance.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "String (identifier)",
  "additionalNotificationRecipients": [
    {
      "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ],
  "backupReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "customData": {
    "@odata.type": "microsoft.graph.accessReviewCustomData"
  },
  "customDataProvider": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "displayName": "String",
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "status": "String"
}
```


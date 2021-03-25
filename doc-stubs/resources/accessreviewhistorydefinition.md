---
title: "accessReviewHistoryDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReviewHistoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewHistoryDefinitions](../api/accessreviewhistorydefinition-list.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects and their properties.|
|[Create accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-create.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[Update accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-update.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Update the properties of an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[Delete accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-delete.md)|None|Deletes an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistorydefinition-generatedownloaduri.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|decisions|accessReviewHistoryDecisionFilter collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|downloadUri|String|**TODO: Add Description**|
|fulfilledDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|**TODO: Add Description**|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|**TODO: Add Description**|
|scopes|[accessReviewScope](../resources/accessreviewscope.md) collection|**TODO: Add Description**|
|status|accessReviewHistoryStatus|**TODO: Add Description**. Possible values are: `done`, `inprogress`, `error`, `requested`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "decisions": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "fulfilledDateTime": "String (timestamp)",
  "reviewHistoryPeriodStartDateTime": "String (timestamp)",
  "reviewHistoryPeriodEndDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "downloadUri": "String"
}
```


---
title: "directoryRoleAccessReviewPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directoryRoleAccessReviewPolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List directoryRoleAccessReviewPolicies](../api/directoryroleaccessreviewpolicy-list.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) collection|Get a list of the [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) objects and their properties.|
|[Create directoryRoleAccessReviewPolicy](../api/directoryroleaccessreviewpolicy-create.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|Create a new [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.|
|[Get directoryRoleAccessReviewPolicy](../api/directoryroleaccessreviewpolicy-get.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|Read the properties and relationships of a [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.|
|[Update directoryRoleAccessReviewPolicy](../api/directoryroleaccessreviewpolicy-update.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|Update the properties of a [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.|
|[Delete directoryRoleAccessReviewPolicy](../api/directoryroleaccessreviewpolicy-delete.md)|None|Deletes a [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryRoleAccessReviewPolicy",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directoryRoleAccessReviewPolicy",
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```


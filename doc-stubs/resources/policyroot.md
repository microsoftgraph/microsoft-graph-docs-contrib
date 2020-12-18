---
title: "policyRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List policyRoots](../api/policyroot-list.md)|[policyRoot](../resources/policyroot.md) collection|Get a list of the [policyRoot](../resources/policyroot.md) objects and their properties.|
|[Create policyRoot](../api/policyroot-create.md)|[policyRoot](../resources/policyroot.md)|Create a new [policyRoot](../resources/policyroot.md) object.|
|[Get policyRoot](../api/policyroot-get.md)|[policyRoot](../resources/policyroot.md)|Read the properties and relationships of a [policyRoot](../resources/policyroot.md) object.|
|[Update policyRoot](../api/policyroot-update.md)|[policyRoot](../resources/policyroot.md)|Update the properties of a [policyRoot](../resources/policyroot.md) object.|
|[Delete policyRoot](../api/policyroot-delete.md)|None|Deletes a [policyRoot](../resources/policyroot.md) object.|
|[List adminConsentRequestPolicy](../api/policyroot-list-adminconsentrequestpolicy.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) collection|Get the adminConsentRequestPolicy resources from the adminConsentRequestPolicy navigation property.|
|[Create adminConsentRequestPolicy](../api/policyroot-post-adminconsentrequestpolicy.md)|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|Create a new adminConsentRequestPolicy object.|
|[List directoryRoleAccessReviewPolicy](../api/policyroot-list-directoryroleaccessreviewpolicy.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) collection|Get the directoryRoleAccessReviewPolicy resources from the directoryRoleAccessReviewPolicy navigation property.|
|[Create directoryRoleAccessReviewPolicy](../api/policyroot-post-directoryroleaccessreviewpolicy.md)|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|Create a new directoryRoleAccessReviewPolicy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|adminConsentRequestPolicy|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|**TODO: Add Description**|
|directoryRoleAccessReviewPolicy|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot"
}
```


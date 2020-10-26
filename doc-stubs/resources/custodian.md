---
title: "custodian resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# custodian resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List custodians](../api/ediscoverycase-list-custodians.md)|[custodian](../resources/custodian.md) collection|Get the custodian resources from the custodians navigation property.|
|[Create custodians](../api/ediscoverycase-post-custodians.md)|[custodian](../resources/custodian.md)|Create a new custodian object.|
|[Update custodians](../api/ediscoverycase-update-custodians.md)|[custodian](../resources/custodian.md)|Update the properties of a custodians object.|
|[Get custodians](../api/ediscoverycase-get-custodian.md)|[custodian](../resources/custodian.md)|Read the properties and relationships of a [custodian](../resources/custodian.md) object.|
|[Delete custodians](../api/ediscoverycase-delete-custodians.md)|None|Delete a [custodian](../resources/custodian.md) object.|
|[List custodians](../api/custodian-list.md)|[custodian](../resources/custodian.md) collection|Get a list of the [custodian](../resources/custodian.md) objects and their properties.|
|[Create custodian](../api/custodian-create.md)|[custodian](../resources/custodian.md)|Create a new [custodian](../resources/custodian.md) object.|
|[Get custodian](../api/custodian-get.md)|[custodian](../resources/custodian.md)|Read the properties and relationships of a [custodian](../resources/custodian.md) object.|
|[Update custodian](../api/custodian-update.md)|[custodian](../resources/custodian.md)|Update the properties of a [custodian](../resources/custodian.md) object.|
|[Delete custodian](../api/custodian-delete.md)|None|Deletes a [custodian](../resources/custodian.md) object.|
|[release](../api/custodian-release.md)|None|**TODO: Add Description**|
|[activate](../api/custodian-activate.md)|None|**TODO: Add Description**|
|[updateIndex](../api/custodian-updateindex.md)|None|**TODO: Add Description**|
|[List lastIndexOperation](../api/custodian-list-lastindexoperation.md)|[caseIndexOperation](../resources/caseindexoperation.md) collection|Get the caseIndexOperation resources from the lastIndexOperation navigation property.|
|[Add lastIndexOperation](../api/custodian-post-lastindexoperation.md)|[caseIndexOperation](../resources/caseindexoperation.md)|Add lastIndexOperation by posting to the lastIndexOperation collection.|
|[Remove lastIndexOperation](../api/custodian-delete-lastindexoperation.md)|None|Remove a [caseIndexOperation](../resources/caseindexoperation.md) object.|
|[List siteSources](../api/custodian-list-sitesources.md)|[siteSource](../resources/sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSources](../api/custodian-post-sitesources.md)|[siteSource](../resources/sitesource.md)|Create a new siteSource object.|
|[Get siteSources](../api/custodian-get-sitesource.md)|[siteSource](../resources/sitesource.md)|Read the properties and relationships of a [siteSource](../resources/sitesource.md) object.|
|[Update siteSources](../api/custodian-update-sitesources.md)|[siteSource](../resources/sitesource.md)|Update the properties of a siteSources object.|
|[Delete siteSources](../api/custodian-delete-sitesources.md)|None|Delete a [siteSource](../resources/sitesource.md) object.|
|[List unifiedGroupSources](../api/custodian-list-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSources](../api/custodian-post-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new unifiedGroupSource object.|
|[Get unifiedGroupSources](../api/custodian-get-unifiedgroupsource.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Read the properties and relationships of an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[Update unifiedGroupSources](../api/custodian-update-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Update the properties of an unifiedGroupSources object.|
|[Delete unifiedGroupSources](../api/custodian-delete-unifiedgroupsources.md)|None|Delete an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[List userSources](../api/custodian-list-usersources.md)|[userSource](../resources/usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSources](../api/custodian-post-usersources.md)|[userSource](../resources/usersource.md)|Create a new userSource object.|
|[Get userSources](../api/custodian-get-usersource.md)|[userSource](../resources/usersource.md)|Read the properties and relationships of a [userSource](../resources/usersource.md) object.|
|[Update userSources](../api/custodian-update-usersources.md)|[userSource](../resources/usersource.md)|Update the properties of a userSources object.|
|[Delete userSources](../api/custodian-delete-usersources.md)|None|Delete a [userSource](../resources/usersource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|**TODO: Add Description**|
|applyHoldToSources|Boolean|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|releasedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|custodianStatus|**TODO: Add Description**. Possible values are: `active`, `released`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lastIndexOperation|[caseIndexOperation](../resources/caseindexoperation.md)|**TODO: Add Description**|
|siteSources|[siteSource](../resources/sitesource.md) collection|**TODO: Add Description**|
|unifiedGroupSources|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|**TODO: Add Description**|
|userSources|[userSource](../resources/usersource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.custodian",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.custodian",
  "email": "String",
  "applyHoldToSources": "Boolean",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "acknowledgedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String"
}
```


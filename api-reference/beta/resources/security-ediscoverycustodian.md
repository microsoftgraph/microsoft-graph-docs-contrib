---
title: "ediscoveryCustodian resource type"
description: "The dataSource entity is an abstract base class used to identify sources of content for eDiscovery."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryCustodian resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSourceContainer](../resources/security-datasourcecontainer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryCustodians](../api/security-ediscoveryfile-list-custodian.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get a list of the [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) objects and their properties.|
|[Create ediscoveryCustodian](../api/security-ediscoveryfile-post-custodian.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Create a new [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Get ediscoveryCustodian](../api/security-ediscoverycustodian-get.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Read the properties and relationships of an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Update ediscoveryCustodian](../api/security-ediscoverycustodian-update.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Update the properties of an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Delete ediscoveryCustodian](../api/security-ediscoveryfile-delete-custodian.md)|None|Deletes an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[updateIndex](../api/security-ediscoverycustodian-updateindex.md)|None|**TODO: Add Description**|
|[activate](../api/security-ediscoverycustodian-activate.md)|None|**TODO: Add Description**|
|[release](../api/security-ediscoverycustodian-release.md)|None|**TODO: Add Description**|
|[applyHold](../api/security-ediscoverycustodian-applyhold.md)|None|**TODO: Add Description**|
|[applyHold](../api/security-ediscoverycustodian-applyhold.md)|None|**TODO: Add Description**|
|[removeHold](../api/security-ediscoverycustodian-removehold.md)|None|**TODO: Add Description**|
|[removeHold](../api/security-ediscoverycustodian-removehold.md)|None|**TODO: Add Description**|
|[List ediscoveryIndexOperation](../api/security-ediscoverycustodian-list-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) collection|Get the ediscoveryIndexOperation resources from the lastIndexOperation navigation property.|
|[Add ediscoveryIndexOperation](../api/security-ediscoverycustodian-post-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|Add lastIndexOperation by posting to the lastIndexOperation collection.|
|[Remove ediscoveryIndexOperation](../api/security-ediscoverycustodian-delete-lastindexoperation.md)|None|Remove an [ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) object.|
|[List siteSources](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/security-ediscoverycustodian-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new siteSource object.|
|[List unifiedGroupSources](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSource](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new unifiedGroupSource object.|
|[List userSources](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/security-ediscoverycustodian-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new userSource object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|email|String|**TODO: Add Description**|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|releasedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|status|dataSourceContainerStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).The possible values are: `active`, `released`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lastIndexOperation|[ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|**TODO: Add Description**|
|siteSources|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|**TODO: Add Description**|
|unifiedGroupSources|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|**TODO: Add Description**|
|userSources|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCustodian",
  "baseType": "microsoft.graph.security.dataSourceContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryCustodian",
  "id": "String (identifier)",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "email": "String",
  "acknowledgedDateTime": "String (timestamp)"
}
```


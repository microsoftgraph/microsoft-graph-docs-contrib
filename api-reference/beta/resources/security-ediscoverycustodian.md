---
title: "ediscoveryCustodian resource type"
description: "In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryCustodian resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryCustodians](../api/security-ediscoverycase-list-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get a list of the [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) objects and their properties.|
|[Create ediscoveryCustodian](../api/security-ediscoverycase-post-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Create a new [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Get ediscoveryCustodian](../api/security-ediscoverycustodian-get.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Read the properties and relationships of an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[updateIndex](../api/security-ediscoverycustodian-updateindex.md)|Triggers a indexOperation to make a custodian and associated sources searchable.|
|[activate](../api/security-ediscoverycustodian-activate.md)|None|Re-activate a custodian from a case.|
|[release](../api/security-ediscoverycustodian-release.md)|None|Release a custodian from a case.|
|[applyHold](../api/security-ediscoverycustodian-applyhold.md)|None|Start the process of applying hold to eDiscovery custodians.|
|[removeHold](../api/security-ediscoverycustodian-removehold.md)|None|Start the process of removing hold from eDiscovery custodians.|
|[List ediscoveryIndexOperation](../api/security-ediscoverycustodian-list-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) collection|Get a list of the [ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[List siteSources](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/security-ediscoverycustodian-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object associated with an [eDiscovery custodian](../resources/security-ediscoverycustodian.md).|
|[List unifiedGroupSources](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSource](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object associated with an [eDiscovery custodian](../resources/security-ediscoverycustodian.md).|
|[List userSources](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/security-ediscoverycustodian-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object associated with an [eDiscovery custodian](../resources/security-ediscoverycustodian.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|Date and time the custodian acknowledged a hold notification.|
|createdDateTime|DateTimeOffset|Date and time when the custodian was added to the case.|
|displayName|String|Display name of the custodian.|
|email|String|Email address of the custodian.|
|id|String|The ID for the custodian in the specified case. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the custodian object was last modified|
|releasedDateTime|DateTimeOffset|Date and time the custodian was released from the case.|
|status|microsoft.graph.security.dataSourceContainerStatus|Status of the custodian. Possible values are: `active`, `released`.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the custodian.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|

### custodianStatus values

|Name|Description|
|:----|-----------|
|active|Custodian is an active part of the case. |
|released|Custodian is released from the case.|

### custodianHoldStatus values

|Name|Description|
|:----|-----------|
|notApplied|The custodian is not on Hold (all sources in it are not on hold).|
|applied|The custodian is on Hold (all sources are on hold).|
|applying|The custodian is in applying hold state (applyHold operation triggered).|
|removing|The custodian is in removing the hold state(removeHold operation triggered).|
|partial|The custodian is in mixed state where some sources are on hold and some not on hold or error state.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lastIndexOperation|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|Operation entity that represents the latest indexing for the custodian.|
|siteSources|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Data source entity for SharePoint sites associated with the custodian.|
|unifiedGroupSources|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Data source entity for groups associated with the custodian.|
|userSources|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Data source entity for a custodian. This is the container for a custodian's mailbox and OneDrive for Business site.|

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


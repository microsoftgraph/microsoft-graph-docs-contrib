---
title: "ediscoveryCustodian resource type"
description: "In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/14/2024
---

# ediscoveryCustodian resource type

Namespace: microsoft.graph.security



In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycase-list-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get a list of the [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) objects and their properties.|
|[Create](../api/security-ediscoverycase-post-custodians.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Create a new [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Get](../api/security-ediscoverycustodian-get.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Read the properties and relationships of an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[Update index](../api/security-ediscoverycustodian-updateindex.md)|Triggers a indexOperation to make a custodian and associated sources searchable.|
|[Activate](../api/security-ediscoverycustodian-activate.md)|None|Re-activate a custodian from a case.|
|[Release](../api/security-ediscoverycustodian-release.md)|None|Release a custodian from a case.|
|[Apply hold](../api/security-ediscoverycustodian-applyhold.md)|None|Start the process of applying hold to eDiscovery custodians.|
|[Remove hold](../api/security-ediscoverycustodian-removehold.md)|None|Start the process of removing hold from eDiscovery custodians.|
|[Get last index operation](../api/security-ediscoverycustodian-list-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) collection|Get a list of the [ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
| **Site sources** |  |  |
|[List](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get a list of the [siteSource](../resources/security-sitesource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Create](../api/security-ediscoverycustodian-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-ediscoverycustodian-delete-sitesources.md)|None|Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
| **Unified group sources** |  |  |
|[List](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get a list of the [unifiedGroupSource](../resources/security-unifiedgroupsource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Create](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-unifiedgroupsource-delete.md)|None|Delete a [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
| **User sources** |  |  |
|[List](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get a list of the [userSource](../resources/security-usersource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) or [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoverycustodian-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-ediscoverycustodian-delete-usersources.md)|None|Delete a [userSource](../resources/security-usersource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|Date and time the custodian acknowledged a hold notification.|
|createdDateTime|DateTimeOffset|Date and time when the custodian was added to the case.|
|displayName|String|Display name of the custodian.|
|email|String|Email address of the custodian.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the custodian.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|id|String|The ID for the custodian in the specified case. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the custodian object was last modified|
|releasedDateTime|DateTimeOffset|Date and time the custodian was released from the case.|
|status|microsoft.graph.security.custodianStatus|Status of the custodian. The possible values are: `active`, `released`.|


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
|userSources|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.|

## JSON representation
The following JSON representation shows the resource type.
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


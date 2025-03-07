---
title: "siteSource resource type"
description: "The container for a site associated with a custodian."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/10/2024
---

# siteSource resource type

Namespace: microsoft.graph.security


The container for a site associated with a custodian.

Inherits from [dataSource](../resources/security-datasource.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
| **eDiscovery custodian** |||
|[List](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get a list of the [siteSource](../resources/security-sitesource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Create](../api/security-ediscoverycustodian-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-ediscoverycustodian-delete-sitesources.md)|None|Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
| **eDiscovery hold policy** |||
|[List siteSources](../api/security-ediscoveryholdpolicy-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get a list of the [siteSource](../resources/security-sitesource.md) objects associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|
|[Create](../api/security-ediscoveryholdpolicy-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object.|
|[Delete](../api/security-ediscoveryholdpolicy-delete-sitesources.md)|None|Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **siteSource**.|
|createdDateTime|DateTimeOffset|The date and time the **siteSource** was created.|
|displayName|String|The display name of the **siteSource**. This is the name of the SharePoint site.|
|id|String| The ID of the **siteSource**. |
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **siteSource**. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|site|[site](../resources/site.md)|The SharePoint site associated with the **siteSource**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.siteSource",
  "baseType": "microsoft.graph.security.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.siteSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


---
title: "siteSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# siteSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSource](../resources/ediscovery-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List siteSources](../api/security-ediscoverycustodian-list-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md) collection|Get a list of the [siteSource](../resources/security-sitesource.md) objects and their properties.|
|[Create siteSource](../api/security-ediscoverycustodian-post-sitesources.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Create a new [siteSource](../resources/security-sitesource.md) object.|
|[Get siteSource](../api/security-sitesource-get.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Read the properties and relationships of a [siteSource](../resources/security-sitesource.md) object.|
|[Update siteSource](../api/security-sitesource-update.md)|[microsoft.graph.security.siteSource](../resources/security-sitesource.md)|Update the properties of a [siteSource](../resources/security-sitesource.md) object.|
|[Delete siteSource](../api/security-ediscoverycustodian-delete-sitesources.md)|None|Deletes a [siteSource](../resources/security-sitesource.md) object.|
|[List site](../api/ediscovery-sitesource-list-site.md)|[microsoft.graph.site](../resources/site.md) collection|Get the site resources from the site navigation property.|
|[Add site](../api/security-sitesource-post-site.md)|[microsoft.graph.site](../resources/site.md)|Add site by posting to the site collection.|
|[Remove site](../api/security-sitesource-delete-site.md)|None|Remove a [site](../resources/site.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|site|[site](../resources/site.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.siteSource",
  "baseType": "microsoft.graph.ediscovery.dataSource",
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


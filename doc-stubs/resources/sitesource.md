---
title: "siteSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# siteSource resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [dataSource](../resources/datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List siteSources](../api/custodian-list-sitesources.md)|[siteSource](../resources/sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSources](../api/custodian-post-sitesources.md)|[siteSource](../resources/sitesource.md)|Create a new siteSource object.|
|[Update siteSources](../api/custodian-update-sitesources.md)|[siteSource](../resources/sitesource.md)|Update the properties of a siteSources object.|
|[Get siteSources](../api/custodian-get-sitesource.md)|[siteSource](../resources/sitesource.md)|Read the properties and relationships of a [siteSource](../resources/sitesource.md) object.|
|[Delete siteSources](../api/custodian-delete-sitesources.md)|None|Delete a [siteSource](../resources/sitesource.md) object.|
|[List siteSources](../api/sitesource-list.md)|[siteSource](../resources/sitesource.md) collection|Get a list of the [siteSource](../resources/sitesource.md) objects and their properties.|
|[Create siteSource](../api/sitesource-create.md)|[siteSource](../resources/sitesource.md)|Create a new [siteSource](../resources/sitesource.md) object.|
|[Get siteSource](../api/sitesource-get.md)|[siteSource](../resources/sitesource.md)|Read the properties and relationships of a [siteSource](../resources/sitesource.md) object.|
|[Update siteSource](../api/sitesource-update.md)|[siteSource](../resources/sitesource.md)|Update the properties of a [siteSource](../resources/sitesource.md) object.|
|[Delete siteSource](../api/sitesource-delete.md)|None|Deletes a [siteSource](../resources/sitesource.md) object.|
|[List site](../api/sitesource-list-site.md)|[site](../resources/site.md) collection|Get the site resources from the site navigation property.|
|[Add site](../api/sitesource-post-site.md)|[site](../resources/site.md)|Add site by posting to the site collection.|
|[Remove site](../api/sitesource-delete-site.md)|None|Remove a [site](../resources/site.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|id|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|site|[site](../resources/site.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteSource",
  "baseType": "microsoft.compliance.ediscovery.contract.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)"
}
```


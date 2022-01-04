---
title: "userSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSource](../resources/ediscovery-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userSources](../api/ediscovery-usersource-list.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) collection|Get a list of the [userSource](../resources/ediscovery-usersource.md) objects and their properties.|
|[Create userSource](../api/ediscovery-custodian-post-usersources.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md)|Create a new [userSource](../resources/ediscovery-usersource.md) object.|
|[Get userSource](../api/ediscovery-usersource-get.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md)|Read the properties and relationships of a [userSource](../resources/ediscovery-usersource.md) object.|
|[Update userSource](../api/ediscovery-usersource-update.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md)|Update the properties of a [userSource](../resources/ediscovery-usersource.md) object.|
|[Delete userSource](../api/ediscovery-usersource-delete.md)|None|Deletes a [userSource](../resources/ediscovery-usersource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md).|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md).|
|includedSources|sourceType|**TODO: Add Description**. The possible values are: `mailbox`, `site`.|
|siteWebUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.userSource",
  "baseType": "microsoft.graph.ediscovery.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.userSource",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String",
  "siteWebUrl": "String"
}
```


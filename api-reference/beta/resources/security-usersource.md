---
title: "userSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# userSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSource](../resources/security-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userSources](../api/security-ediscoverycustodian-list-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md) collection|Get a list of the [userSource](../resources/security-usersource.md) objects and their properties.|
|[Create userSource](../api/security-ediscoverycustodian-post-usersources.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Create a new [userSource](../resources/security-usersource.md) object.|
|[Get userSource](../api/security-usersource-get.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Read the properties and relationships of a [userSource](../resources/security-usersource.md) object.|
|[Update userSource](../api/security-usersource-update.md)|[microsoft.graph.security.userSource](../resources/security-usersource.md)|Update the properties of a [userSource](../resources/security-usersource.md) object.|
|[Delete userSource](../api/security-ediscoverycustodian-delete-usersources.md)|None|Deletes a [userSource](../resources/security-usersource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|email|String|**TODO: Add Description**|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|includedSources|sourceType|**TODO: Add Description**.The possible values are: `mailbox`, `site`, `unknownFutureValue`.|
|siteWebUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.userSource",
  "baseType": "microsoft.graph.security.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "email": "String",
  "includedSources": "String",
  "siteWebUrl": "String"
}
```


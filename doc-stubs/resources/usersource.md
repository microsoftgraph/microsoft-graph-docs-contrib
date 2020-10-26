---
title: "userSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userSource resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [dataSource](../resources/datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userSources](../api/custodian-list-usersources.md)|[userSource](../resources/usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSources](../api/custodian-post-usersources.md)|[userSource](../resources/usersource.md)|Create a new userSource object.|
|[Update userSources](../api/custodian-update-usersources.md)|[userSource](../resources/usersource.md)|Update the properties of a userSources object.|
|[Get userSources](../api/custodian-get-usersource.md)|[userSource](../resources/usersource.md)|Read the properties and relationships of a [userSource](../resources/usersource.md) object.|
|[Delete userSources](../api/custodian-delete-usersources.md)|None|Delete a [userSource](../resources/usersource.md) object.|
|[List userSources](../api/usersource-list.md)|[userSource](../resources/usersource.md) collection|Get a list of the [userSource](../resources/usersource.md) objects and their properties.|
|[Create userSource](../api/usersource-create.md)|[userSource](../resources/usersource.md)|Create a new [userSource](../resources/usersource.md) object.|
|[Get userSource](../api/usersource-get.md)|[userSource](../resources/usersource.md)|Read the properties and relationships of a [userSource](../resources/usersource.md) object.|
|[Update userSource](../api/usersource-update.md)|[userSource](../resources/usersource.md)|Update the properties of a [userSource](../resources/usersource.md) object.|
|[Delete userSource](../api/usersource-delete.md)|None|Deletes a [userSource](../resources/usersource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|includedSources|sourceType|**TODO: Add Description**. Possible values are: `mailbox`, `site`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSource",
  "baseType": "microsoft.compliance.ediscovery.contract.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "email": "String",
  "includedSources": "String"
}
```


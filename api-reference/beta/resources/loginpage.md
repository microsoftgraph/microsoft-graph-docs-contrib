---
title: "loginPage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# loginPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List loginPages](../api/simulation-list-loginpage.md)|[loginPage](../resources/loginpage.md) collection|Get a list of the [loginPage](../resources/loginpage.md) objects and their properties.|
|[Create loginPage](../api/simulation-post-loginpage.md)|[loginPage](../resources/loginpage.md)|Create a new [loginPage](../resources/loginpage.md) object.|
|[Get loginPage](../api/loginpage-get.md)|[loginPage](../resources/loginpage.md)|Read the properties and relationships of a [loginPage](../resources/loginpage.md) object.|
|[Update loginPage](../api/loginpage-update.md)|[loginPage](../resources/loginpage.md)|Update the properties of a [loginPage](../resources/loginpage.md) object.|
|[Delete loginPage](../api/simulation-delete-loginpage.md)|None|Delete a [loginPage](../resources/loginpage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|**TODO: Add Description**|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|language|String|**TODO: Add Description**|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|source|simulationContentSource|**TODO: Add Description**.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.loginPage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loginPage",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "content": "String",
  "language": "String",
  "status": "String",
  "source": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```


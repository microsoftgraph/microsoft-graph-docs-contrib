---
title: "loginPage resource type"
description: "Represents an attack simulation login page."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# loginPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation login page.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List loginPages](../api/simulation-list-loginpage.md)|[loginPage](../resources/loginpage.md) collection|Get a list of the [loginPage](../resources/loginpage.md) objects and their properties.|
|[Get loginPage](../api/loginpage-get.md)|[loginPage](../resources/loginpage.md)|Read the properties and relationships of a [loginPage](../resources/loginpage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Login page html content.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the login page.|
|createdDateTime|DateTimeOffset|Date and time of login page creation.|
|description|String|Description about the login page.|
|displayName|String|Display name.|
|id|String|Unique identifier for a loginPage. Inherited from [entity](../resources/entity.md).|
|language|String|Login page content language.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who modified the login page|
|lastModifiedDateTime|DateTimeOffset|Date and time of login page update.|
|source|simulationContentSource|Source of login .The posspage.Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|Login page status..The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|

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
  "status": "microsoft.graph.simulationContentStatus",
  "source": "microsoft.graph.simulationContentSource",
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


---
title: "loginPage resource type"
description: "Represents an attack simulation login page."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# loginPage resource type

Namespace: microsoft.graph

Represents an attack simulation login page.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List loginPages](../api/attacksimulationroot-list-loginpage.md)|[loginPage](../resources/loginpage.md) collection|Get a list of the [loginPage](../resources/loginpage.md) objects and their properties.|
|[Get loginPage](../api/loginpage-get.md)|[loginPage](../resources/loginpage.md)|Get a [loginPage](../resources/loginpage.md) associated with an attack simulation campaign for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|The HTML content of the login page.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the login page.|
|createdDateTime|DateTimeOffset|Date and time when the login page was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Description about the login page.|
|displayName|String|Display name of the login page.|
|id|String|Unique identifier for the **loginPage** object. Inherited from [entity](../resources/entity.md).|
|language|String|The content language of the login page.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who last modified the login page.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the login page was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|source|[simulationContentStatus](../resources/simulation.md#simulationcontentsource-values)|The source of the content. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|[simulationContentStatus](../resources/simulation.md#simulationcontentstatus-values)|The login page status. Possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "content": "String",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "language": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "source": "String",
  "status": "String"
}
```

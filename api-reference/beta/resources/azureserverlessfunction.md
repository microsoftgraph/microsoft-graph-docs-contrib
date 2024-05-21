---
title: "azureServerlessFunction resource type"
description: "Represents a serverless function in an Azure authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# azureServerlessFunction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a serverless function in an Azure authorization system.

Inherits from [azureIdentity](../resources/azureidentity.md).

## Methods
None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The ID for the serverless function as defined by Microsoft Azure. Supports `$filter` (`eq`).Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The ID for the serverless function in Permissions Management. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
|resource|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Represents the resources in an authorization system.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureServerlessFunction",
  "baseType": "microsoft.graph.azureIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureServerlessFunction",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```


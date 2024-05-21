---
title: "azureIdentity resource type"
description: "Represents identities in Azure including managed identities, service principals, users, groups, and serverless functions."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# azureIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identities in Azure including managed identities, service principals, users, groups, and serverless functions.

Inherits from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).

The following resources inherit from this resource type:

- [azureManagedIdentity](azuremanagedidentity.md)
- [azureServicePrincipal](azureserviceprincipal.md)
- [azureUser](azureuser.md)
- [azureGroup](azuregroup.md)
- [azureServerlessFunction](azureserverlessfunction.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List all identities](../api/azureassociatedidentities-list-all.md)|[azureIdentity](../resources/azureidentity.md) collection|Get a list of the [azureIdentity](../resources/azureidentity.md) objects and their properties.|
|[Get azureIdentity](../api/azureidentity-get.md)|[azureIdentity](../resources/azureidentity.md)|Read the properties and relationships of an [azureIdentity](../resources/azureidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` (`eq`,`contains`).Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The ID for the identity as defined by Microsoft Azure. `$filter` (`eq`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The ID for the identity in Permissions Management. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureIdentity",
  "baseType": "microsoft.graph.authorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```


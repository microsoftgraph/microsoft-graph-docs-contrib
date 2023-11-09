---
title: "azureIdentity resource type"
description: "Represents the findings for identities in Azure."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Azure identities including managed identities, service prinicpals, users, groups, and serverless functions.

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
|[List azureIdentities](../api/azureassociatedidentities-list-all.md)|[azureIdentity](../resources/azureidentity.md) collection|Get a list of the [azureIdentity](../resources/azureidentity.md) objects and their properties.|
|[Get azureIdentity](../api/azureidentity-get.md)|[azureIdentity](../resources/azureidentity.md)|Read the properties and relationships of an [azureIdentity](../resources/azureidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` and (`eq`,`contains`).Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentityresource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

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


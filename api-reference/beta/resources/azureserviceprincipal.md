---
title: "azureServicePrincipal resource type"
description: "Represents Azure service principals."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureServicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Azure service principals.

Inherits from [azureIdentity](../resources/azureidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureServicePrincipals](../api/azureassociateidentities-list-azureserviceprincipal.md)|[azureServicePrincipal](../resources/azureserviceprincipal.md) collection|Get a list of the [azureServicePrincipal](../resources/azureserviceprincipal.md) objects and their properties.|
|[Get azureServicePrincipal](../api/azureserviceprincipal-get.md)|[azureServicePrincipal](../resources/azureserviceprincipal.md)|Read the properties and relationships of an [azureServicePrincipal](../resources/azureserviceprincipal.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` and (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
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
  "@odata.type": "microsoft.graph.azureServicePrincipal",
  "baseType": "microsoft.graph.azureIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureServicePrincipal",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```


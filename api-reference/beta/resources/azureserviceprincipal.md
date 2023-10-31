---
title: "azureServicePrincipal resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureServicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [azureIdentity](../resources/azureidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureServicePrincipals](../api/azureserviceprincipal-list.md)|[azureServicePrincipal](../resources/azureserviceprincipal.md) collection|Get a list of the [azureServicePrincipal](../resources/azureserviceprincipal.md) objects and their properties.|
|[Get azureServicePrincipal](../api/azureserviceprincipal-get.md)|[azureServicePrincipal](../resources/azureserviceprincipal.md)|Read the properties and relationships of an [azureServicePrincipal](../resources/azureserviceprincipal.md) object.|
|[Update azureServicePrincipal](../api/azureserviceprincipal-update.md)|[azureServicePrincipal](../resources/azureserviceprincipal.md)|Update the properties of an [azureServicePrincipal](../resources/azureserviceprincipal.md) object.|
|[Delete azureServicePrincipal](../api/azureserviceprincipal-delete.md)|None|Delete an [azureServicePrincipal](../resources/azureserviceprincipal.md) object.|
|[List authorizationSystem](../api/azureserviceprincipal-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/azureserviceprincipal-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/azureserviceprincipal-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

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


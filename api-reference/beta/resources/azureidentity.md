---
title: "azureIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|[List azureIdentities](../api/azureidentity-list.md)|[azureIdentity](../resources/azureidentity.md) collection|Get a list of the [azureIdentity](../resources/azureidentity.md) objects and their properties.|
|[Get azureIdentity](../api/azureidentity-get.md)|[azureIdentity](../resources/azureidentity.md)|Read the properties and relationships of an [azureIdentity](../resources/azureidentity.md) object.|
|[Update azureIdentity](../api/azureidentity-update.md)|[azureIdentity](../resources/azureidentity.md)|Update the properties of an [azureIdentity](../resources/azureidentity.md) object.|
|[Delete azureIdentity](../api/azureidentity-delete.md)|None|Delete an [azureIdentity](../resources/azureidentity.md) object.|
|[List authorizationSystem](../api/azureidentity-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/azureidentity-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/azureidentity-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

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


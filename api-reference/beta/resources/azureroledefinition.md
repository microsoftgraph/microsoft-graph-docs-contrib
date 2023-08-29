---
title: "azureRoleDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureRoleDefinitions](../api/azureauthorizationsystem-list-roledefinitions.md)|[azureRoleDefinition](../resources/azureroledefinition.md) collection|Get a list of the [azureRoleDefinition](../resources/azureroledefinition.md) objects and their properties.|
|[Create azureRoleDefinition](../api/azureauthorizationsystem-post-roledefinitions.md)|[azureRoleDefinition](../resources/azureroledefinition.md)|Create a new [azureRoleDefinition](../resources/azureroledefinition.md) object.|
|[Get azureRoleDefinition](../api/azureroledefinition-get.md)|[azureRoleDefinition](../resources/azureroledefinition.md)|Read the properties and relationships of an [azureRoleDefinition](../resources/azureroledefinition.md) object.|
|[Update azureRoleDefinition](../api/azureroledefinition-update.md)|[azureRoleDefinition](../resources/azureroledefinition.md)|Update the properties of an [azureRoleDefinition](../resources/azureroledefinition.md) object.|
|[Delete azureRoleDefinition](../api/azureauthorizationsystem-delete-roledefinitions.md)|None|Delete an [azureRoleDefinition](../resources/azureroledefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignableScopes|String collection|**TODO: Add Description**|
|azureRoleDefinitionType|azureRoleDefinitionType|**TODO: Add Description**.The possible values are: `system`, `custom`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureRoleDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureRoleDefinition",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "azureRoleDefinitionType": "String",
  "assignableScopes": [
    "String"
  ]
}
```


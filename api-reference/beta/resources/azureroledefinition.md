---
title: "azureRoleDefinition resource type"
description: "Represents an Azure role in an Azure authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# azureRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure role in an Azure authorization system.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureRoleDefinitions](../api/azureauthorizationsystem-list-roledefinitions.md)|[azureRoleDefinition](../resources/azureroledefinition.md) collection|Get a list of the [azureRoleDefinition](../resources/azureroledefinition.md) objects and their properties.|
|[Get azureRoleDefinition](../api/azureroledefinition-get.md)|[azureRoleDefinition](../resources/azureroledefinition.md)|Read the properties and relationships of an [azureRoleDefinition](../resources/azureroledefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignableScopes|String collection|Scopes at which the Azure role can be assigned. For more information about common patterns, see [Understand Azure role definitions: AssignableScopes](/azure/role-based-access-control/role-definitions#assignablescopes). Supports `$filter` (`eq`).|
|azureRoleDefinitionType|azureRoleDefinitionType|Type of Azure role. The possible values are: `system`, `custom`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|displayName|String|Name of the Azure role. Supports `$filter` (`eq`, `contains`).|
|externalId|String|Identifier of an Azure role defined by Microsoft Azure. Alternate key. Supports `$filter` (`eq`).|
|id|String|The identifier of the Azure role in Permissions Management. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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


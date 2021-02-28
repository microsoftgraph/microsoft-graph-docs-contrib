---
title: "teamsAppInstallation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsAppInstallation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsAppInstallations](../api/teamsappinstallation-list.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Get a list of the [teamsAppInstallation](../resources/teamsappinstallation.md) objects and their properties.|
|[Create teamsAppInstallation](../api/teamsappinstallation-create.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Create a new [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Get teamsAppInstallation](../api/teamsappinstallation-get.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Read the properties and relationships of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Update teamsAppInstallation](../api/teamsappinstallation-update.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Update the properties of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Delete teamsAppInstallation](../api/teamsappinstallation-delete.md)|None|Deletes a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[upgrade](../api/teamsappinstallation-upgrade.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|grantedResourceSpecificApplicationPermissions|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|teamsApp|[teamsApp](../resources/teamsapp.md)|**TODO: Add Description**|
|teamsAppDefinition|[teamsAppDefinition](../resources/teamsappdefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAppInstallation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppInstallation",
  "id": "String (identifier)",
  "grantedResourceSpecificApplicationPermissions": [
    "String"
  ]
}
```


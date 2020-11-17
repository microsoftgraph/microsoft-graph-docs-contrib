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

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List installedApps](../api/chat-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Get the teamsAppInstallation resources from the installedApps navigation property.|
|[Create installedApps](../api/chat-post-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Create a new teamsAppInstallation object.|
|[Update installedApps](../api/chat-update-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Update the properties of an installedApps object.|
|[Get installedApps](../api/chat-get-teamsappinstallation.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Read the properties and relationships of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Delete installedApps](../api/chat-delete-installedapps.md)|None|Delete a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[List teamsAppInstallations](../api/teamsappinstallation-list.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Get a list of the [teamsAppInstallation](../resources/teamsappinstallation.md) objects and their properties.|
|[Create teamsAppInstallation](../api/teamsappinstallation-create.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Create a new [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Get teamsAppInstallation](../api/teamsappinstallation-get.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Read the properties and relationships of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Update teamsAppInstallation](../api/teamsappinstallation-update.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Update the properties of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Delete teamsAppInstallation](../api/teamsappinstallation-delete.md)|None|Deletes a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[upgrade](../api/teamsappinstallation-upgrade.md)|None|**TODO: Add Description**|
|[List teamsApp](../api/teamsappinstallation-list-teamsapp.md)|[teamsApp](../resources/teamsapp.md) collection|Get the teamsApp resources from the teamsApp navigation property.|
|[Add teamsApp](../api/teamsappinstallation-post-teamsapp.md)|[teamsApp](../resources/teamsapp.md)|Add teamsApp by posting to the teamsApp collection.|
|[Remove teamsApp](../api/teamsappinstallation-delete-teamsapp.md)|None|Remove a [teamsApp](../resources/teamsapp.md) object.|
|[List teamsAppDefinition](../api/teamsappinstallation-list-teamsappdefinition.md)|[teamsAppDefinition](../resources/teamsappdefinition.md) collection|Get the teamsAppDefinition resources from the teamsAppDefinition navigation property.|
|[Add teamsAppDefinition](../api/teamsappinstallation-post-teamsappdefinition.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Add teamsAppDefinition by posting to the teamsAppDefinition collection.|
|[Remove teamsAppDefinition](../api/teamsappinstallation-delete-teamsappdefinition.md)|None|Remove a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|

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
  "baseType": "",
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


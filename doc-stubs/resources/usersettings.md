---
title: "userSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userSettings](../api/usersettings-list.md)|[userSettings](../resources/usersettings.md) collection|Get a list of the [userSettings](../resources/usersettings.md) objects and their properties.|
|[Create userSettings](../api/usersettings-create.md)|[userSettings](../resources/usersettings.md)|Create a new [userSettings](../resources/usersettings.md) object.|
|[Get userSettings](../api/usersettings-get.md)|[userSettings](../resources/usersettings.md)|Read the properties and relationships of a [userSettings](../resources/usersettings.md) object.|
|[Update userSettings](../api/usersettings-update.md)|[userSettings](../resources/usersettings.md)|Update the properties of a [userSettings](../resources/usersettings.md) object.|
|[Delete userSettings](../api/usersettings-delete.md)|None|Deletes a [userSettings](../resources/usersettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contributionToContentDiscoveryAsOrganizationDisabled|Boolean|**TODO: Add Description**|
|contributionToContentDiscoveryDisabled|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exchange|[exchangeSettings](../resources/exchangesettings.md)|**TODO: Add Description**|
|itemInsights|[userInsightsSettings](../resources/userinsightssettings.md)|**TODO: Add Description**|
|regionalAndLanguageSettings|[regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md)|**TODO: Add Description**|
|shiftPreferences|[shiftPreferences](../resources/shiftpreferences.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSettings",
  "id": "String (identifier)",
  "contributionToContentDiscoveryAsOrganizationDisabled": "Boolean",
  "contributionToContentDiscoveryDisabled": "Boolean"
}
```


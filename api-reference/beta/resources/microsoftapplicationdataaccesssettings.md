---
title: "microsoftApplicationDataAccessSettings resource type"
description: "**TODO: Add Description**"
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# microsoftApplicationDataAccessSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftApplicationDataAccessSettings](../api/microsoftapplicationdataaccesssettings-list.md)|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) collection|Get a list of the [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) objects and their properties.|
|[Update microsoftApplicationDataAccessSettings](../api/microsoftapplicationdataaccesssettings-update.md)|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md)|Update the properties of a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|disabledForGroup|String|**TODO: Add Description**|
|isEnabledForAllMicrosoftApplications|Boolean|**TODO: Add Description**|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": "Boolean",
  "disabledForGroup": "String"
}
```


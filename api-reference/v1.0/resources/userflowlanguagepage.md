---
title: "userFlowLanguagePage resource type"
description: "Determines the strings that are shown to users during a user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userFlowLanguagePage resource type

Namespace: microsoft.graph

Determines the user flow language pages that are shown to users during a user flow. These language pages include both the default language translations provided by Microsoft, or custom pages that can be created to customize the language translations.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/userflowlanguagepage-get.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md)|Retrieve the values of a default or custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|
|[Update](../api/userflowlanguagepage-put.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md)|Update the values in a custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|
|[Delete](../api/userflowlanguagepage-delete.md)|None|Deletes the values from a custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the userFlowLanguage page.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userFlowLanguagePage",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userFlowLanguagePage",
  "id": "String (identifier)"
}
```

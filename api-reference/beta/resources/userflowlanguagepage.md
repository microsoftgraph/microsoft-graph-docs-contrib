---
title: "userFlowLanguagePage resource type"
description: "User flow language pages are used to determine the strings users will be shown during the user journey you have configured using user flows."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# userFlowLanguagePage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

User flow language pages are used to determine the strings users will be shown during the user journey you have configured using user flows. These language pages include both the default language translations provided by Microsoft, or custom pages that can be created to customize the language translations.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get userFlowLanguagePage](../api/userflowlanguagepage-get.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md)|Retrieve the values of a default or custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|
|[Update userFlowLanguagePage](../api/userflowlanguagepage-put.md)|[userFlowLanguagePage](../resources/userflowlanguagepage.md)|Update the values in a custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|
|[Delete userFlowLanguagePage](../api/userflowlanguagepage-delete.md)|None|Deletes the values from a custom [userFlowLanguagePage](../resources/userflowlanguagepage.md) object.|

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

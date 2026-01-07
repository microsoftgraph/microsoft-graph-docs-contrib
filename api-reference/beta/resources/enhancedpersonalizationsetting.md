---
title: "enhancedPersonalizationSetting resource type"
description: "Represents a setting that controls whether Microsoft 365 Copilot can use features that enhance its personalization capabilities."
author: "Ross-GH"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "microsoft-365-copilot"
doc_type: resourcePageType
---

# enhancedPersonalizationSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting that controls whether Microsoft 365 Copilot can use features that enhance its personalization capabilities. If enabled multiple features contributing to deeper personalization are enabled. For more information, see [control enhanced personalization privacy](/graph/control-enhanced-personalization-privacy).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/enhancedpersonalizationsetting-get.md)|[enhancedPersonalizationSetting](../resources/enhancedpersonalizationsetting.md)|Read the properties and relationships of an enhancedPersonalizationSetting object.|
|[Update](../api/enhancedpersonalizationsetting-update.md)|[enhancedPersonalizationSetting](../resources/enhancedpersonalizationsetting.md)|Update the properties of an enhancedPersonalizationSetting object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|disabledForGroup|String|The ID of a Microsoft Entra group to which the value is used to disable the control for populated users. The default value is `null`. This parameter is optional.|
|isEnabledInOrganization|Boolean|If true, enables the enhanced personalization control and therefore related features as defined in [control enhanced personalization privacy](/graph/control-enhanced-personalization-privacy)|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enhancedPersonalizationSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enhancedPersonalizationSetting",
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```

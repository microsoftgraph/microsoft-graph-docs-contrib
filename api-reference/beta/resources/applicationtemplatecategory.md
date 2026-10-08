---
title: "applicationTemplateCategory resource type"
description: "Represents a single category that can appear in the categories property of an applicationTemplate."
author: "jakubcermak"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 06/03/2026
---

# applicationTemplateCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single category that can appear in the `categories` property of an [applicationTemplate](../resources/applicationtemplate.md). Each category exposes both the underlying value used by the API and a localizable display name suitable for showing in a UI.

Use the [applicationTemplate: categories](../api/applicationtemplate-categories.md) function to retrieve the full list of supported categories.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The localizable display name of the category, suitable for showing in a UI.|
|value|String|The category value as it appears in the `categories` property of an [applicationTemplate](../resources/applicationtemplate.md). Use this value when filtering application templates by category.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationTemplateCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationTemplateCategory",
  "displayName": "String",
  "value": "String"
}
```

---
title: "plannerFormReference resource type"
description: "Represents complete information about a form, including the form's display name, URL, and the response data."
ms.localizationpriority: medium
author: "cpanga22"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents complete details about a form, including the form's display name, URL, and the response data. This object is typically used as a value in the [plannerFormsDictionary] object, where each value must be a (plannerFormsDictionary.md) object.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the form.|
|formWebUrl|String|The URL of the form associated with the **plannerFormReference** object.|
|formResponse|String|The unique identifier of the response.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFormReference"
}-->

```json
{
    "displayName": "String-value",
    "formWebUrl": "String-value",
    "formResponse": "String-value"
}

```

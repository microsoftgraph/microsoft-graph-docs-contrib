---
title: "activityMetadata"
toc.title: "activityMetadata (preview)"
description: "Represents metadata about a specific user activity being evaluated, including the activity type and location."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activityMetadata complexType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about a specific user activity being evaluated, including the activity type and location. Used within requests like `processContentRequest`.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|[microsoft.graph.userActivityType](../resources/useractivitytype.md)|The type of user activity (e.g., `uploadText`, `downloadFile`). Required.|
|applicationLocation|String|The location associated with the activity, typically a URL. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.activityMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activityMetadata",
  "activity": "microsoft.graph.userActivityType",
  "applicationLocation": "String"
}
```

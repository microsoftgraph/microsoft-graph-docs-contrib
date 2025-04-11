---
title: "activityMetadata resource type"
description: "Represents metadata about a specific user activity being evaluated, including the activity type and location."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activityMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides context about a specific user activity being processed or evaluated, such as the type of action (upload/download) and the associated location (URL). Used within requests like `processContentRequest`.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|[microsoft.graph.userActivityType](../resources/useractivitytype.md)|The type of user activity (e.g., `uploadText`, `downloadFile`). Required.|
|applicationLocation|String|The location associated with the activity, typically a URL. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.activityMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.activityMetadata",
  "activity": "String",
  "applicationLocation": "String"
}
```

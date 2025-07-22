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

Represents metadata about a specific user activity being evaluated, including the activity type and location.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|microsoft.graph.security.userActivityType|The type of user activity. Possible values are `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `unknownFutureValue`. Required.|

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
}
```

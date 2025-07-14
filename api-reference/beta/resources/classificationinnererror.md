---
title: "classificationInnerError resource type"
description: "Contains more specific, potentially internal, details about an error that occurred during data classification, label evaluation, or policy processing."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classificationInnerError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains more specific, potentially internal, details about an error that occurred during data classification, label evaluation, or policy processing. 

## Properties

| Property        | Type           | Description                                                           |
| :-------------- | :------------- | :-------------------------------------------------------------------- |
| activityId      | String         | The activity ID associated with the request that generated the error. |
| clientRequestId | String         | The client request ID, if provided by the caller.                      |
| code            | String         | A more specific, potentially internal, error code string.              |
| errorDateTime   | DateTimeOffset | The date and time the inner error occurred.                           |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.classificationInnerError",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.classificationInnerError",
  "errorDateTime": "String (timestamp)",
  "code": "String",
  "clientRequestId": "String",
  "activityId": "String"
}
```

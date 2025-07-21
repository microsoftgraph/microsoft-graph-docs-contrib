---
title: "signUpStatus resource type"
description: "Provides the sign-up status (success or failure) of the sign-up step."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "nanguil"
ms.date: 11/26/2024 
---

# signUpStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the status (success or failure) of the sign-up step.



## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|additionalDetails|String|Provides additional details on the sign-up activity.|
|errorCode|Int32|Provides the 5-6 digit error code that's generated during a sign-up failure.|
|failureReason|String|Provides the error message or the reason for failure for the corresponding sign-up activity.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signUpStatus"
}-->

```json
{
  "additionalDetails": "String",
  "errorCode": 1024,
  "failureReason": "String"
}

```


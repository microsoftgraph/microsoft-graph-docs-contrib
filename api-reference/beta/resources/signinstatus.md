---
title: "signInStatus resource type"
description: "Provides the sign-in status (Success or Failure) of the sign-in."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 03/15/2024
---

# signInStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the sign-in status (Success or Failure) of the sign-in



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|additionalDetails|String|Provides additional details on the sign-in activity|
|errorCode|Int32|Provides the 5-6 digit error code that's generated during a sign-in failure. Check out the [list of error codes and messages](/entra/identity/monitoring-health/howto-troubleshoot-sign-in-errors#sign-in-error-codes).|
|failureReason|String|Provides the error message or the reason for failure for the corresponding sign-in activity. Check out the [list of error codes and messages](/azure/active-directory/active-directory-reporting-activity-sign-ins-errors).|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInStatus"
}-->

```json
{
  "additionalDetails": "String",
  "errorCode": 1024,
  "failureReason": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



---
title: "signUpStatus resource type"
description: "Provides the sign-up status (Success or Failure) of the sign-up step."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "nanguil"
---

# signUpStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the status (Success or Failure) of the sign-up step



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|additionalDetails|String|Provides additional details on the sign-in activity|
|errorCode|Int32|Provides the 5-6 digit error code that's generated during a sign-in failure. Check out the [list of error codes and messages](). ARTICLE DOES NOT YET EXIST - should be /entra/identity/monitoring-health/howto-troubleshoot-sign-up-errors#sign-up-error-codes|
|failureReason|String|Provides the error message or the reason for failure for the corresponding sign-up activity. Check out the [list of error codes and messages](). ARTICLE DOES NOT YET EXIST - should be /entra/identity/monitoring-health/howto-troubleshoot-sign-up-errors#sign-up-error-codes|

### Filtering

When filtering on the **signUpIdentity** property for a **selfServiceSignUp**:

- Filtering on **signUpIdentifierType** is supported for the following values: `federated`, `emailAddress`.
 

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


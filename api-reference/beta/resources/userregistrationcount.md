---
title: "userRegistrationCount resource type"
description: "Represents the registration count and status for users in your tenant."
localization_priority: Normal
author: "davidmu1"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# userRegistrationCount resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **userRegistrationCount** resource represents the registration count and status for users in your tenant.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| registrationCount | Int64 | Provides the registration count for your tenant. |
| registrationStatus | String | Possible values are: `registered`, `enabled`, `capable`, `mfaRegistered`, `unknownFutureValue`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userRegistrationCount",
  "baseType": null
}-->

```json
{ 
  "registrationStatus":"registered", 
  "registrationCount": 23423
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userRegistrationCount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
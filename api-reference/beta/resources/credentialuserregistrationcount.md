---
title: "credentialUserRegistrationCount resource type"
description: "Provide the summary of self-service password reset and multi-factor authentication registration for a given tenant."
localization_priority: Normal
author: "davidmu1"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# credentialUserRegistrationCount resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **credentialUserRegistrationCount** resource represents the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get credentialUserRegistrationCount](../api/reportroot-getcredentialuserregistrationcount.md) | credentialUserRegistrationCount | Read properties and relationships of a credentialUserRegistrationCount object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | Read-only. |
| totalUserCount | Int64 | Provides the total user count in the tenant. |
| userRegistrationCounts | [userRegistrationCount](userregistrationcount.md) collection | A collection of registration count and status information for users in your tenant. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
  "totalUserCount" : 23123,
  "userRegistrationCounts" :
  [
    { "userRegistrationStatus":"registered", "userRegistrationCount": 23423 },
    { "userRegistrationStatus":"enabled", "userRegistrationCount": 4234 },
    { "userRegistrationStatus":"capable", "userRegistrationCount": 323 },
    { "userRegistrationStatus":"mfaRegistered", "userRegistrationCount": 33 }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationCount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
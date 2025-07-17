---
title: "credentialUserRegistrationCount resource type"
description: "Represents the current state of how many users in your organization are registered for self-service password reset and multifactor authentication capabilities."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# credentialUserRegistrationCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are registered for self-service password reset and multifactor authentication capabilities. For more information about license requirements for this feature, see [Authentication Methods Activity: Permissions and licenses](/entra/identity/authentication/howto-authentication-methods-activity#permissions-and-licenses).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/reportroot-getcredentialuserregistrationcount.md) | credentialUserRegistrationCount collection | Report the current state of how many users in your organization are registered for self-service password reset and multifactor authentication (MFA) capabilities. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | The unique identifier for the activity. Read-only. |
| totalUserCount | Int64 | Provides the count of users with **accountEnabled** set to `true` in the tenant. |
| userRegistrationCounts | [userRegistrationCount](userregistrationcount.md) collection | A collection of registration count and status information for users in your tenant. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "totalUserCount" : 23123,
  "userRegistrationCounts" :
  [
    { "registrationStatus":"registered", "registrationCount": 23423 },
    { "registrationStatus":"enabled", "registrationCount": 4234 },
    { "registrationStatus":"capable", "registrationCount": 323 },
    { "registrationStatus":"mfaRegistered", "registrationCount": 33 }
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


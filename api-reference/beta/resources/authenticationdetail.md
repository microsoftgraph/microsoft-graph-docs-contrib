---
title: "authenticationDetail resource type"
description: "Provides the authentication details for a user sign-in, such as multifactor authentication (MFA) information and PTA/PHS details."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# authenticationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the authentication details for a user sign-in, such as multifactor authentication (MFA) information and PTA/PHS details.

## Properties

| Property                       | Type           | Description                                                                                                                                                                                                              |
|:-------------------------------|:---------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| authenticationMethod           | String         | The type of authentication method used to perform this step of authentication. Possible values: `Password`, `SMS`, `Voice`, `Authenticator App`, `Software OATH token`, `Satisfied by token`, `Previously satisfied`.                            |
| authenticationMethodDetail     | String         | Details about the authentication method used to perform this authentication step. For example, phone number (for SMS and voice), device name (for Authenticator app), and password source (for example, cloud, AD FS, PTA, PHS). |
| authenticationStepDateTime     | DateTimeOffset | Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                           |
| authenticationStepRequirement  | String         | The step of authentication that this satisfied. For example, primary authentication, or multifactor authentication.                                                                                                     |
| authenticationStepResultDetail | String         | Details about why the step succeeded or failed. For examples, user is blocked, fraud code entered, no phone input - timed out, phone unreachable, or claim in token.                                                     |
| succeeded                      | Boolean        | Indicates the status of the authentication step. Possible values: `succeeded`, `failed`.                                                                                                                                 |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authenticationDetail",
  "baseType": null
}-->

```json
{
  "authenticationMethod": "String",
  "authenticationMethodDetail": "String",
  "authenticationStepDateTime": "String (timestamp)",
  "authenticationStepRequirement": "String",
  "authenticationStepResultDetail": "String",
  "succeeded": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "authenticationDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


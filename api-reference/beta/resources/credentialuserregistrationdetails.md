---
title: "credentialUserRegistrationDetails resource type"
description: "Represents the details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
toc.title: Credential user registration details (deprecated)
---

# credentialUserRegistrationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The credential user registration details API is deprecated and will stop returning data on June 30, 2024. Use the new [User registration details](../resources/userregistrationdetails.md) API instead.

Represents the details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users. Details include user information, status of registration, and the authentication method used.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/reportroot-list-credentialuserregistrationdetails.md) | credentialUserRegistrationDetails collection | Get a list of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects for a given tenant.
 |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethods | registrationAuthMethod collection | Represents the authentication method that the user has registered. Possible values are: `email`, `mobilePhone`, `officePhone`,  `securityQuestion` (only used for self-service password reset), `appNotification`,  `appCode`, `alternateMobilePhone` (supported only in registration),  `fido`,  `appPassword`,  `unknownFutureValue`. |
| id | String | The unique identifier for the activity. Read-only.|
| isCapable | Boolean | Indicates whether the user is ready to perform self-service password reset or MFA. |
| isEnabled | Boolean | Indicates whether the user enabled to perform self-service password reset. |
| isMfaRegistered | Boolean | Indicates whether the user is registered for MFA. |
| isRegistered | Boolean | Indicates whether the user has registered any authentication methods for self-service password reset. |
| userDisplayName | String | Provides the user name of the corresponding user. |
| userPrincipalName | String | Provides the user principal name of the corresponding user. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "userPrincipalName":"String",
  "userDisplayName": "String",
  "authMethods": ["string"],
  "isRegistered" : false,
  "isEnabled" : true,
  "isCapable" : false,
  "isMfaRegistered" : true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



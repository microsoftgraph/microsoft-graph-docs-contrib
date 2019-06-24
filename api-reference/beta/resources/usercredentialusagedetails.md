---
title: "userCredentialUsageDetails resource type"
description: "Provide the details of self-service password reset usage for a given tenant."
localization_priority: Normal
author: "davidmu1"
ms.prod: "identity and access reports"
doc_type: "resourcePageType"
---

# userCredentialUsageDetails resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **userCredentialUsageDetails** resource represents the self-service password reset usage for a given tenant. Details include user information, status of the reset, and the reason for failure.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get userCredentialUsageDetails](../api/reportroot-list-usercredentialusagedetails.md) | userCredentialUsageDetails | Read properties and relationships of a userCredentialUsageDetails object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethod | string | Possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion` (only used for self-service password reset), `appNotification`, `appCode`, `alternateMobileCall`, `fido` (only registered through combined security info registration), `appPassword` (only used for MFA), `unknownFutureValue`. |
| eventDateTime | DateTimeOffset | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. |
| failureReason | String | Provides the failure reason for the corresponding reset. |
| feature | string | Possible values are: `registration`, `reset`, `unknownFutureValue`. |
| id | String | Read-only. Unique Id of the activity. |
| isSuccess | Boolean | Indicates success or failure. |
| userDisplayName | String | User name of the user performing the reset. |
| userPrincipalName | String | User Principal Name of the user performing the reset. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userCredentialUsageDetails",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
  "feature":"registration",
  "userPrincipalName":"abc@cd.com",
  "userDisplayName": "abc",
  "isSuccess" : true,
  "authMethod": "email",
  "failureReason": "User contacted an admin after trying the email verification option",
  "eventDateTime" : "2019-04-01T00:00:00Z"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userCredentialUsageDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
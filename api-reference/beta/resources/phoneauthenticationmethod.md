---
title: "phoneAuthenticationMethod resource type"
description: "A representation of a phone registered to a user."
ms.localizationpriority: medium
author: "luc-msft"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
toc.title: Phone
ms.date: 07/22/2024
---

# phoneAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a phone registered to a user. This resource includes the phone number, the phone type, and whether the phone is configured for the user to sign in via SMS.

A phone has one of three types: mobile, alternate mobile, or office. A user can have one number registered for each type, and must have a mobile phone before an alternate mobile phone is added. When using a phone for multi-factor authentication (MFA) or self-service password reset (SSPR), the mobile phone is the default and the alternate mobile phone is the backup. 

Primary mobile phones can be used for both SMS and voice calls, depending on the tenant settings.

An office phone can only receive voice calls, not SMS messages.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/authentication-list-phonemethods.md) | [phoneAuthenticationMethod](phoneauthenticationmethod.md) | Read properties and relationships of all of this user's phoneAuthenticationMethod objects. |
| [Get](../api/phoneauthenticationmethod-get.md) | [phoneAuthenticationMethod](phoneauthenticationmethod.md) | Read properties and relationships of phoneAuthenticationMethod object. |
|[Add](../api/authentication-post-phonemethods.md)|[phoneAuthenticationMethod](phoneauthenticationmethod.md)|Create a user's phoneAuthenticationMethod object.|
| [Update](../api/phoneauthenticationmethod-update.md) | [phoneAuthenticationMethod](phoneauthenticationmethod.md) | Update phoneAuthenticationMethod object. |
| [Delete](../api/phoneauthenticationmethod-delete.md) | None | Delete phoneAuthenticationMethod object. |
|[Disable SMS sign-in](../api/phoneauthenticationmethod-disablesmssignin.md)|None|Turn off SMS sign-in for a user.|
|[Enable SMS sign-in](../api/phoneauthenticationmethod-enablesmssignin.md)|None|Turn on SMS sign-in for a user.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset| The date and time the authentication method was registered to the user. Read-only. Optional. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| The identifier of this phone registered to this user. Read-only. <br/><br/>The value of ID is one of the following:<ul><li>`b6332ec1-7057-4abe-9331-3d72feddfe41` - where **phoneType** is `alternateMobile`.</li><li>`e37fc753-ff3b-4958-9484-eaa9425c82bc` - where **phoneType** is `office`.</li><li>`3179e48a-750b-4051-897c-87b9720928f7` - where **phoneType** is `mobile`.</li>|
|phoneNumber|String|The phone number to text or call for authentication. Phone numbers use the format "+\<country code\> \<number\>x\<extension\>", with extension optional. For example, +1 5555551234 or +1 5555551234x123 are valid. Numbers are rejected when creating/updating if they don't match the required format. |
|phoneType|authenticationPhoneType|The type of this phone. Possible values are: `mobile`, `alternateMobile`, or `office`.|
|smsSignInState|authenticationMethodSignInState|Whether a phone is ready to be used for SMS sign-in or not. Possible values are: `notSupported`, `notAllowedByPolicy`, `notEnabled`, `phoneNumberNotUnique`, `ready`, or `notConfigured`, `unknownFutureValue`.|

### authenticationPhoneType values

Phones can be of three types, the following are the possible values.

|Value|Description|
|--------|-----------|
|mobile|A primary mobile phone, usable for SMS and voice calls.|
|alternateMobile|An alternate or backup mobile phone, usable only for voice calls.|
|office|An office phone or landline, usable only for voice calls.|

### authenticationMethodSignInState values

The SMS sign-in state property gives information about whether or not a phone number is ready to sign in via SMS. The following are the possible values.

|Value|Description|
|--------|-----------|
|notSupported|Primary sign-in not supported on this authentication method - for example, sign-in can be enabled only on a user's primary mobile number, not the alternate number.|
|notAllowedByPolicy|This user isn't enabled by policy to use this method as a primary sign-in.|
|notConfigured|This user is enabled by policy to use this method as primary sign-in but needs to take further action to configure it.|
|phoneNumberNotUnique|This user attempted to set up a phone number as primary sign-in but the number wasn't unique and can't be used as a sign-in name.|
|ready|This authentication method is ready for use in primary sign-in.|
|notEnabled|This sign-in method isn't enabled|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.phoneAuthenticationMethod",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.phoneAuthenticationMethod",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "phoneNumber": "String",
  "phoneType": "string",
  "smsSignInState": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "phoneAuthenticationMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



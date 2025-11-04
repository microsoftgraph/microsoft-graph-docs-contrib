---
title: "passwordAuthenticationMethod resource type"
description: "A representation of a password registered to a user."
ms.localizationpriority: medium
author: "zhvolosh"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
toc.title: Password
ms.date: 07/29/2025
---

# passwordAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a user's password. For security, the password itself will never be returned in the object, but action can be taken to reset a password.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List](../api/authentication-list-passwordmethods.md) | [passwordAuthenticationMethod](passwordauthenticationmethod.md) collection | Read the properties and relationships of all of this user's **passwordAuthenticationMethod** objects. |
|[Get](../api/passwordauthenticationmethod-get.md) | [passwordAuthenticationMethod](passwordauthenticationmethod.md) | Read the properties and relationships of a **passwordAuthenticationMethod** object. |
|[Reset](../api/authenticationmethod-resetpassword.md)|None|Reset a user's password in the cloud and, if synced, on-premises.|
|[Get long running operation](../api/longrunningoperation-get.md)|None|Get the status of the password reset long running operation if the reset operation returned a **Location** object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The date and time when this password was last updated. This property is currently not populated. Read-only. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| The identifier of this password registered to this user. This is generally `28c10230-6103-485e-b985-444c60001490`. Read-only.|
|lastUsedDateTime|DateTimeOffset|The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|password|String|For security, the password is always returned as `null` from a LIST or GET operation.|

## Relationships

None.

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordAuthenticationMethod",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
  "createdDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "password": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordAuthenticationMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



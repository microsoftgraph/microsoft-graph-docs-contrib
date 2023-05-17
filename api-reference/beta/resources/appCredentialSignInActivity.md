---
title: "appCredentialSignInActivity resource type"
description: "Represents an application credential activity in a given tenant."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# appCredentialSignInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an application credential activity in a given tenant. Contains information about the last usage time of an application credential.

## Methods

| Method                                                                         | Return Type                                                                           | Description                                                                |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------------------ | :------------------------------------------------------------------------- |
| [List appCredentialSignInActivity](../api/appcredentialsigninactivity-list.md) | [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) collection | R
Get a list of [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) objects that contains recent activity of application credentials.                    |
| [Get appCredentialSignInActivity](../api/appcredentialsigninactivity-get.md)   | [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md)            | Get an [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) object that contains recent activity of an application credential. |

## Properties

| Property                 | Type                                             | Description                                                                                           |
| ------------------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| appId                    | String                                           | The ID of the credential application.                                                                 |
| appObjectId              | String                                           | The ID of the credential application instance.                                                        |
| createdDateTime          | DateTimeOffset                                   | The dateTimeOffset when the credential was created.                                                   |
| credentialOrigin         | applicationKeyOrigin                             | The type the key credential originated from; possible values are "application" or "servicePrincipal". |
| expirationDateTime       | DateTimeOffset                                   | The dateTimeOffset the credential is set to expire.                                                   |
| id                       | String                                           | The unique identifier of the appCredentialSignInActivity instance in the response.                    |
| keyId                    | String                                           | The keyId of the credential.                                                                          |
| keyType                  | applicationKeyType                               | Specifies the key type. The possible values are: `clientSecret`, `certificate`, `unknownFutureValue`. |
| keyUsage                 | applicationKeyUsage                              | Specifies the how the key was used. The possible values are: `sign`, `verify`, `unknownFutureValue`.  |
| resourceId               | String                                           | The ID of the accessed resource.                                                                      |
| servicePrincipalObjectId | String                                           | The ID of the service principal.                                                                      |
| signInActivity           | [signInActivity](../resources/signinactivity.md) | The sign-in activity of the credential across all flows.                                              |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appCredentialSignInActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.appCredentialSignInActivity",
  "appId": "String",
  "appObjectId": "String",
  "createdDateTime": "String (timestamp)",
  "credentialOrigin": "String",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "keyId": "String",
  "keyType": "String",
  "keyUsage": "String",
  "resourceId": "String",
  "servicePrincipalObjectId": "String",
  "signInActivity": {"@odata.type": "microsoft.graph.signInActivity"}
}
```




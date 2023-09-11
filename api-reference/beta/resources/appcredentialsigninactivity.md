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

Represents an application credential activity in a given tenant. This resource contains information about the last usage time of an application credential.

## Methods

| Method                                                                         | Return Type                                                                           | Description                                                                |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------------------ | :------------------------------------------------------------------------- |
| [List appCredentialSignInActivities](../api/reportroot-list-appcredentialsigninactivities.md) | [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) collection | Get a list of [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) objects that contains recent activity of application credentials.                    |
| [Get appCredentialSignInActivity](../api/appcredentialsigninactivity-get.md)   | [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md)            | Get an [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) object that contains recent activity of an application credential. |

## Properties

| Property                 | Type                                             | Description                                                                                           |
| ------------------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| appId                    | String                                           | The globally unique appId (also called *client ID* on the Azure portal) of the credential application.                                                                 |
| appObjectId              | String                                           | The ID of the credential application instance.                                                        |
| createdDateTime          | DateTimeOffset                                   | The date and time when the credential was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                   |
| credentialOrigin         | applicationKeyOrigin                             | The type the key credential originated from. Possible values are: `application`, `servicePrincipal`, `unknownFutureValue`. |
| expirationDateTime       | DateTimeOffset                                   | The date and time when the credential is set to expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                   |
| id                       | String                                           | The unique identifier of the **appCredentialSignInActivity** instance in the response.                    |
| keyId                    | String                                           | The key ID of the credential.                                                                          |
| keyType                  | applicationKeyType                               | Specifies the key type. The possible values are: `clientSecret`, `certificate`, `unknownFutureValue`. |
| keyUsage                 | applicationKeyUsage                              | Specifies what the key was used for. The possible values are: `sign`, `verify`, `unknownFutureValue`.  |
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




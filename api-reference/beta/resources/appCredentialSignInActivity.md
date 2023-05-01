---
title: "appCredentialSignInActivity resource type"
description: "Represents the application credential activity in a given tenant."
localization_priority: medium
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# appCredentialSignInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The A sign-in activity for an application credential.  Contains information about last usage time of the application credential.

## Methods

| Method                                                                         | Return Type                 | Description                                                                |
| :----------------------------------------------------------------------------- | :-------------------------- | :------------------------------------------------------------------------- |
| [List appCredentialSignInActivity](../api/appcredentialsigninactivity-list.md) | appCredentialSignInActivity | Retrieve a list of appCredentialSignInActivity objects.                    |
| [Get appCredentialSignInActivity](../api/appcredentialsigninactivity-get.md)   | appCredentialSignInActivity | Read properties and relationships of a appCredentialSignInActivity object. |

## Properties

| Property                 | Type                                             | Description                                                                                           |
| ------------------------ | ------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| appId                    | String                                           | The id of the credential application.                                                                 |
| appObjectId              | String                                           | The id of the credential application instance.                                                        |
| createdDateTime          | DateTimeOffset                                   | The dateTimeOffset when the credential was created.                                                   |
| credentialOrigin         | applicationKeyOrigin                             | The type the key credential originated from; possible values are "application" or "servicePrincipal". |
| expirationDateTime       | DateTimeOffset                                   | The dateTimeOffset the credential is set to expire.                                                   |
| id                       | String                                           | The unique identifier of the appCredentialSignInActivity instance in the response.                    |
| keyId                    | String                                           | The key id of the credential.                                                                         |
| keyType                  | applicationKeyType                               | Specifies the key type. The possible values are: `clientSecret`, `certificate`, `unknownFutureValue`. |
| keyUsage                 | applicationKeyUsage                              | Specifies the how the key was used. The possible values are: `sign`, `verify`, `unknownFutureValue`.  |
| resourceId               | String                                           | The id of the accessed resource.                                                                      |
| servicePrincipalObjectId | String                                           | The id of the service principal.                                                                      |
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
  "id": "String (identifier)",
  "keyId": "String",
    "keyType": "string",
    "keyUsage": "String",
    "appId": "string",
    "appObjectId": "string",
    "servicePrincipalObjectId": "string",
    "resourceId": "string",
    "credentialOrigin": "String",
    "createdDateTime": "String (timestamp)",
    "expirationDateTime": "String (timestamp)",
    "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  }
}
```




---
title: "appCredentialSignInActivity resource type"
description: "Represents the application credential activity in a given tenant."
localization_priority: Normal
author: "madansr7"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# appCredentialSignInActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The A sign-in activity for an application credential.  Contains information about last usage time of the application credential.

## Methods

| Method                                                                          | Return Type                 | Description                                                                |
| :------------------------------------------------------------------------------ | :-------------------------- | :------------------------------------------------------------------------- |
| [List appCredentialSignInActivity](../api/serviceprincipal-lastusedate-list.md) | appCredentialSignInActivity | Retrieve a list of appCredentialSignInActivity objects.                    |
| [Get appCredentialSignInActivity](../api/serviceprincipal-lastusedate-get.md)   | appCredentialSignInActivity | Read properties and relationships of a appCredentialSignInActivity object. |

## Properties

| Property                 | Type                           | Description                                                                                           |
| ------------------------ | ------------------------------ | ----------------------------------------------------------------------------------------------------- |
| id                       | string                         | The unique identifier of the appCredentialSignInActivity instance in the response.                    |
| keyId                    | string                         | The key id of the credential.                                                                         |
| keyType                  | string                         | Specifies the key type; "certificate" or "secret".                                                    |
| keyUsage                 | enum                           | Specifies what the key was used for; possible values are "sign" or "verify".                          |
| appId                    | string                         | The id of the credential application.                                                                 |
| appObjectId              | string                         | The id of the credential application instance.                                                        |
| servicePrincipalObjectId | string                         | The id of the service principal.                                                                      |
| resourceId               | string                         | The id of the accessed resource.                                                                      |
| credentialOrigin         | enum                           | The type the key credential originated from; possible values are "application" or "servicePrincipal". |
| createdDateTime          | DateTimeOffset                 | The dateTimeOffset when the credential was created.                                                   |
| expirationDateTime       | DateTimeOffset                 | The dateTimeOffset the credential is set to expire.                                                   |
| signInActivity           | microsoft.graph.signInActivity | The sign-in activity of the credential across all flows.                                              |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
    "id": "string",
    "keyId": "string",
    "keyType": "string",
    "keyUsage": "enum",
    "appId": "string",
    "appObjectId": "string",
    "servicePrincipalObjectId": "string",
    "resourceId": "string",
    "credentialOrigin": "enum",
    "createdDateTime": "DateTimeOffset",
    "expirationDateTime": "DateTimeOffset",
    "signInActivity": "microsoft.graph.signInActivity"
}
```




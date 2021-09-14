---
title: "Get federatedIdentityCredential"
description: "Read the properties and relationships of a federatedIdentityCredential object."
author: "kjyam98"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permissions                                  | Type                                             | Entities/APIs Covered                                               |
| -------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------- |
| Application.Read.All | Delegated and app-only| Allows reading of the  `federatedIdentity` linked to apps and service principals |
| Application.Readwrite.Ownedby | Delegated and app-only | Allows reading and writing (creating, updating, deleting) of the `federatedIdentity` entity linked to owned apps and service principals |
| Application.Readwrite.All | Delegated and app-only | Allows reading and writing (creating, updating, deleting) of the `federatedIdentity` entity linked to apps and service principals |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
GET /servicePrincipals/{servicePrincipalsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_federatedidentitycredential"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.federatedIdentityCredential"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.federatedIdentityCredential",
    "name": "String",
    "issuer": "String",
    "subject": "String",
    "description": "String",
    "audiences": [
      "String"
    ]
  }
}
```


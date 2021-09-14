---
title: "List federatedIdentityCredentials"
description: "Get a list of the federatedIdentityCredential objects and their properties."
author: "kjyam98"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List federatedIdentityCredentials
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects and their properties.

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
GET /applications/{applicationsId}/federatedIdentityCredentials
GET /servicePrincipals/{servicePrincipalsId}/federatedIdentityCredentials
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

If successful, this method returns a `200 OK` response code and a collection of [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_federatedidentitycredential"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.federatedIdentityCredential)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.federatedIdentityCredential",
      "name": "String",
      "issuer": "String",
      "subject": "String",
      "description": "String",
      "audiences": [
        "String"
      ]
    }
  ]
}
```


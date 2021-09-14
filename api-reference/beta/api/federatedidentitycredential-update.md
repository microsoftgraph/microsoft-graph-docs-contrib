---
title: "Update federatedIdentityCredential"
description: "Update the properties of a federatedIdentityCredential object."
author: "kjyam98"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

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
PATCH /applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
PATCH /servicePrincipals/{servicePrincipalsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

The following table shows the properties that are required when you update the [federatedIdentityCredential](../resources/federatedidentitycredential.md).

|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description**|
|issuer|String|**TODO: Add Description**|
|subject|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|audiences|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_federatedidentitycredential"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
Content-Type: application/json
Content-length: 203

{
  "@odata.type": "#microsoft.graph.federatedIdentityCredential",
  "name": "String",
  "issuer": "String",
  "subject": "String",
  "description": "String",
  "audiences": [
    "String"
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedIdentityCredential",
  "name": "String",
  "issuer": "String",
  "subject": "String",
  "description": "String",
  "audiences": [
    "String"
  ]
}
```


---
title: "Update federatedIdentityCredential"
description: "Update the properties of a federatedIdentityCredential object."
author: "kjyam98"
localization_priority: Normal
ms.prod: "applications"
doc_type: apiPageType
---

# Update federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All    |
|Delegated (personal Microsoft account) | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All    |
|Application | Application.Read.All, Application.Readwrite.Ownedby, Application.Readwrite.All |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /applications/{applicationsId}/federatedIdentityCredentials/{federatedIdentityCredentialId}
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
PATCH https://graph.microsoft.com/beta/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/15be77d1-1940-43fe-8aae-94a78e078da0
Content-Type: application/json

{
    "name": "testing02",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "Updated description",
    "audiences": [
        "api://AzureADTokenExchange"
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
HTTP/1.1 204 No Content

```


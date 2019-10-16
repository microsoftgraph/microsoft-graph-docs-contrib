---
title: "trustFrameworkKeySet: uploadSecret"
description: "This action can be used to upload a secret to a key set."
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# trustFrameworkKeySet: uploadSecret

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This action can be used to upload a plain text secret to a key set. Example of a secret will be an application secret in AAD, Google, Facebook or any other identity prvovider.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | TrustFrameworkKeySet.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | TrustFrameworkKeySet.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /trustFramework/keySets/{id}/uploadSecret
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|use|String|Similar to 'use' property of trustFrameworkKey|
|k|String|Similar to 'k' property of trustFrameworkKey. This is the field which is used  to send `secret`|
|nbf|Int64|Similar to 'nbf' property of trustFrameworkKey|
|exp|Int64|Similar to 'exp' property of trustFrameworkKey|

## Response

If successful, this method returns `200, OK` response code and a new [trustFrameworkKey](../resources/trustframeworkkey.md) object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "trustframeworkkeyset_uploadsecret"
}-->

```http
POST https://graph.microsoft.com/beta/trustFramework/keySets/{id}/uploadSecret
Content-type: application/json

{
  "use": "use-value",
  "k": "application-secret-to-be-uploaded",
  "nbf": 1508969811,
  "exp": 1508973711
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkKey"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
	"kid": "kid-value",
	"use": "use-value",
	"kty": "OCT",
	"nbf": "1508969811",
	"exp": "1508973711"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet: uploadSecret",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
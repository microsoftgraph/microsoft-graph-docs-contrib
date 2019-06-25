---
title: "Create certificateBasedAuthConfiguration"
description: "Use this API to create a new certificateBasedAuthConfiguration."
localization_priority: Normal
author: "eketo-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Create certificateBasedAuthConfiguration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new certificateBasedAuthConfiguration.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Application    | Organization.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /organization/{id}/certificateBasedAuthConfiguration
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [certificateBasedAuthConfiguration](../resources/certificatebasedauthconfiguration.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_certificatebasedauthconfiguration_from_certificatebasedauthconfiguration"
}-->

```http
POST https://graph.microsoft.com/beta/organization/{id}/certificateBasedAuthConfiguration
Content-type: application/json

{
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "certificateRevocationListUrl-value",
      "deltaCertificateRevocationListUrl": "deltaCertificateRevocationListUrl-value",
      "certificate": "certificate-value",
      "issuer": "issuer-value",
      "issuerSki": "issuerSki-value"
    }
  ]
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateBasedAuthConfiguration"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "certificateRevocationListUrl-value",
      "deltaCertificateRevocationListUrl": "deltaCertificateRevocationListUrl-value",
      "certificate": "certificate-value",
      "issuer": "issuer-value",
      "issuerSki": "issuerSki-value"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create certificateBasedAuthConfiguration",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
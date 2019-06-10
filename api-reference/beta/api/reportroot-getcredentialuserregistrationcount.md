---
title: "reportRoot: getCredentialUserRegistrationCount"
description: "Provides the summary of self-service password reset and multi-factor authentication (MFA) registration for a given tenant."
localization_priority: Normal
author: "dkershaw"
ms.prod: "identity and access reports"
doc_type: "apiPageType"
---

# reportRoot: getCredentialUserRegistrationCount

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the summary of self-service password reset and multi-factor authentication (MFA) registration for a given tenant. This API provides the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication (MFA) capabilities.

Retrieve the properties and relationships of the [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Reports.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/getCredentialsUserRegistrationCount
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and a new [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) collection object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getcredentialuserregistrationcount"
}-->

```http
GET https://graph.microsoft.com/beta/reports/getCredentialUserRegistrationCount
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.credentialUserRegistrationCount)",
  "value": [
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "totalUserCount" : 23123,
      "userRegistrationCounts" :
      [
        { "userRegistrationStatus":"registered", "userRegistationCount": 23423 },
        { "userRegistrationStatus":"enabled", "userRegistationCount": 4234 },
        { "userRegistrationStatus":"capable", "userRegistationCount": 323 },
        { "userRegistrationStatus":"mfaRegistered", "userRegistationCount": 33 }
      ]
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reportRoot: getCredentialUserRegistrationCount",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
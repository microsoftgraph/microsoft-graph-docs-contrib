---
title: "reportRoot: getCredentialUsageSummary"
description: "Provides the summary of self-service password reset usage for a given tenant."
localization_priority: Normal
author: "dkershaw"
ms.prod: "identity and access reports"
doc_type: "apiPageType"
---

# reportRoot: getCredentialUsageSummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the summary of self-service password reset usage for a given tenant. This API provides the current state of how many users in your organization are using self-service password reset capabilities.

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
GET /reports/getCredentialUsageSummary
```

## Function parameters

In the request URL, provide following query parameters with values.

| Parameter | Description |
|:--------- |:----------- |
| feature | Filter by type of usage data you want (registration vs.reset). For example: `/reports/userCredentialUsageDetails?$filter=feature eq 'registration'`. Supported operators: `eq` |
| userDisplayName | Filter by user display name. For example: `/reports/userCredentialUsageDetails?$filter=userDisplayName eq 'ABCD'`. Supported operators: `eq`, `startswith()`, `orderby`. Supports case insensitive. |
| userPrincipalName  | Filter by user principal name. For example: `/reports/userCredentialUsageDetails?$filter=userPrincipalName eq 'ABCD'`.	Supported operators: `eq`, `startswith()`, `orderby`. Supports case insensitive. |
| isSuccess | Filter by status of the activity. For example: `/reports/userCredentialUsageDetails?$filter=isSuccess eq true`. Supported operators: `eq`, `orderby`. |
| authMethod  | Filter by the authentication methods using during registration. For example: `/reports/userCredentialUsageDetails?$filter=authMethod eq 'email'`. Supported operators: `eq`, `orderby`. |
| failureReason | Filter by failure reason (if the activity has failed). For example: `/reports/userCredentialUsageDetails?$filter=failureReason eq 'ABCD'`. Supported operators: `eq`, `startswith()`, `orderby`. Supports case insensitive. |

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `200, OK` response code and a new [credentialUsageSummary](../resources/credentialusagesummary.md) collection object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getcredentialusagesummary"
}-->

```http
GET https://graph.microsoft.com/beta/reports/getCredentialUsageSummary(period='D30')?$filter=feature eq 'registration'
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialUsageSummary",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context":"https://graph.microsoft.com/beta/reports/$metadata#Collection(microsoft.graph.getCredentialUsageSummary)",
  "value":[
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234"
      "feature":"registration",
      "successfulActivityCount":"12345",
      "failureActivityCount": "123",
      "authMethod": "email"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reportRoot: getCredentialUsageSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "List relyingPartyDetailedSummary"
description: "Retrieve a list of relyingPartyDetailedSummary objects."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# List relyingPartyDetailedSummary

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of **relyingPartyDetailedSummary** objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Report.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Report.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/getRelyingPartyDetailedSummary
```
## Function parameters

| Parameter | Description |
|:----------|:----------|
| period | The supported values are: D1, D7, D30. These values follow the format Dn where n represents the number of days over which the report is aggregated.|

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. 

- You can use the `$filter` parameter to filter by relyingPartyId, migrationStatus and other attributes. For example, $filter= relyingPartyId eq 'identifier'.
- You can use `$orderby`, `$top`, and `$skip` query parameters in any GET request.

For general information, see [OData query parameters](/graph/query-parameters).


## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_relyingpartydetailedsummary"
}-->

```http
GET https://graph.microsoft.com/beta/reports/getRelyingPartyDetailedSummary(period='period_value')
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "relyingPartyId": "relyingPartyId-value",
  "serviceId": "serviceId-value",
  "relyingPartyName": "relyingPartyName-value",
  "successfulSignInCount": "successfulSignInCount-value",
  "failedSignInCount": "failedSignInCount-value",
  "totalSignInCount": "totalSignInCount-value",
  "signInSuccessRate": "signInSuccessRate-value",
  "uniqueUserCount": "uniqueUserCount-value",
  "migrationStatus": "migrationStatus-value",
  "replyUrls": [
      "replyUrls-value"
  ],
  "migrationValidationDetails": [
      {
          "name": "name-value",
          "value": "value-value"
      }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get relyingPartyDetailedSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

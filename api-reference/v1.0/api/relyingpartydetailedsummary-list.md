---
title: "List relyingPartyDetailedSummary objects"
description: "Get a list of the relyingPartyDetailedSummary objects and their properties."
ms.localizationpriority: medium
author: "gmcnamara-microsoft"
ms.prod: "identity-and-access-reports"
doc_type: "apiPageType"
---

# List relyingPartyDetailedSummary objects

Namespace: microsoft.graph

Retrieve a list of **relyingPartyDetailedSummary** objects.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "relyingpartydetailedsummary_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/relyingpartydetailedsummary-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/getRelyingPartyDetailedSummary(period='{period}')
```
## Function parameters

| Parameter | Description |
|:----------|:----------|
| period | Required. The supported values are: D1, D7, D30. These values follow the format Dn where n represents the number of days over which the report is aggregated.|

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

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [relyingPartyDetailedSummary](../resources/relyingpartydetailedsummary.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_relyingpartydetailedsummary"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/reports/getRelyingPartyDetailedSummary(period='period_value')
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.relyingPartyDetailedSummary",
      "id": "bff5a169-eeb4-5159-b7f6-c5bb9464a6ca",
      "relyingPartyId": "String",
      "serviceId": "String",
      "relyingPartyName": "String",
      "successfulSignInCount": "Integer",
      "failedSignInCount": "Integer",
      "totalSignInCount": "Integer",
      "signInSuccessRate": "Double",
      "uniqueUserCount": "Integer",
      "migrationStatus": "String",
      "migrationValidationDetails": [
        {
          "@odata.type": "microsoft.graph.keyValuePair"
        }
      ],
      "replyUrls": [
        "String"
      ]
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



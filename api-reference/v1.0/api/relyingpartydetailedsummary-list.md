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
| period | Required. The supported values are: D1, D7, D30. These values follow the format `Dn` where n represents the number of days over which the report is aggregated.|

## Optional query parameters

This method supports the `$filter`, `$orderby`, `$top`, and `$skip` OData query parameters to help customize the response. The default page size is 100 records and the maximum with `$top` is 500 records. For general information, see [OData query parameters](/graph/query-parameters).


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
            "id": "31b45f83-0f5c-40be-80af-02e918f3b55b",
            "relyingPartyId": "https://customer.contoso.com/mgmt",
            "serviceId": "4cce6fff-4ccc-41fe-8521-bce16ea521e9",
            "relyingPartyName": "Contoso",
            "successfulSignInCount": 0,
            "failedSignInCount": 225,
            "totalSignInCount": 225,
            "signInSuccessRate": 0,
            "uniqueUserCount": 1,
            "migrationStatus": "ready",
            "replyUrls": [
                "https://adfshelp.microsoft.com/Contoso/tokenresponse"
            ],
            "migrationValidationDetails": [
                {
                    "name": "AdditionalWSFedEndpointCheckResult",
                    "value": "{\"result\": 0, \"message\": \"No additional WS-Federation endpoints were found.\"}"
                },
                {
                    "name": "AllowedAuthenticationClassReferencesCheckResult",
                    "value": "{\"result\": 0, \"message\": \"AllowedAuthenticationClassReferences is not set up.\"}"
                }
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



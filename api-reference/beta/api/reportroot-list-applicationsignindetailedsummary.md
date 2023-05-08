---
title: "List applicationSignInDetailedSummary"
description: "Retrieve the applicationSignInDetailedSummary objects."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List applicationSignInDetailedSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) objects.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Reports.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/applicationSignInDetailedSummary
```

## Optional query parameters
This method supports the `$filter` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [applicationSignInDetailedSummary](../resources/applicationsignindetailedsummary.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_applicationsignindetailedsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/applicationSignInDetailedSummary
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-applicationsignindetailedsummary-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-applicationsignindetailedsummary-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-applicationsignindetailedsummary-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-applicationsignindetailedsummary-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-applicationsignindetailedsummary-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-applicationsignindetailedsummary-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.applicationSignInDetailedSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/applicationSignInDetailedSummary",
    "value": [
        {
            "id": "ce0d6f77-04d2-49f6-bfcc-ad101cd4b69f",
            "appId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "appDisplayName": "Graph Explorer",
            "aggregatedEventDateTime": "2021-12-28T00:00:00Z",
            "signInCount": 5,
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            }
        },
        {
            "id": "59397b28-0dc5-4270-b869-24714ea4aedb",
            "appId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
            "appDisplayName": "Graph Explorer",
            "aggregatedEventDateTime": "2021-12-06T00:00:00Z",
            "signInCount": 5,
            "status": {
                "errorCode": 650057,
                "failureReason": "Invalid resource. The client has requested access to a resource which is not listed in the requested permissions in the client's application registration. Client app ID: {appId}({appName}). Resource value from request: {resource}. Resource app ID: {resourceAppId}. List of valid resources from app registration: {regList}.",
                "additionalDetails": null
            }
        },
        {
            "id": "29d5acee-e7c8-4565-96eb-f89719cb4d9f",
            "appId": "c44b4083-3bb0-49c1-b47d-974e53cbdf3c",
            "appDisplayName": "Azure Portal",
            "aggregatedEventDateTime": "2021-12-28T00:00:00Z",
            "signInCount": 1,
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            }
        },
        {
            "id": "88348b99-6c59-47db-bc70-2011d80e3bd6",
            "appId": "89bee1f7-5e6e-4d8a-9f3d-ecd601259da7",
            "appDisplayName": "Office365 Shell WCSS-Client",
            "aggregatedEventDateTime": "2021-11-30T00:00:00Z",
            "signInCount": 3,
            "status": {
                "errorCode": 0,
                "failureReason": null,
                "additionalDetails": null
            }
        }
    ]
}
```

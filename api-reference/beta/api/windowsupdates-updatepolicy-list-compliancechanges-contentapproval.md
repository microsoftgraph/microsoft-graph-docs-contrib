---
title: "List contentApprovals"
description: "Get a list of the contentApproval objects and their properties."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# List contentApprovals
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [contentApproval](../resources/windowsupdates-contentapproval.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|WindowsUpdates.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|WindowsUpdates.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges/microsoft.graph.windowsUpdates.contentApproval
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_contentapproval"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713/complianceChanges/microsoft.graph.windowsUpdates.contentApproval
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-contentapproval-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-contentapproval-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-contentapproval-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-contentapproval-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-contentapproval-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-contentapproval-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.contentApproval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
      "id": "bba2a340-1e32-b5ed-186e-678e16033319",
      "createdDateTime": "2020-06-09T10:00:00Z",
      "isRevoked": false,
      "updatePolicy": { "@odata.id": "updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713" },
      "content": {
          "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
          "catalogEntry": { "id": "de41eaac-10ce-47bb-890e-300c81214929" }
      },
      "deploymentSettings": {
        "contentApplicability": {
          "offerWhileRecommendedBy": ["Microsoft"],
          "safeguard": {
            "disabledSafeguardProfiles": [
              {
                  "category": "likelyIssues"
              }
            ]
          }
        },
        "schedule": {
          "startDateTime": "2020-06-09T10:00:00Z",
          "gradualRollout": {
            "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
            "endDateTime": "2020-06-16T10:00:00Z"
          }
        }
      },
      "deployments": [
          { "id": "89c97b65-86cd-45b2-afef-1e4b187f61ce" }
      ]
    }
  ]
}
```

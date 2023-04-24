---
title: "List updatePolicies"
description: "Get a list of updatePolicy objects and their properties."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: apiPageType
---

# List updatePolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [updatePolicy](../resources/windowsupdates-updatepolicy.md) objects and their properties.

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
GET /admin/windows/updates/updatePolicies
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_updatepolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-updatepolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-updatepolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-updatepolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-updatepolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-updatepolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-updatepolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.updatePolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
      "id": "a7aa99c1-34a2-850c-5223-7816fde70713",
      "audience": {
        "@odata.id": "deploymentAudiences/1"
      },
      "complianceChanges": [
        {
          "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval"
        }
      ],
      "complianceChangeRules": [
        {
          "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
          "contentFilter": {
              "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
          },
          "durationBeforeDeploymentStart": "P7D",
          "createdDateTime": "2020-06-09T10:00:00Z",
          "lastEvaluatedDateTime": "2020-06-09T10:00:00Z",
          "lastModifiedDateTime": "2020-06-09T10:00:00Z"
        }
      ],
      "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
          "gradualRollout": {
            "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
            "durationBetweenOffers": "P1D",
            "devicePerOffer": 1000
          }
        }
      }
    }
  ]
}
```

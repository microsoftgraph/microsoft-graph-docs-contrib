---
title: "List agentRiskDetections"
description: Retrieve the properties of a collection of agentRiskDetection objects.
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# List agentRiskDetections

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a collection of [agentRiskDetection](../resources/agentriskdetection.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentriskdetection-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentriskdetection-list-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-read](../includes/rbac-for-apis/rbac-identity-protection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/agentRiskDetections
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$top` OData query parameters to help customize the response. The default and maximum page size is 20 and 500 objects respectively. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentRiskDetection](../resources/agentriskdetection.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_agentriskdetection"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/agentRiskDetections
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-agentriskdetection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-agentriskdetection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-agentriskdetection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-agentriskdetection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-agentriskdetection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-agentriskdetection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentRiskDetection"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentRiskDetection",
			"id": "1e384c2b0799b01834c0f886560a9a64e433135fe5b8607c535ebbfb03d2ee67",
			"agentId": "229da549-7a91-4365-900f-d4ef49a759a0",
			"agentDisplayName": "Copilot Application",
			"activityDateTime": "2025-07-30T15:38:56.9594972Z",
			"detectedDateTime": "2025-07-30T15:38:56.9594972Z",
			"detectionTimingType": "offline",
			"lastModifiedDateTime": "2025-07-30T15:38:56Z",
			"riskDetail": "none",
			"riskLevel": "high",
			"riskState": "atRisk",
			"riskEventType": "unfamiliarResourceAccess",
			"riskEvidence": "Agent targeted resources that it does not usually access.",
			"additionalInfo": ""
    }
  ]
}
```


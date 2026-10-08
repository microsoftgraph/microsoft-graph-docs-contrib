---
title: "recommendation: acceptRisk"
description: "Accept the risk for a recommendation object and update its status to riskAccepted."
author: "sanchariroy9197"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 07/22/2026
---

# recommendation: acceptRisk
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Accept the risk for a [recommendation](../resources/recommendation.md) object and update its **status** to `riskAccepted`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "recommendation_acceptrisk" } -->
[!INCLUDE [permissions-table](../includes/permissions/recommendation-acceptrisk-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-write](../includes/rbac-for-apis/rbac-directory-recommendations-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /directory/recommendations/{recommendationId}/acceptRisk
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [recommendation](../resources/recommendation.md) in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "recommendationthis.acceptRisk",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA"]
}
-->
```http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/acceptRisk
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recommendation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#recommendation",
    "@odata.type": "#microsoft.graph.recommendation",
    "id": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA",
    "recommendationType": "turnOffPerUserMFA",
    "status": "riskAccepted",
    "statusModifiedDateTime": "2025-06-16T02:08:33.4580541Z",
    "priority": "high",
    "displayName": "Convert from per-user MFA to Conditional Access MFA"
}
```

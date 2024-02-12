---
title: "recommendation: dismiss"
description: "Dismiss a recommendation object and updates its status to dismissed."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# recommendation: dismiss
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Dismiss a [recommendation](../resources/recommendation.md) object that you consider to be inapplicable to your tenant and update its **status** to `dismissed` .

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "recommendation_dismiss" } -->
[!INCLUDE [permissions-table](../includes/permissions/recommendation-dismiss-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-write](../includes/rbac-for-apis/rbac-directory-recommendations-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/recommendations/{recommendationId}/dismiss
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that are required with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|dismissReason|String|Explanation for why this recommendation is not applicable to your tenant.|



## Response

If successful, this action returns a `200 OK` response code and a [recommendation](../resources/recommendation.md) in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recommendationthis.dismiss",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA"]
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/dismiss
Content-Type: application/json

{
  "dismissReason": "Recommendations is not relevant for my organization because..."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/recommendationthisdismiss-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/recommendationthisdismiss-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/recommendationthisdismiss-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/recommendationthisdismiss-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recommendationthisdismiss-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/recommendationthisdismiss-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/recommendationthisdismiss-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/recommendationthisdismiss-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recommendation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#recommendation",
    "@odata.type": "#microsoft.graph.recommendation",
    "id": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA",
    "recommendationType": "turnOffPerUserMFA",
    "createdDateTime": "2022-02-28T02:53:00Z",
    "impactStartDateTime": "2022-02-28T02:53:00Z",
    "postponeUntilDateTime": null,
    "lastModifiedDateTime": "2023-01-20T02:08:33.4580541Z",
    "lastModifiedBy": "b5fa65db-0d2b-4233-8788-ab0213567669",
    "currentScore": 0.0,
    "maxScore": 5.0,
    "displayName": "Convert from per-user MFA to Conditional Access MFA",
    "featureAreas": [
        "conditionalAccess"
    ],
    "insights": "13 users are currently configured for per-user Multi-Factor Authentication (MFA). However, there are 6 users configured for Conditional Access (CA) MFA. The per-user MFA configuration supersedes the MFA settings applied via CA policies, potentially creating unnecessary MFA prompts.",
    "benefits": "Improve user productivity and minimize sign-in time with fewer MFA prompts. Ensure that your most sensitive resources can have the tighest controls, while your least sensitive resources can be more freely accessible.",
    "category": "identityBestPractice",
    "status": "completedByUser",
    "priority": "medium",
    "impactType": "users",
    "remediationImpact": "",
    "actionSteps": [
        {
            "stepNumber": 1,
            "text": "1. To get started, confirm that there is an existing CA policy with an MFA requirement. Ensure that you are covering all resources and users you would like to secure with MFA.",
            "actionUrl": {
                "displayName": "Click here to view your CA policies",
                "url": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/PoliciesTemplateBlade"
            }
        },
        {
            "stepNumber": 2,
            "text": "2. To require MFA via a CA policy, follow the steps in this tutorial.",
            "actionUrl": {
                "displayName": "Secure user sign-in events with Azure AD Multi-Factor Authentication",
                "url": "https://docs.microsoft.com/en-us/azure/active-directory/authentication/tutorial-enable-azure-mfa?toc=/azure/active-directory/conditional-access/toc.json&bc=/azure/active-directory/conditional-access/breadcrumb/toc.json"
            }
        },
        {
            "stepNumber": 3,
            "text": "3. Ensure that the per-user MFA configuration is turned off",
            "actionUrl": {
                "displayName": "Navigate to MFA settings.",
                "url": "https://account.activedirectory.windowsazure.com/UserManagement/MfaSettings.aspx"
            }
        }
    ]
}
```


---
title: "recommendation: reactivate"
description: "Reactivate a completed, dismissed, or postponed recommendation object."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# recommendation: reactivate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reactivate a completed, dismissed, or postponed [recommendation](../resources/recommendation.md) object. This action updates the **status** of the [recommendation](../resources/recommendation.md) to `active`. This method only works when the **status** of the recommendation is `completedByUser`, `dismissed`, or `postponed`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DirectoryRecommendations.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DirectoryRecommendations.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):
- Global administrator
- Security administrator
- Security operator
- Application administrator
- Cloud application administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/recommendations/{recommendationId}/reactivate
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [recommendation](../resources/recommendation.md) in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recommendationthis.reactivate"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/reactivate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/recommendationthisreactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/recommendationthisreactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/recommendationthisreactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recommendationthisreactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/recommendationthisreactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/recommendationthisreactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
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
    "lastModifiedDateTime": "2023-01-20T02:15:06.0794158Z",
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
    "status": "active",
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


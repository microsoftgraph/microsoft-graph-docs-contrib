---
title: "Get recommendation"
description: "Read the properties and relationships of a recommendation object."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Get recommendation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [recommendation](../resources/recommendation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DirectoryRecommendations.Read.All, DirectoryRecommendations.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DirectoryRecommendations.Read.All, DirectoryRecommendations.ReadWrite.All|

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):
- Global administrator
- Global reader
- Security administrator
- Security operator
- Security reader
- Application administrator
- Cloud application administrator
- Reports reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recommendations/{recommendationId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [recommendation](../resources/recommendation.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_recommendation"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-recommendation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-recommendation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-recommendation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-recommendation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-recommendation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-recommendation-powershell-snippets.md)]
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations/$entity",
  "id": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA",
  "recommendationType": "turnOffPerUserMFA",
  "createdDateTime": "2022-02-28T02:53:00Z",
  "impactStartDateTime": "2022-02-28T02:53:00Z",
  "postponeUntilDateTime": null,
  "lastModifiedDateTime": "2023-01-10T22:57:10.2509132Z",
  "lastModifiedBy": "d5a3853c-8e04-42b6-a530-bf159e99174a",
  "currentScore": 0.0,
  "maxScore": 5.0,
  "displayName": "Convert from per-user MFA to Conditional Access MFA",
  "featureAreas": [
    "conditionalAccess"
  ],
  "insights": "13 users are currently configured for per-user Multi-Factor Authentication (MFA)...",
  "benefits": "Improve user productivity and minimize sign-in time with fewer MFA prompts...",
  "category": "identityBestPractice",
  "status": "active",
  "priority": "medium",
  "impactType": "users",
  "remediationImpact": "",
  "actionSteps": [
    {
      "stepNumber": 1,
      "text": "1. To get started, confirm that there is an existing CA policy with an MFA requirement...",
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

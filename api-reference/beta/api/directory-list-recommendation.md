---
title: "List recommendations"
description: "Get a list of the recommendation objects and their properties."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List recommendations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [recommendation](../resources/recommendation.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_list_recommendation" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-list-recommendation-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-read](../includes/rbac-for-apis/rbac-directory-recommendations-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recommendations
```

## Optional query parameters
This method supports `$select` and `$filter` OData query parameters to help customize the response. `$expand` is supported by the **impactedResources** relationship. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recommendation](../resources/recommendation.md) objects in the response body.

## Examples

### Example 1: Get the list of recommendations

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_recommendation_e1"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-recommendation-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-recommendation-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-recommendation-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-recommendation-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-recommendation-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-recommendation-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-recommendation-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-recommendation-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recommendation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations",
  "value": [
    {
      "id": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA",
      "recommendationType": "turnOffPerUserMFA",
      "createdDateTime": "2022-02-28T02:53:00Z",
      "impactStartDateTime": "2022-02-28T02:53:00Z",
      "postponeUntilDateTime": null,
      "lastModifiedDateTime": "2023-01-10T22:57:10.2509132Z",
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
      "releaseType": "preview",
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
    },
  ]        
}
```
### Example 2: Get a recommendation object without its associated resources by the recommendationType

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_recommendation_e2"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations?$filter=recommendationType eq 'turnOffPerUserMFA'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-recommendation-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-recommendation-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-recommendation-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-recommendation-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-recommendation-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-recommendation-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-recommendation-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-recommendation-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
  "releaseType": "preview",
  "impactType": "users",
  "remediationImpact": "",
  "actionSteps": [
    {
      "stepNumber": 1,
      "text": "1. To get started, confirm that...",
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

### Example 3: Get a recommendation object with its associated impacted resources

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_recommendation_e3"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations?$filter=id eq '0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA'&$expand=impactedResources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-recommendation-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-recommendation-e3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-recommendation-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-recommendation-e3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-recommendation-e3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-recommendation-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-recommendation-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-recommendation-e3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations(impactedResources())",
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
  "insights": "13 users are currently configured for per-user Multi-Factor Authentication (MFA). However, there are 6 users configured for Conditional Access (CA) MFA. The per-user MFA configuration supersedes the MFA settings applied via CA policies, potentially creating unnecessary MFA prompts.",
  "benefits": "Improve user productivity and minimize sign-in time with fewer MFA prompts. Ensure that your most sensitive resources can have the tighest controls, while your least sensitive resources can be more freely accessible.",
  "category": "identityBestPractice",
  "status": "active",
  "priority": "medium",
  "releaseType": "preview",
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
  ],
  "impactedResources@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations('0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA')/impactedResources",
  "impactedResources": []
}
```

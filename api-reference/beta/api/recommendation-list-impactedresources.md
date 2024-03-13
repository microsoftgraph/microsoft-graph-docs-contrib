---
title: "List impactedResources"
description: "Get the impacted resources for a recommendation."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# List impactedResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [impactedResource](../resources/impactedresource.md) objects for a [recommendation](../resources/recommendation.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "recommendation_list_impactedresources" } -->
[!INCLUDE [permissions-table](../includes/permissions/recommendation-list-impactedresources-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-read](../includes/rbac-for-apis/rbac-directory-recommendations-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recommendations/{recommendationId}/impactedResources
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. It also supports `$count` as a URL segment to retrieve the raw count of impacted resources. That is, `.../impactedResources/$count`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [impactedResource](../resources/impactedresource.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_impactedresource",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA"]
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/impactedResources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-impactedresource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-impactedresource-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-impactedresource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-impactedresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-impactedresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-impactedresource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-impactedresource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-impactedresource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.impactedResource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations('0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry')/impactedResources",
    "value": [
        {
          "id": "e97adb14-7c12-4363-8a80-d6ac86a51e2f",
          "subjectId": "1d9d9eb9-e956-4dab-881a-b4f4f35293ef",
          "recommendationId": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
          "resourceType": "app",
          "addedDateTime": "2022-03-19T09:40:39.0420371Z",
          "postponeUntilDateTime": null,
          "lastModifiedDateTime": "2022-04-04T20:43:28.9687029Z",
          "lastModifiedBy": "bc7fae74-90dd-4054-b38e-f2ccc8b7b904",
          "displayName": "Contoso IWA App Tutorial",
          "owner": null,
          "rank": 1,
          "portalUrl": "https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/Credentials/appId/1d9d9eb9-e956-4dab-881a-b4f4f35293ef",
          "apiUrl": null,
          "status": "completedBySystem",
          "additionalDetails": [
            {
              "key": "ExpiringCredentialsCount",
              "value": "1"
            }
          ]
        },
        {
          "id": "fd1482c2-3aab-4cad-8182-fc6adecf40ef",
          "subjectId": "ccec02c6-e69b-47d8-b6a0-c6cf9d491a4f",
          "recommendationId": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
          "resourceType": "app",
          "addedDateTime": "2022-03-19T09:40:39.0413974Z",
          "postponeUntilDateTime": null,
          "lastModifiedDateTime": "2022-04-15T04:24:09.7862983Z",
          "lastModifiedBy": "0ffbbb05-658e-4f32-ae3e-7e717d7d9c91",
          "displayName": "Contoso",
          "owner": null,
          "rank": 1,
          "portalUrl": "https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/Credentials/appId/ccec02c6-e69b-47d8-b6a0-c6cf9d491a4f",
          "apiUrl": null,
          "status": "completedBySystem",
          "additionalDetails": [
            {
              "key": "ExpiringCredentialsCount",
              "value": "1"
            }
          ]
        }
    ]
}
```


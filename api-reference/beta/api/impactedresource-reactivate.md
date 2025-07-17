---
title: "impactedResource: reactivate"
description: "Reactivate an accidentally dismissed, completed, or postponed impactedResource object."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 04/05/2024
---

# impactedResource: reactivate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reactivate an accidentally dismissed, completed, or postponed **impactedResource** object. This action updates the **status** of the resource to `active`. This method is relevant only if the status of the **impactedResource** object is `dismissed`, `postponed`, or `completedByUser`. 

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "impactedresource_reactivate" } -->
[!INCLUDE [permissions-table](../includes/permissions/impactedresource-reactivate-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-write](../includes/rbac-for-apis/rbac-directory-recommendations-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/recommendations/{recommendationId}/impactedResources/{impactedResourceId}/reactivate
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [impactedResource](../resources/impactedresource.md) in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "impactedresourcethis.reactivate",
  "sampleKeys": ["0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry", "dbd9935e-15b7-4800-9049-8d8704c23ad2"]
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/dbd9935e-15b7-4800-9049-8d8704c23ad2/reactivate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/impactedresourcethisreactivate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/impactedresourcethisreactivate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/impactedresourcethisreactivate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/impactedresourcethisreactivate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/impactedresourcethisreactivate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/impactedresourcethisreactivate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/impactedresourcethisreactivate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/impactedresourcethisreactivate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.impactedResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#impactedResource",
  "@odata.type": "#microsoft.graph.impactedResource",
  "id": "dbd9935e-15b7-4800-9049-8d8704c23ad2",
  "subjectId": "f9c3466a-9cb5-46ee-84db-e7e6e405b937",
  "recommendationId": "7918d4b5-0442-4a97-be2d-36f9f9962ece_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
  "resourceType": "app",
  "addedDateTime": "2022-03-19T09:40:39.0420371Z",
  "postponeUntilDateTime": null,
  "lastModifiedDateTime": "2022-04-04T20:43:28.9687029Z",
  "lastModifiedBy": "b5fa65db-0d2b-4233-8788-ab0213567669",
  "displayName": "Contoso IWA App Tutorial",
  "owner": null,
  "rank": 1,
  "portalUrl": "https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/Credentials/appId/ f9c3466a-9cb5-46ee-84db-e7e6e405b937",
  "apiUrl": null,
  "status": "active",
  "additionalDetails": [
      {
          "key": "ExpiringCredentialsCount",
          "value": "1"
      }
  ]
}
```


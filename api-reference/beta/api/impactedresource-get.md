---
title: "Get impactedResource"
description: "Read the properties and relationships of an impactedResource object."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Get impactedResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [impactedResource](../resources/impactedresource.md) object.

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
GET /directory/recommendations/{recommendationId}/impactedResources/{impactedResourceId}
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

If successful, this method returns a `200 OK` response code and an [impactedResource](../resources/impactedresource.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_impactedresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/dbd9935e-15b7-4800-9049-8d8704c23ad2
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-impactedresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-impactedresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/recommendations('0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry')/impactedResources/$entity",
    "id": "dbd9935e-15b7-4800-9049-8d8704c23ad2",
    "subjectId": "f9c3466a-9cb5-46ee-84db-e7e6e405b937",
    "recommendationId": "0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
    "resourceType": "app",
    "addedDateTime": "2022-03-19T09:40:39.0420371Z",
    "postponeUntilDateTime": null,
    "lastModifiedDateTime": "2022-04-04T20:43:28.9687029Z",
    "lastModifiedBy": "b5fa65db-0d2b-4233-8788-ab0213567669",
    "displayName": "Contoso IWA App Tutorial",
    "owner": null,
    "rank": 1,
    "portalUrl": "https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/Credentials/appId/f9c3466a-9cb5-46ee-84db-e7e6e405b937",
    "apiUrl": null,
    "status": "completedBySystem",
    "additionalDetails": [
        {
            "key": "ExpiringCredentialsCount",
            "value": "1"
        }
    ]
}
```


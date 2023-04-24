---
title: "List impactedResources"
description: "Get the impacted resources for a recommendation."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# List impactedResources
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [impactedResource](../resources/impactedresource.md) objects for a [recommendation](../resources/recommendation.md).

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
GET /directory/recommendations/{recommendationId}/impactedResources
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

If successful, this method returns a `200 OK` response code and a collection of [impactedResource](../resources/impactedresource.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_impactedresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/impactedResources
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-impactedresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-impactedresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
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


---
title: "impactedResource: postpone"
description: "Postpone action on an impactedResource object to a specified future date and time."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# impactedResource: postpone
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Postpone action on an [impactedResource](../resources/impactedresource.md) object to a specified future date and time by marking its **status** as `postponed`. On the specified date and time, Azure AD will automatically mark the status of the **impactedResource** object to `active`.

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
POST /directory/recommendations/{recommendationId}/impactedResources/{impactedResourceId}/postpone
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that are required with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|postponeUntilDateTime|DateTimeOffset|The date and time when the **status** of the **impactedResource** will be updated to `active`.|



## Response

If successful, this action returns a `200 OK` response code and a [impactedResource](../resources/impactedresource.md) in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "impactedresourcethis.postpone"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/dbd9935e-15b7-4800-9049-8d8704c23ad2/postpone
Content-Type: application/json

{
  "postponeUntilDateTime": "2023-03-01T09:40:39.0420371Z"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/impactedresourcethispostpone-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/impactedresourcethispostpone-javascript-snippets.md)]
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#impactedResource",
  "@odata.type": "#microsoft.graph.impactedResource",
  "id": "dbd9935e-15b7-4800-9049-8d8704c23ad2",
  "subjectId": "f9c3466a-9cb5-46ee-84db-e7e6e405b937",
  "recommendationId": "7918d4b5-0442-4a97-be2d-36f9f9962ece_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry",
  "resourceType": "app",
  "addedDateTime": "2022-03-19T09:40:39.0420371Z",
  "postponeUntilDateTime": "2023-03-01T09:40:39.0420371Z",
  "lastModifiedDateTime": "2022-04-04T20:43:28.9687029Z",
  "lastModifiedBy": "b5fa65db-0d2b-4233-8788-ab0213567669",
  "displayName": "Contoso IWA App Tutorial",
  "owner": null,
  "rank": 1,
  "portalUrl": "https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationMenuBlade/Credentials/appId/ f9c3466a-9cb5-46ee-84db-e7e6e405b937",
  "apiUrl": null,
  "status": "postponed",
  "additionalDetails": [
      {
          "key": "ExpiringCredentialsCount",
          "value": "1"
      }
  ]
}
```


---
title: "List authoredNotes"
description: "Get the authoredNote resources from the notes navigation property."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: apiPageType
ms.date: 06/10/2024
---

# List authoredNotes
Namespace: microsoft.graph

Get the list of authored notes assoicated with a subject rights request. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "subjectrightsrequest_list_notes" } -->
[!INCLUDE [permissions-table](../includes/permissions/subjectrightsrequest-list-notes-permissions.md)]

## HTTP request

[!INCLUDE [subject-rights-request-privacy-deprecate](../../includes/subject-rights-request-privacy-deprecate.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/subjectRightsRequests/{subjectRightsRequestId}/notes
GET /privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
```

## Optional query parameters
This method does not support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authoredNote](../resources/authorednote.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authorednote"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authorednote-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-authorednote-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authorednote-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authorednote-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authorednote-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authorednote-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authorednote-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authorednote-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authoredNote)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/privacy/subjectRightsRequests('77f885ac-1d7b-4317-bde8-4cb3d24a3ed8')/notes",
  "value": [
    {
      "id": "D450C4F9-CC18-4784-9406-9372F4E05F7B",
      "createdDateTime": "2022-05-10T22:42:28Z",
      "author": {
        "user": {
          "id": "1B761ED2-AA7E-4D82-9CF5-C09D737B6167",
          "displayName": "srradmin@contoso.com"
        }
      },
      "content": {
        "content": "Please take a look at the files tagged with follow up",
        "contentType": "text"
      }
    }
  ]
}
```


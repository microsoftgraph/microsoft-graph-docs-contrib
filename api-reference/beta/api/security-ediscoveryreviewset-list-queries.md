---
title: "List queries"
description: "Get the list of queries associated with an eDiscovery review set."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---

# List queries
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [queries](../resources/security-ediscoveryreviewsetquery.md) associated with an eDiscovery review set.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryreviewset_list_queries" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewset-list-queries-permissions.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/queries
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoveryreviewsetquery"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/queries
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoveryreviewsetquery-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-ediscoveryreviewsetquery-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-ediscoveryreviewsetquery-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-ediscoveryreviewsetquery-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ediscoveryreviewsetquery-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-ediscoveryreviewsetquery-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-ediscoveryreviewsetquery-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-ediscoveryreviewsetquery-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryReviewSetQuery)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('58399dff-cebe-478f-b1af-d3227f1fd645')/reviewSets('273f11a1-17aa-419c-981d-ff10d33e420f')/queries",
    "value": [
        {
            "lastModifiedDateTime": "2022-05-29T20:49:47.9289317Z",
            "contentQuery": "((((FileClass=\"Email\") AND (InclusiveType=\"InclusiveMinus\" OR InclusiveType=\"Inclusive\")) OR ((FileClass=\"Attachment\") AND (UniqueInEmailSet=\"true\")) OR ((FileClass=\"Document\") AND (MarkAsRepresentative=\"Unique\")) OR ((FileClass=\"Conversation\"))))",
            "id": "837335b0-1943-444d-a3d1-5522cc21c5a4",
            "displayName": "[AutoGen] For Review",
            "createdDateTime": "2022-05-29T20:49:47.9289317Z",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "lastModifiedBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            }
        },
        {
            "lastModifiedDateTime": "2022-05-29T20:49:48.0539099Z",
            "contentQuery": "((FileType:gz OR FileType:gzip OR FileType:bz2 OR FileType:zip OR FileType:7z OR FileType:rar OR FileType:vhd OR FileType:mbox OR FileType:pst OR FileType:sfx) OR (Size<\"3072B\" AND (FileType:gif OR FileType:bmp OR FileType:png OR FileType:jpg OR FileType:jpeg OR FileType:tif OR FileType:tiff OR FileType:emf OR FileType:pct OR FileType:pic)))",
            "id": "977ad4d5-3e5c-4594-8cb6-7d09dbcddf21",
            "displayName": "[AutoGen] Potentially Immaterial Items",
            "createdDateTime": "2022-05-29T20:49:48.0539099Z",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "lastModifiedBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            }
        }
    ]
}
```


---
title: "ediscoveryReviewTag: asHierarchy"
description: "List tag as hierarchy*"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# ediscoveryReviewTag: asHierarchy
Namespace: microsoft.graph.security



List [eDiscovery review tags](../resources/security-ediscoveryreviewtag.md) with the tag hierarchy shown.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryreviewtag_ashierarchy" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryreviewtag-ashierarchy-permissions.md)]

[!INCLUDE [rbac-ediscovery-read](../includes/rbac-for-apis/rbac-ediscovery-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/tags/asHierarchy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection in the response body.

## Examples
### Example 1: Retrieve child tags of a specific eDiscovery 
#### Request
The following example shows a request that retrieves child tags.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewtagthis.ashierarchy"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/tags/asHierarchy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewtagthisashierarchy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewtagthisashierarchy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewtagthisashierarchy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewtagthisashierarchy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewtagthisashierarchy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewtagthisashierarchy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewtagthisashierarchy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryReviewTag)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(ediscoveryReviewTag)",
    "@odata.count": 5,
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
            "displayName": "My tag API 2",
            "description": "Use Graph API to create tags (updated)",
            "lastModifiedDateTime": "2022-05-30T00:27:41.6407249Z",
            "childSelectability": "Many",
            "id": "062de822f17a4a2e9b833aa3f6c37108",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "childTags": []
        },
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
            "displayName": "Responsive",
            "description": "",
            "lastModifiedDateTime": "2022-05-23T19:41:24.4237284Z",
            "childSelectability": "One",
            "id": "d3d99dc704a74801b792b3e1e722aa0d",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "childTags": []
        },
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
            "displayName": "Not responsive",
            "lastModifiedDateTime": "2022-05-23T19:41:31.3381716Z",
            "childSelectability": "One",
            "id": "ced26633616a434abd83762d49a25a6c",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "childTags": []
        },
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
            "displayName": "Processing",
            "description": "Determine whether to outsource processing",
            "lastModifiedDateTime": "2022-05-23T19:46:03.8746996Z",
            "childSelectability": "Many",
            "id": "d8580989505c4fb3a25b845013697cf7",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                }
            },
            "childTags": []
        },
        {
            "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
            "displayName": "My tag API",
            "description": "Use Graph API to create tags",
            "lastModifiedDateTime": "2022-05-23T19:58:26.1573076Z",
            "childSelectability": "Many",
            "id": "7c6cc351-fb90-431f-8562-1b607a3144a4",
            "createdBy": {
                "user": {
                    "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
                    "displayName": "MOD Administrator",
                    "userPrincipalName": "admin@contoso.com"
                },
                "application": {
                    "id": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
                    "displayName": "Graph Explorer"
                }
            },
            "childTags": []
        }
    ]
}
```

### Example 2: Retrieve child tags of a specific eDiscovery review tag
#### Request
The following example shows a request that retrieves child tags.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewtagthis.childtags"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b6f72954-c7d0-414c-ad50-00167216cb03/tags/318f79767abf4b8fab4d8e37b3174c5a/childTags
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryreviewtagthischildtags-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryreviewtagthischildtags-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryreviewtagthischildtags-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryreviewtagthischildtags-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryreviewtagthischildtags-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoveryreviewtagthischildtags-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryreviewtagthischildtags-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryReviewTag)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.security.ediscoveryReviewTag)",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET security/cases/ediscoveryCases('<guid>')/tags('<guid>')/childTags?$select=childSelectability",
    "value": []
}
```


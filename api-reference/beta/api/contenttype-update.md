---
author: swapnil1993
title: "Update contentType"
description: "Update a content type."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "sharepoint"
ms.topic: reference
---

# Update contentType
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Update a [content type][contentType].
  

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

  

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

  

<!-- { "blockType": "permissions", "name": "contenttype_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/contenttype-update-permissions.md)]

  

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /sites/{site-id}/contentTypes/{contentType-id}
PATCH /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [contentType][] resource to update.  

## Response

If successful, this method returns a `200 OK` response code and an updated [contentType][] object in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_contenttype"
}
-->

```http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/contentTypes/{contentType-id}
Content-Type: application/json

{
   "name":"updatedCt",
   "documentSet":{
      "shouldPrefixNameToFile":true,
      "allowedContentTypes":[
         {
            "id":"0x0101",
            "name":"Document"
         }
      ],
      "defaultContents":[
         {
            "fileName":"a.txt",
            "contentType":{
               "id":"0x0101"
            }
         },
         {
            "fileName":"b.txt",
            "contentType":{
               "id":"0x0101"
            }
         }
      ],
      "sharedColumns":[
         {
            "name":"Description",
            "id":"cbb92da4-fd46-4c7d-af6c-3128c2a5576e"
         },
         {
            "name":"Address",
            "id":"fc2e188e-ba91-48c9-9dd3-16431afddd50"
         }
      ],
      "welcomePageColumns":[
         {
            "name":"Address",
            "id":"fc2e188e-ba91-48c9-9dd3-16431afddd50"
         }
      ]
   }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-contenttype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-contenttype-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-contenttype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-contenttype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-contenttype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-contenttype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-contenttype-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-contenttype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "truncated": true} -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "id":"0x0101009B237E76EF94DC49B4E58139041E7C60",
   "description":"",
   "eTag":"\"7\"",
   "group":"Custom Content Types",
   "hidden":false,
   "name":"testdoc",
   "parentId":"0x0101",
   "base":{
      "id":"0x0101",
      "name":"Document"
   }
}
```

[contentType]: ../resources/contentType.md

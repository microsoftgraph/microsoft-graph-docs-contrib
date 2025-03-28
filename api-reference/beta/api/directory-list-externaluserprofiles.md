---
title: "List externalUserProfiles"
description: "List all externalUserProfile objects."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.subservice: "entra-directory-management"
ms.date: 10/11/2024
---

# List externalUserProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of all [externalUserProfiles](../resources/externaluserprofile.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_list_externaluserprofiles" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-list-externaluserprofiles-permissions.md)]

[!INCLUDE [rbac-externaluserprofiles-apis-read](../includes/rbac-for-apis/rbac-externaluserprofiles-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/externalUserProfiles/{id}
```

## Optional query parameters

You can use `$filter` to only return specific external user profiles. The following properties can be used to `$filter`:

* companyName
* supervisorId

For more information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [externalUserProfile](../resources/externaluserprofile.md) in the response body.

## Examples

### Example 1: Get all external user profiles

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externalUserProfiles"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/externalUserProfiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externaluserprofiles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-externaluserprofiles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externaluserprofiles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externaluserprofiles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externaluserprofiles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externaluserprofiles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externaluserprofiles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externaluserprofiles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalUserProfile)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id":"1e4ba82a-5f0c-423c-83e1-fc8ad69d8f02",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Bob Henry",
            "isDiscoverable":true,
            "jobTitle":null,
            "phoneNumber":"4257034568",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        },
        {
            "id":"fffba82a-fffc-ff3c-83e1-fc8ff9dfff",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Jack Hill",
            "isDiscoverable":false,
            "jobTitle":null,
            "phoneNumber":"4257034788",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        }
    ]
}
```

### Example 2: List all external user profiles that are discoverable

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_externalUserProfiles_filter"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/externalUserProfiles$filter=isDiscoverable eq true
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalUserProfile)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id":"1e4ba82a-5f0c-423c-83e1-fc8ad69d8f02",
            "isEnabled":true,
            "createdDateTime":"2020-11-12T17:53:48Z",
            "deletedDateTime":null,
            "department":null,
            "displayName":"Bob Henry",
            "isDiscoverable":true,
            "jobTitle":null,
            "phoneNumber":"4257034568",
            "address":{
                  "city":"Redmond",
                  "countryOrRegion":"USA",
                  "officeLocation":"B28",
                  "postalCode":"98052",
                  "state":"WA",
                  "street":"One Microsoft Way"
                  },
            "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
            "supervisorId":null,
            "companyName":null
        }
    ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List externalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->

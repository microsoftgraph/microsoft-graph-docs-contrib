---
title: "Get externalUserProfile"
description: "Get an externalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.subservice: "entra-directory-management"
---

# Get externalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a specific [externalUserProfile](../resources/externaluserprofile.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externaluserprofile-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externaluserprofile-get-permissions.md)]

[!INCLUDE [rbac-externaluserprofiles-apis-read](../includes/rbac-for-apis/rbac-externaluserprofiles-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /directory/externalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [externalUserProfile](../resources/externaluserprofile.md) in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_externalUserProfile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/externalUserProfiles/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-externaluserprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-externaluserprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-externaluserprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-externaluserprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-externaluserprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-externaluserprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-externaluserprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalUserProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

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
  "address": {
      "city": null,
      "countryOrRegion": null,
      "officeLocation": null,
      "postalCode": null,
      "state": null,
      "street": null
  },
  "createdBy":"67670e18-bf37-416c-b5c8-3bfdaad757cc",
  "supervisorId":"fffba82a-fffc-ff3c-83e1-fc8ff9dfff",
  "companyName":"Vendor Market"
}

```

<!-- {
  "type": "#page.annotation",
  "description": "Get externalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}-->

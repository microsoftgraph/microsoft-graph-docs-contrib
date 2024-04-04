---
title: "Update externalUserProfile"
description: "Update the properties of a externalUserProfile object."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.topic: reference
---

# Update externalUserProfile

Namespace: microsoft.graph

Update the properties of a [externalUserProfile](../resources/externaluserprofile.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externaluserprofile-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externaluserprofile-update-permissions.md)]

[!INCLUDE [rbac-externaluserprofiles-apis-write](../includes/rbac-for-apis/rbac-externaluserprofiles-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /directory/externalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalUserProfile](../resources/externaluserprofile.md) object.

The following table shows the properties that are able to be updated after a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) is redeemed and converted to an [externalUserProfile](../resources/externaluserprofile.md).

|Property|Type|Description|
|:---|:---|:---|
|address|[physicalOfficeAddress](../resources/physicalofficeaddress.md)|The office address of the pending external user profile.|
|companyName|String|The company name of the pending external user profile. |
|department|String|The department of the pending external user profile. |
|displayName|String|The display name of the pending external user profile.|
|isDiscoverable|Boolean|Represents whether the pending external user profile is discoverable in the directory.|
|isEnabled|Boolean|Represents whether the pending external user profile is enabled in the directory.|
|jobTitle|String|The job title of the external user profile.|
|supervisorId|String|The object id of the supervisor of the pending external user profile.|

## Response

If successful, this method returns a `204 No Content` response code and an updated [externalUserProfile](../resources/externaluserprofile.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_externaluserprofile"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/directory/externalUserProfiles/{id}
Content-Type: application/json

{
  "jobTitle": "Contractor"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-externaluserprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-externaluserprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-externaluserprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-externaluserprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-externaluserprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-externaluserprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-externaluserprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-externaluserprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
}
-->

``` http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "description": "Update externalUserProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

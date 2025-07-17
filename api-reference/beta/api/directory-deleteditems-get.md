---
title: "Get deleted item (directory object)"
ms.date: 11/14/2024
description: "Retrieve the properties of a recently deleted application, group, service principal, or user from deleted items."
author: "keylimesoda"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get deleted item (directory object)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of a recently deleted directory object from [deleted items](../resources/directory.md). The following types are supported:
- [administrativeUnit](../resources/administrativeunit.md)
- [application](../resources/application.md)
- [certificateBasedAuthPki](../resources/certificatebasedauthpki.md)
- [certificateAuthorityDetail](../resources/certificateauthoritydetail.md
- [externalUserProfile](../resources/externaluserprofile.md)
- [group](../resources/group.md)
- [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md)
- [servicePrincipal](../resources/serviceprincipal.md)
- [user](../resources/user.md)

>**Note:** Deleted security groups are deleted permanently and can't be retrieved through this API.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| [administrativeUnit](../resources/administrativeunit.md) | AdministrativeUnit.Read.All | Not supported. | AdministrativeUnit.Read.All |
| [application](../resources/application.md) | Application.Read.All | Not supported. | Application.Read.All |
| [externalUserProfile](../resources/externaluserprofile.md) | ExternalUserProfile.Read.All | Not supported | ExternalUserProfile.Read.All |
| [group](../resources/group.md) | Group.Read.All | Not supported. | Group.Read.All |
| [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) | PendingExternalUserProfile.Read.All | Not supported | PendingExternalUserProfile.Read.All |
| [servicePrincipal](../resources/serviceprincipal.md) | Application.Read.All | Not supported. | Application.Read.All |
| [user](../resources/user.md) | User.Read.All | Not supported. | User.Read.All |
| [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |
| [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) | PublicKeyInfrastructure.Read.All | Not supported. | PublicKeyInfrastructure.Read.All |

[!INCLUDE [rbac-directory-deleted-items-apis](../includes/rbac-for-apis/rbac-directory-deleted-items-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /directory/deleteditems/{object-id}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_directory_deleteditem"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/deleteditems/46cc6179-19d0-473e-97ad-6ff84347bbbb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-directory-deleteditem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-directory-deleteditem-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-directory-deleteditem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-directory-deleteditem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-directory-deleteditem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-directory-deleteditem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-directory-deleteditem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-directory-deleteditem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directory"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects/$entity",
  "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
  "displayName":"SampleGroup",
  "groupTypes":["Unified"],
  "mail":"example@contoso.com",
  "mailEnabled":true,
  "mailNickname":"Example",
  "securityEnabled":false,
  "visibility":"Public"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get directory",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

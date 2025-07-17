---
title: "List deletedItems (directory objects)"
ms.date: 11/14/2024
description: "Retrieve a list of recently deleted items from deleted items."
author: "keylimesoda"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# List deletedItems (directory objects)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of recently deleted directory objects from [deleted items](../resources/directory.md). The following types are supported:
- [administrativeUnit](../resources/administrativeunit.md)
- [application](../resources/application.md)
- [certificateBasedAuthPki](../resources/certificatebasedauthpki.md)
- [certificateAuthorityDetail](../resources/certificateauthoritydetail.md)
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

[!INCLUDE [limited-info](../../includes/limited-info.md)]

[!INCLUDE [rbac-directory-deleted-items-apis](../includes/rbac-for-apis/rbac-directory-deleted-items-apis.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http 
GET /directory/deleteditems/microsoft.graph.application
GET /directory/deleteditems/microsoft.graph.servicePrincipal
GET /directory/deleteditems/microsoft.graph.group
GET /directory/deletedItems/microsoft.graph.user
GET /directory/deletedItems/microsoft.graph.administrativeUnit
GET /directory/deletedItems/microsoft.graph.externalUserProfile
GET /directory/deletedItems/microsoft.graph.pendingExternalUserProfile
GET /directory/deletedItems/microsoft.graph.certificateBasedAuthPki
GET /directory/deletedItems/microsoft.graph.certificateAuthorityDetail
```

The OData cast type is a required part of the URI and calling `GET /directory/deleteditems` without a type is **not** supported.

## Optional query parameters

This method supports the query parameters that are supported by the resource that is specified by the OData cast. That is, `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` query parameters. This API returns 100 objects by default and supports returning up to 999 objects per page using `$top`. 

Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For example:

```msgraph-interactive
https://graph.microsoft.com/beta/directory/deletedItems/microsoft.graph.group?&$count=true&$orderby=deletedDateTime desc&$select=id,displayName,deletedDateTime
ConsistencyLevel: eventual
```

This example requires the **ConsistencyLevel** header because the `$orderby` and `$count` query parameters are used in the query.

### $orderby OData query parameter examples

The `$orderby` OData query parameter is supported on the **deletedDateTime**, **displayName**, and **userPrincipalName** properties of the deleted object types. On the **deletedDateTime** property, the query requires adding the [advanced query parameters](/graph/aad-advanced-queries) (**ConsistencyLevel** header set to `eventual` and `$count=true` query string).

| OData cast | Properties supporting $orderby | Example |
| :--- | :--- | :--- |
| microsoft.graph.user | deletedDateTime, displayName, userPrincipalName | /directory/deletedItems/microsoft.graph.user?$orderby=userPrincipalName |
| microsoft.graph.group | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.group?$orderby=deletedDateTime asc&$count=true |
| microsoft.graph.application | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.application?$orderby=displayName |
| microsoft.graph.device | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.device?$orderby=deletedDateTime&$count=true |

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept  | application/json |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.
## Examples

### Example 1: Retrieve deleted groups

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_directory_deleteditems"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/deleteditems/microsoft.graph.group
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-directory-deleteditems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-directory-deleteditems-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-directory-deleteditems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-directory-deleteditems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-directory-deleteditems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-directory-deleteditems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-directory-deleteditems-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-directory-deleteditems-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "value": [
    {
      "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
      "displayName":"SampleGroup",
      "groupTypes":["Unified"],
      "mail":"example@contoso.com",
      "mailEnabled":true,
      "mailNickname":"Example",
      "securityEnabled":false,
      "visibility":"Public"
    }
  ]
}
```

### Example 2: Retrieve the count of deleted user objects and order the results by the deletedDateTime property

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_directory_deleteditems_count"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/deletedItems/microsoft.graph.group?$count=true&$orderby=deletedDateTime asc&$select=id,displayName,deletedDateTime
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-directory-deleteditems-count-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-directory-deleteditems-count-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-directory-deleteditems-count-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-directory-deleteditems-count-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-directory-deleteditems-count-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-directory-deleteditems-count-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-directory-deleteditems-count-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-directory-deleteditems-count-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups(id,displayName,deletedDateTime)",
    "@odata.count": 2,
    "value": [
        {
            "id": "c31799b8-0683-4d70-9e91-e032c89d3035",
            "displayName": "Role assignable group",
            "deletedDateTime": "2021-10-26T16:56:36Z"
        },
        {
            "id": "74e45ce0-a52a-4766-976c-7201b0f99370",
            "displayName": "Role assignable group",
            "deletedDateTime": "2021-10-26T16:58:37Z"
        }
    ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List deleteditems",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

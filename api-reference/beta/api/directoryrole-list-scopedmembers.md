---
title: "List scopedMembers for a directory role"
description: "Retrieve a list of scopedRoleMembership objects for a directory role."
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 09/17/2024
---

# List scopedMembers for a directory role

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!NOTE]
> Microsoft recommends that you use the unified RBAC API instead of this API. The unified RBAC API provides more functionality and flexibility. For more information, see [List unifiedRoleAssignments](./rbacapplication-list-roleassignments.md).

Retrieve a list of [scopedRoleMembership](../resources/scopedrolemembership.md) objects for a directory role.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directoryrole_list_scopedmembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryrole-list-scopedmembers-permissions.md)]

[!INCLUDE [rbac-directory-role-apis-read](../includes/rbac-for-apis/rbac-directory-role-apis-read.md)]

## HTTP request

You can address the directory role using either its **id** or **roleTemplateId**.
<!-- { "blockType": "ignored" } -->
```http
GET /directoryroles/{role-id}/scopedMembers
GET /directoryRoles(roleTemplateId='{roleTemplateId}')/scopedMembers
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [scopedRoleMembership](../resources/scopedrolemembership.md) objects in the response body.
## Examples

### Example 1:  Get the scoped members of a directory role using role id

#### Request
The following example shows a request for a directory role **id** `41d12a2f-caa8-4e3e-ba14-05e5102ce085`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_scopedmembers_directoryrole"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryRoles/41d12a2f-caa8-4e3e-ba14-05e5102ce085/scopedMembers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-scopedmembers-directoryrole-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-scopedmembers-directoryrole-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-scopedmembers-directoryrole-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-scopedmembers-directoryrole-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-scopedmembers-directoryrole-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-scopedmembers-directoryrole-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-scopedmembers-directoryrole-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-scopedmembers-directoryrole-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.scopedRoleMembership",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#scopedRoleMemberships",
    "value": [
        {
            "id": "LyrRQajKPk66FAXlECzghXFuYtw3SOtAvkq8KdiKEXiTwZeOU-r8RIHrq2vQ4F1wU",
            "roleId": "41d12a2f-caa8-4e3e-ba14-05e5102ce085",
            "administrativeUnitId": "dc626e71-4837-40eb-be4a-bc29d88a1178",
            "roleMemberInfo": {
                "id": "8e97c193-ea53-44fc-81eb-ab6bd0e05d70",
                "displayName": "Adele Vance"
            }
        }
    ]
}
```

### Example 2:  Get the scoped members of a directory role using roleTemplateId

#### Request
The following example shows a request for a directory role with **roleTemplateId** `fdd7a751-b60b-444a-984c-02652fe8fa1c`.

<!-- {
  "blockType": "request",
  "name": "get_scopedmembers_directoryrole_templateId"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryRoles(roleTemplateId='fdd7a751-b60b-444a-984c-02652fe8fa1c')/scopedMembers
```


#### Response
The following example shows the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.scopedRoleMembership",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#scopedRoleMemberships",
    "value": [
        {
            "id": "LyrRQajKPk66FAXlECzghXFuYtw3SOtAvkq8KdiKEXiTwZeOU-r8RIHrq2vQ4F1wU",
            "roleId": "41d12a2f-caa8-4e3e-ba14-05e5102ce085",
            "administrativeUnitId": "dc626e71-4837-40eb-be4a-bc29d88a1178",
            "roleMemberInfo": {
                "id": "8e97c193-ea53-44fc-81eb-ab6bd0e05d70",
                "displayName": "Adele Vance"
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List scopedmembers",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

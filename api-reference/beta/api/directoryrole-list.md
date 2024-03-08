---
title: "List directoryRoles"
description: "List the directory roles that are activated in the tenant."
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# List directoryRoles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the directory roles that are activated in the tenant.

This operation only returns roles that have been activated. A role becomes activated when an admin activates the role using the [Activate directoryRole](directoryrole-post-directoryroles.md) API. Not all built-in roles are initially activated. 

When assigning a role using the Microsoft Entra admin center, the role activation step is implicitly done on the admin's behalf. To get the full list of roles that are available in Microsoft Entra, use [List directoryRoleTemplates](directoryroletemplate-list.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directoryrole_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/directoryrole-list-permissions.md)]

[!INCLUDE [rbac-directory-role-apis-read](../includes/rbac-for-apis/rbac-directory-role-apis-read.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /directoryRoles
```
## Optional query parameters
This method supports the `$select`, `$filter` (`eq` only), and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name       | Description|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryRole](../resources/directoryrole.md) objects in the response body.
## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_directoryroles"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryRoles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-directoryroles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-directoryroles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-directoryroles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-directoryroles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-directoryroles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-directoryroles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-directoryroles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-directoryroles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryRole",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryRoles",
  "value": [
    {
      "id": "9ed3a0c4-53e1-498c-ab4d-2473476fde14",
      "deletedDateTime": null,
      "description": "Can manage all aspects of Azure AD and Microsoft services that use Azure AD identities.",
      "displayName": "Global Administrator",
      "roleTemplateId": "62e90394-69f5-4237-9190-012177145e10"
    },
    {
      "id": "f8e85ed8-f66f-4058-b170-3efae8b9c6e5",
      "deletedDateTime": null,
      "description": "Device Administrators",
      "displayName": "Azure AD Joined Device Local Administrator",
      "roleTemplateId": "9f06204d-73c1-4d4c-880a-6edb90606fd8"
    },
    {
      "id": "fe8f10bf-c9c2-47eb-95cb-c26cc85f1830",
      "deletedDateTime": null,
      "description": "Can read basic directory information. Commonly used to grant directory read access to applications and guests.",
      "displayName": "Directory Readers",
      "roleTemplateId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List directoryRoles",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

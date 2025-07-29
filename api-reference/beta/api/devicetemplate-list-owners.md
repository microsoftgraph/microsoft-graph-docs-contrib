---
title: "List deviceTemplate owners"
description: "Get a list of owners for a deviceTemplate object."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 12/31/2024
---

# List deviceTemplate owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of owners for a [deviceTemplate](../resources/devicetemplate.md) object. Owners can be represented as [service principals](..\resources\serviceprincipal.md), [users](..\resources\users.md), or [applications](..\resources\application.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "devicetemplate_list_owners" } -->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-list-owners-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]
> **Note:** Users must be owner of the object.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates/{id}/owners
```
> **Note:** The `{id}` in the request URL is the value of the **id** property of the **deviceTemplate**.

## Optional query parameters

This method supports the `$select` and `$top` OData query parameters to help customize the response. The page size for `$top` results is between 1 and 999, inclusive. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryObject.md) objects in the response body, with the **@odata.type** property of each object in the collection indicating the directory object type. Only [service principals](../resources/serviceprincipal.md), [users](../resources/users.md), or [applications](../resources/application.md) can be owners of device templates.

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "devicetemplate-list-owners-permissions"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e/owners
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/devicetemplate-list-owners-permissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/devicetemplate-list-owners-permissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/devicetemplate-list-owners-permissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/devicetemplate-list-owners-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/devicetemplate-list-owners-permissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/devicetemplate-list-owners-permissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/devicetemplate-list-owners-permissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.servicePrincipal",
      "id": "4vfaf3ac-5122-4a25-98d8-b32c091f441f",
      "accountEnabled": true,
      "alternativeNames": [],
      "createdDateTime": "2024-09-11T21:21:25Z",
      "appDisplayName": "test",
      "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
      "appOwnerOrganizationId": "0a0a0a0a-1111-bbbb-2222-3c3c3c3c3c3c",
      "appRoleAssignmentRequired": false,
      "displayName": "test",
      "isAuthorizationServiceEnabled": false,
      "notificationEmailAddresses": [],
      "publisherName": "Workplace Join Android",
      "samlSLOBindingType": "httpRedirect",
      "servicePrincipalNames": [
        "00001111-aaaa-2222-bbbb-3333cccc4444"
      ],
      "servicePrincipalType": "Application",
      "signInAudience": "AzureADMyOrg",
      "tags": [
        "HideApp",
        "WindowsAzureActiveDirectoryIntegratedApp"
      ]
    }
  ]
}
```

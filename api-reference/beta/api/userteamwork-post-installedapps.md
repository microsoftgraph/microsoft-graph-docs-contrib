---
title: "Install app for user"
description: "Install an app in the personal scope of the specified user."
author: "akjo"
doc_type: "apiPageType"
ms.localizationpriority: medium
ms.subservice: "teams"
ms.date: 04/05/2024
---

# Install app for user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Install an [app](../resources/teamsapp.md) in the personal scope of the specified [user](../resources/user.md).

>**Note:** This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_post_installedapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-post-installedapps-permissions.md)]

> [!NOTE]
> If you want your app to install, get, upgrade, or remove an app for the user, you must use the `TeamsAppInstallation.ReadWriteForUser` permission.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id | user-principal-name}/teamwork/installedApps
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

The request body should contain the catalog generated app ID for the app catalog. For details, see [teamsApp properties](../resources/teamsapp.md#properties).
The following table lists additional parameters that can be used with the request body.

|Parameter|Type|Description|
|:---|:---|:---|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|The set of resource-specific permissions that are being consented to.|

> **Note:** The permissions consented to during the install must be the same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsappdefinition.md) of the app. To get the application and delegated resource-specific permissions, see [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app). If only delegated resource-specific permissions are present in the **teamsAppDefinition**, then the permissions can be omitted from a request body.

## Response

If successful, this method returns a `201 Created` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Install an app for a user

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_add_teamsApp"
}-->
```http
POST https://graph.microsoft.com/beta/users/5b649834-7412-4cce-9e69-176e95a394f5/teamwork/installedApps
Content-type: application/json

{
   "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-add-teamsapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-add-teamsapp-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-add-teamsapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-add-teamsapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-add-teamsapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-add-teamsapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-add-teamsapp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-add-teamsapp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
```

### Example 2: Install an app for a user and consent to the resource-specific permissions required by the app

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_add_teamsApp_consent_resource_specific_permissions"
}-->
```http
POST https://graph.microsoft.com/beta/users/5b649834-7412-4cce-9e69-176e95a394f5/teamwork/installedApps
Content-Type: application/json

{
  "teamsApp@odata.bind": "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a",
  "consentedPermissionSet": {
    "resourceSpecificPermissions": [
      {
        "permissionValue": "TeamsActivity.Send.User",
        "permissionType": "Application"
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-add-teamsapp-consent-resource-specific-permissions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-add-teamsapp-consent-resource-specific-permissions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-add-teamsapp-consent-resource-specific-permissions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-add-teamsapp-consent-resource-specific-permissions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-add-teamsapp-consent-resource-specific-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-add-teamsapp-consent-resource-specific-permissions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-add-teamsapp-consent-resource-specific-permissions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-add-teamsapp-consent-resource-specific-permissions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 201 Created
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "User add teamsAppInstallations",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

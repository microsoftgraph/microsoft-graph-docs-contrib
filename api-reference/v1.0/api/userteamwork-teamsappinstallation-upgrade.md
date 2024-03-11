---
title: "teamsAppInstallation in personal scope: upgrade"
description: "Upgrade an app installation in the personal scope of the specified user to the latest version of the app."
author: "akjo"
doc_type: "apiPageType"
ms.localizationpriority: medium
ms.subservice: "teams"
---

# teamsAppInstallation in personal scope: upgrade

Namespace: microsoft.graph

Upgrade an [app installation](../resources/teamsappinstallation.md) in the personal scope of the specified [user](../resources/user.md) to the latest version of the app.

>**Note:** This API works differently in one or more national clouds. For details, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_teamsappinstallation_upgrade" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-teamsappinstallation-upgrade-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id | user-principal-name}/teamwork/installedApps/{app-installation-id}/upgrade
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the properties.

The following table shows the properties that can be used with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsappdefinition.md)|Set of resource-specific permissions that are being consented to. Optional.|

> **Note:** The permissions consented to during the install must be the same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsappdefinition.md) of the app. To get the application and delegated resource-specific permissions, see [List apps installed in the personal scope of a user](../api/userteamwork-list-installedapps.md). If only delegated resource-specific permissions are present in the **teamsAppDefinition**, then the permissions can be omitted from the request body.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Upgrade a specific app installed for a user

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_upgrade_teamsApp",
  "sampleKeys": ["5b649834-7412-4cce-9e69-176e95a394f5", "NWI2NDk4MzQtNzQxMi00Y2NlLTllNjktMTc2ZTk1YTM5NGY1IyNhNmI2MzM2NS0zMWE0LTRmNDMtOTJlYy03MTBiNzE1NTdhZjk"]
}-->

```http
POST /users/5b649834-7412-4cce-9e69-176e95a394f5/teamwork/installedApps/NWI2NDk4MzQtNzQxMi00Y2NlLTllNjktMTc2ZTk1YTM5NGY1IyNhNmI2MzM2NS0zMWE0LTRmNDMtOTJlYy03MTBiNzE1NTdhZjk/upgrade
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-upgrade-teamsapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Upgrade a specific app installed for a user and consent to the resource specific permissions

To get the list of resource-specific permissions required by the app, get the app from the **appCatalog**. For details, see [List apps installed in the personal scope of a user](../api/userteamwork-list-installedapps.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_upgrade_teamsApp_and_consent_resource_specific_permissions",
  "sampleKeys": ["5b649834-7412-4cce-9e69-176e95a394f5", "NWI2NDk4MzQtNzQxMi00Y2NlLTllNjktMTc2ZTk1YTM5NGY1IyNhNmI2MzM2NS0zMWE0LTRmNDMtOTJlYy03MTBiNzE1NTdhZjk"]
}-->

```http
POST /users/5b649834-7412-4cce-9e69-176e95a394f5/teamwork/installedApps/NWI2NDk4MzQtNzQxMi00Y2NlLTllNjktMTc2ZTk1YTM5NGY1IyNhNmI2MzM2NS0zMWE0LTRmNDMtOTJlYy03MTBiNzE1NTdhZjk/upgrade
Content-Type: application/json

{
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-upgrade-teamsapp-and-consent-resource-specific-permissions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Upgrade teamsApp for user",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

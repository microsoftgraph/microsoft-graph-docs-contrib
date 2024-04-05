---
title: "Get settings"
description: "Read the user and organization settings object."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# Get settings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the user and organization [userSettings](../resources/usersettings.md) object.
To learn how to update the properties of the [userSettings](../resources/usersettings.md) object, see [update user settings](usersettings-update.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usersettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/usersettings-get-permissions.md)]

## HTTP request

```http
GET /me/settings/
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference).

```http
GET /users/{id | userPrincipalName}/settings/
```

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [userSettings](../resources/usersettings.md) object in the response body.

## Example

##### Request

```http
GET https://graph.microsoft.com/beta/me/settings
```

##### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": false
}
```



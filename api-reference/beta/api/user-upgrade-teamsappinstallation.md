---
title: "Upgrade an app installed for user"
description: "Upgrade an app installation in the personal scope of a user"
author: "clearab"
doc_type: "apiPageType"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Upgrade an app already installed for user

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upgrade an [app](../resources/teamsappinstallation.md) installation in the personal scope of the specified [user](../resources/user.md)
to the latest version of the app.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite.All, Directory.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{id}/teamwork/installedApps/{id}/upgrade
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.

```http
POST /users/{id}/teamwork/installedApps/{id}/upgrade
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

```http
HTTP/1.1 204 No Content
```


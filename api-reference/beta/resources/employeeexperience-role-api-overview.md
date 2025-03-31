---
title: "Use the Microsoft Graph API to work with role management in Viva Engage"
description: "The Microsoft Graph API enables apps to manage communities in Viva Engage."
ms.localizationpriority: medium
author: "richafnu"
ms.subservice: "viva-engage"
doc_type: conceptualPageType
ms.date: 03/27/2025
---

# Use the Microsoft Graph API to work with Viva Engage

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph API enables apps to manage both admin and non-admin roles within Viva Engage. Viva Engage is a social fabric for the Microsoft Viva suite of apps that connects people across the organization to share and learn. It's a place where employees can connect with leaders, coworkers, and communities, share their knowledge and ideas, and find belonging at work. 

> [!IMPORTANT]
> The Viva Engage API in Microsoft Graph is only supported for Viva Engage networks in [native mode](/viva/engage/overview-native-mode). You can't use this API to manage legacy or external Viva Engage networks.

## Authorization

To call the Viva Engage API in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Common use cases

The following table lists common use cases for the role managemnt APIs in Viva Engage.

| Use case | API | Notes |
|:-----------|:--------|:--------|
| Get a static list of role types maintained in Viva Engage | [GET /employeeExperience/roles](../api/employeeexperience-post-communities.md) | If successful, this method returns a `200 OK` response code and a list of roles in the response body. |
| Get a list of users with assigned roles in Viva Engage | [GET /employeeExperience/roles/{roleId}/members](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and a list of engagement role members in the response body. |
| Get a list of roles assigned to the logged in user in Viva Engage | [GET /me/employeeExperience/assignedRoles](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and a list of roles object in the response body. |
| Get a list of roles assigned to a user in Viva Engage | [GET /users/{usersId}/employeeExperience/assignedRoles/{engagementRoleId}/members](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and a list of roles object in the response body. |
| Create/Assign role to a user in Viva Engage | [POST /employeeExperience/roles(roleId)/members](../api/community-update.md) | If successful, this method returns a `204 No Content response` code.|
| Delete assigned role for a user in Viva Engage | [DELETE employeeExperience/roles/{roleId}/members/{userId}](../api/community-delete.md) | If successful, this method demotes a user from a role in Viva Engage. |

## API limits

Viva Engage API calls are subject to rate limiting, allowing 10 requests per user, per app, within a 30-second time period. When you exceed the rate limit, all subsequent requests return a `429 Too Many Requests` response code. 

For guidance on how to handle throttling in Microsoft Graph, see [Microsoft Graph throttling guidance](/graph/throttling).

## Next steps

- Use the Microsoft Graph API for role management in Viva Engage.
- Try the Viva Engage API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

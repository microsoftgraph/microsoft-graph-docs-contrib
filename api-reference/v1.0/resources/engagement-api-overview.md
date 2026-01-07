---
title: "Use the Microsoft Graph API to work with Viva Engage"
description: "Learn how to manage communities and roles in Viva Engage using the Microsoft Graph API."
ms.localizationpriority: medium
author: "aditijha4"
ms.subservice: "viva-engage"
doc_type: conceptualPageType
ms.date: 08/19/2024
---

# Use the Microsoft Graph API to work with Viva Engage

The Microsoft Graph API enables apps to manage communities and roles in Viva Engage. Viva Engage is a social fabric for the Microsoft Viva suite of apps that connects people across the organization to share and learn. It's a place where employees can connect with leaders, coworkers, and communities, share their knowledge and ideas, and find belonging at work.

> [!IMPORTANT]
> The Viva Engage API in Microsoft Graph is only supported for Viva Engage networks in [native mode](/viva/engage/overview-native-mode). You can't use this API to manage legacy or external Viva Engage networks.

## Authorization

To call the Viva Engage API in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Common use cases

The following table lists common use cases for the Viva Engage API.

| Use case | API | Notes |
|:-----------|:--------|:--------|
| Create a community | [POST /employeeExperience/communities](../api/employeeexperience-post-communities.md) | If successful, this method returns a `202 Accepted` response code that contains a link to an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object. |
| Poll for community creation status | [GET /employeeExperience/engagementAsyncOperations/{engagementAsyncOperationId}](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object in the response body. Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks. When the request completes successfully, the **status** indicates `succeeded` and the **resourceLocation** points to the created or modified resource. |
| Get a community after creation | [GET /employeeExperience/communities/{communityId}](../api/community-get.md) | If successful, this method returns a `200 OK` response code and a [community](../resources/community.md) object in the response body. The community object references the associated [Microsoft 365 group](../resources/group.md) ID that you can use for community membership and ownership management. |
| Get a list of communities | [GET /employeeExperience/communities](../api/employeeexperience-list-communities.md) | If successful, this method returns a `200 OK` response code and a collection of Viva Engage [community](../resources/community.md) objects in the response body.|
| Update a community | [PATCH /employeeExperience/communities/{communityId}](../api/community-update.md) | If successful, this method updates an existing Viva Engage [community](../resources/community.md) and returns a `204 No Content` response code. |
| Delete a community | [DELETE /employeeExperience/communities/{communityId}](../api/community-delete.md) | If successful, this method deletes a Viva Engage [community](../resources/community.md) along with all associated Microsoft 365 content, including the connected Microsoft 365 group, OneNote notebook, and Planner plans. For more information, see [What happens if I delete a Viva Engage community connected to Microsoft 365 groups](/viva/engage/engage-microsoft-365-groups#q-what-happens-if-i-delete-a-viva-engage-community-connected-to-microsoft-365-groups). |
| Add members to a community | [POST /groups/{groupId}/members/$ref](../api/group-post-members.md)  | When new members are added to a group, the associated membership of the community is automatically updated. |
| Remove a member from a community | [DELETE /groups/{groupId}/members/{userId}/$ref](../api/group-delete-members.md) | When a member is removed from a group, the associated membership of the community is automatically updated. |
| Add a community admin | [POST /groups/{groupId}/owners/$ref](../api/group-post-owners.md) | When a user is added as a group owner, they automatically become an admin of the associated community. |
| Remove a community admin | [DELETE /groups/{groupId}/owners/{userId}/$ref](../api/group-delete-owners.md) | When a group owner is removed, they stop being admin for the associated community. You can't remove the last owner ([user](../resources/user.md) object) of a group. | 
|**Role management**|||
| Get a static list of role types supported in Viva Engage | [GET /employeeExperience/roles](../api/employeeexperience-list-roles.md) | If successful, this method returns a `200 OK` response code and a list of roles in the response body. |
| Get a list of users with a specific Viva Engage role | [GET /employeeExperience/roles/{engagementRoleId}/members](../api/engagementrole-list-members.md) | If successful, this method returns a `200 OK` response code and a list of engagement role members in the response body. |
| Get a list of Viva Engage roles assigned to the signed-in user | [GET /me/employeeExperience/assignedRoles](../api/employeeexperienceuser-list-assignedroles.md) | If successful, this method returns a `200 OK` response code and a list of roles in the response body. |
| Get a list of Viva Engage roles assigned to a user  | [GET /users/{userId}/employeeExperience/assignedRoles](../api/employeeexperienceuser-list-assignedroles.md) | If successful, this method returns a `200 OK` response code and a list of roles in the response body. |
| Assign a Viva Engage role to a user | [POST /employeeExperience/roles/{engagementRoleId}/members](../api/engagementrole-post-members.md) | If successful, this method assigns a Viva Engage role to a user.|
| Delete a Viva Engage role from a user | [DELETE /employeeExperience/roles/{roleId}/members/{userId}](../api/engagementrole-delete-members.md) | If successful, this method revokes a Viva Engage role from a user.|

## Communities and groups

For Viva Engage networks in native mode, the creation of a new Viva Engage community also results in the creation of a connected Microsoft 365 group, along with a new SharePoint site, OneNote notebook, and Planner plan. Use the associated group to manage operations on a community, for example:

* Add or remove group members
* Manage group ownership
* Delete a group
* Rename a group
* Update the group description

For more information about the relationship between Viva Engage communities and Microsoft 365 groups, see [Viva Engage and Microsoft 365 Groups](/viva/engage/engage-microsoft-365-groups).

>**Note:** You can't use the [Create group](../api/group-post-groups.md) API to provision a Viva Engage community.

## Role management

Viva Engage supports role-based access by enabling the assignment of predefined administrative roles (such as *Network Administrator* and *Verified Administrator*) and corporate communication roles within the platform.

These assignable roles are predefined and managed by Viva Engage. Custom roles can't be created or deleted. For more information, see [Manage administrator roles in Viva Engage](/viva/engage/eac-key-admin-roles-permissions).

Microsoft Entra roles are managed through the Microsoft Entra admin center, whereas Viva Engage-specific roles can be assigned and managed using the Viva Engage platform and Microsoft Graph APIs. For more information, see [Microsoft 365 admin center guide](/microsoft-365/admin/add-users/assign-admin-roles).

## API limits

Viva Engage API calls are subject to rate limiting, allowing 10 requests per user, per app, within a 30-second time period. When you exceed the rate limit, all subsequent requests return a `429 Too Many Requests` response code. 

For guidance on how to handle throttling in Microsoft Graph, see [Microsoft Graph throttling guidance](/graph/throttling).

## Next steps

- Use the Microsoft Graph API to manage communities and roles in Viva Engage.
- Try the Viva Engage API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

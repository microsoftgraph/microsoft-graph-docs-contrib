---
title: "Use the Microsoft Graph API to work with Viva Engage (preview)"
description: "The Microsoft Graph API enables apps to create communities and manage their memberships in Viva Engage."
ms.localizationpriority: medium
author: "aditijha4"
ms.prod: "employee-engagement"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Viva Engage (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph API enables apps to create communities and manage their memberships in Viva Engage. Viva Engage is a social fabric for the Microsoft Viva suite of apps that connects people across the organization to share and learn. It's a place where employees can connect with leaders, coworkers, and communities, share their knowledge and ideas, and find belonging at work. 

## Authorization

To call the Viva Engage API in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Common use cases

| Use case | API | Notes |
|:-----------|:--------|:--------|
| Create a community | [POST employeeExperience/communities](../api/employeeexperience-post-communities.md) | If successful, this method returns a `202 Accepted` response code that contains a link to [engagementAsyncOperation](../resources/engagementasyncoperation.md) object. |
| Poll for community creation status | [GET employeeExperience/engagementOperations/{engagementAsyncOperation-id}](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object in the response body. Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks. When the request completes successfully, the **status** indicates `succeeded` and the **resourceLocation** points to the created/modified resource. |
| Get a community after creation | [GET employeeExperience/communities/{community-id}](../api/community-get.md) | If successful, this method returns a `200 OK` response code and a [community](../resources/community.md) object in the response body. The community object references the associated [Microsoft 365 group](../resources/group.md) ID that can be used for community membership and ownership management. |
| Add members to a community | [PATCH https://graph.microsoft.com/v1.0/groups/{group-id}](../api/group-post-members.md)  | When new members are added to a group, the associated membership of the community is automatically updated. |
| Remove a member from a community | [DELETE /groups/{id}/members/{id}/$ref](../api/group-delete-members.md) | When a member is removed from a group, the associated membership of the community is automatically updated. |
| Add a community admin | [POST /groups/{id}/owners/$ref](../api/group-post-owners.md) | When a user is added as a group owner, they automatically become an admin of the associated community. |
| Remove a community admin | [DELETE /groups/{id}/owners/{id}/$ref](../api/group-delete-owners.md) | Once a group owner is removed, they stop being admin for the associated community. The last owner (user object) of the group can't be removed. | 


## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
- Use the Microsoft Graph API to create communities and manage their memberships in Viva Engage.
- Try the employee engagement API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

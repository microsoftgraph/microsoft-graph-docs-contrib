---
title: "Use the Microsoft Graph API to work with Viva Engage"
description: "Microsoft Viva Engage is a place to connect, express, and find belonging at work."
ms.localizationpriority: medium
author: "aditijha4"
ms.prod: "employee-engagement"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Viva Engage

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Viva Engage is a social fabric for the Microsoft Viva suite of apps that connects people across the organization to share and learn. It's a place where employees can connect with leaders, coworkers, and communities, share their knowledge and ideas, and find belonging at work. 

Microsoft exposes public API for common Viva Engage use cases like community creation and membership

## Common use cases

| Use case | API | Notes |
|:-----------|:--------|:--------|
| 1. Create community | [POST employeeExperience/communities](../api/employeeexperience-post-communities.md) | If successful, this method returns a `202 Accepted` response code that contains a link to [engagementAsyncOperation](../resources/engagementasyncoperation.md) object, which can be polled for status. |
| 2. Poll for 'community creation status | [GET employeeExperience/engagementOperations/{engagementAsyncOperation-id}](../api/engagementasyncoperation-get.md) | If successful, this method returns a `200 OK` response code and an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object in the response body. Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks. When request completes successfully, the status will be "succeeded" and the resourceLocation will point to the created/modified resource. |
| 3. Read community after creation | [GET employeeExperience/communities/{community-id}](../api/community-get.md) | If successful, this method returns a `200 OK` response code and a [community](../resources/community.md) object in the response body. The community object references the associated [Microsoft 365 group](../resources/group.md) id, which can be used for community membership and ownership management |
| 4. Add members to community | [PATCH https://graph.microsoft.com/v1.0/groups/{group-id}](../api/group-post-members.md)  | Adding new members to a group automatically updates the associated community's membership |
| 5. Remove a member from a community | [DELETE /groups/{id}/members/{id}/$ref](../api/group-delete-members.md) | Removing a member from a group automatically updates the associated community's membership |
| 6. Add a community admin | [POST /groups/{id}/owners/$ref](../api/group-post-owners.md) | Adding a user as group owner would make them an admin of the associated community |
| 7. Remove a community admin | [DELETE /groups/{id}/owners/{id}/$ref](../api/group-delete-owners.md) | Once a group owner is removed, they stop being admin for the associated community. The last owner (user object) of the group can't be removed | 



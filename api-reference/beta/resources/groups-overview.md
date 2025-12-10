---
title: Manage Groups in Microsoft Graph
description: Discover how to use the Microsoft Graph groups API to create and manage groups, simplifying access management for your organization.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yuhko, khotzteam, aadgroupssg
ms.localizationpriority: high
ms.subservice: entra-groups
doc_type: conceptualPageType
ms.topic: overview
ms.date: 04/29/2025
#customer intent: As a developer, I want to understand how to create and manage groups using Microsoft Graph so that I can simplify access management for my organization.  
---

# Manage groups in Microsoft Graph

Groups in Microsoft Graph are containers for principals like users, devices, or applications that share access to resources. They make access management easier by grouping principals instead of managing them individually.

The [group resource type](../resources/group.md) in Microsoft Graph provides APIs to create and manage supported group types and their functionalities.

> [!NOTE]
> - You can only create groups using work or school accounts. Personal Microsoft accounts don't support groups.
> - All group-related operations in Microsoft Graph need administrator consent.

## Types of groups supported in Microsoft Graph

Microsoft Graph supports these types of groups:

- [Microsoft 365 Groups](/microsoft-365/admin/create-groups/office-365-groups)
- Security groups
- Mail-enabled security groups
- Distribution groups

> [!NOTE]
> [Dynamic distribution groups](/exchange/recipients/dynamic-distribution-groups/dynamic-distribution-groups?view=exchserver-2019&preserve-view=true) aren't supported in Microsoft Graph.

The following table shows how to identify types of groups using their properties and whether they can be managed through the Microsoft Graph groups API. The core differentiators are the values in the **groupTypes**, **mailEnabled**, and **securityEnabled** properties of a group.

| Type | groupTypes | mailEnabled | securityEnabled | Managed via Microsoft Graph |
|--|--|--|--|--|
| [Microsoft 365 Groups](#microsoft-365-groups) | `["Unified"]` | `true` | `true` or `false` | Yes |
| [Security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `false` | `true` | Yes |
| [Mail-enabled security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `true` | `true` | No (read-only) |
| Distribution groups | `[]` | `true` | `false` | No (read-only) |

For more information, see [Compare groups in Microsoft Entra ID](/microsoft-365/admin/create-groups/compare-groups).

## Microsoft 365 Groups

Microsoft 365 Groups are designed for collaboration and provide access to shared resources like:

- Outlook conversations and calendar.
- SharePoint files and team site.
- OneNote notebook.
- Planner plans.
- Intune device management.

Here's an example of a Microsoft 365 group in JSON format:

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "4c5ee71b-e6a5-4343-9e2c-4244bc7e0938",
    "displayName": "OutlookGroup101",
    "groupTypes": ["Unified"],
    "mailEnabled": true,
    "securityEnabled": false,
    "mail": "outlookgroup101@service.microsoft.com",
    "visibility": "Public"
}
```

To learn more about Microsoft 365 Groups, see [Overview of Microsoft 365 Groups in Microsoft Graph](/graph/microsoft365-groups-concept-overview).

## Security groups and mail-enabled security groups

**Security groups** control access to resources. They can include users, other groups, devices, and service principals.

**Mail-enabled security groups** function like security groups but also allow email communication. These groups are read-only in Microsoft Graph. For more information, see [Manage mail-enabled security groups](/exchange/recipients/mail-enabled-security-groups).

Example of a security group in JSON format:

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.group",
    "id": "f87faa71-57a8-4c14-91f0-517f54645106",
    "displayName": "SecurityGroup101",
    "groupTypes": [],
    "mailEnabled": false,
    "securityEnabled": true
}
```

## Group membership

Groups can have static or dynamic memberships. Dynamic membership uses rules to automatically add or remove members based on their properties. Not all object types can be members of Microsoft 365 and security groups.

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

### Dynamic membership

Dynamic membership means principals are added or removed from the group based on their properties. For example, a group can be set to include all users in the "Marketing" department. When a user is added to that department, they're automatically added to the group. Similarly, if a user leaves the department, they're removed from the group.

Only users and devices can be members of a dynamic group. Dynamic membership requires a Microsoft Entra ID P1 license for each unique user in a dynamic group. 

The membership rule is defined using the [Microsoft Entra ID dynamic group rule syntax](/entra/identity/users/groups-dynamic-membership).

Example of a dynamic membership rule:

```json
"membershipRule": "user.department -eq \"Marketing\""
```

Dynamic membership requires the `"DynamicMembership"` value in the **groupTypes** property. The dynamic membership rule can be turned on or off through the **membershipRuleProcessingState** property. You can update a group from static membership to dynamic membership.

Example request to create a dynamic Microsoft 365 group:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "groups_overview_createdynamicgroup"
}-->
```http
POST https://graph.microsoft.com/beta/groups
Content-type: application/json

{
    "description": "Marketing department folks",
    "displayName": "Marketing department",
    "groupTypes": [
        "Unified",
        "DynamicMembership"
    ],
    "mailEnabled": true,
    "mailNickname": "marketing",
    "securityEnabled": false,
    "membershipRule": "user.department -eq \"Marketing\"",
    "membershipRuleProcessingState": "on"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/groups-overview-createdynamicgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/groups-overview-createdynamicgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/groups-overview-createdynamicgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/groups-overview-createdynamicgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/groups-overview-createdynamicgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/groups-overview-createdynamicgroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/groups-overview-createdynamicgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `201 Created` response code and the newly created group object in the response body.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "6f7cd676-5445-47c4-9c2b-c47da4671da2",
    "createdDateTime": "2023-01-20T07:00:31Z",
    "description": "Marketing department folks",
    "displayName": "Marketing department",
    "groupTypes": [
        "Unified",
        "DynamicMembership"
    ],
    "mail": "marketing@contoso.com",
    "mailEnabled": true,
    "mailNickname": "marketing",
    "membershipRule": "user.department -eq \"Marketing\"",
    "membershipRuleProcessingState": "On"
}
```

## Other group settings

You can configure other settings for groups, such as:

| Setting | Applies to |
|--|--|
| [Group expiration](../resources/grouplifecyclepolicy.md) | Microsoft 365 Groups |
| [Group settings](/graph/group-directory-settings) | Microsoft 365 Groups |
| [On-premises synchronization settings](../resources/onpremisesdirectorysynchronization.md) | Security and Microsoft 365 Groups |
| [Source of Authority conversion](../resources/onpremisessyncbehavior.md) | Security and Microsoft 365 Groups |

## Group search limitations for guests in organizations

Apps can search for groups in an organization's directory by querying the `/groups` resource (for example, `https://graph.microsoft.com/beta/groups`). This capability is available to administrators and members, but not to guests.

Guests, depending on the permissions granted to the app, can view the profile of a specific group (for example, `https://graph.microsoft.com/beta/group/fc06287e-d082-4aab-9d5e-d6fd0ed7c8bc`). However, they can't perform queries on the `/groups` resource that return multiple results.

Members generally have broader access to group resources, while guests have restricted permissions, limiting their access to certain group features. For more information, see [Compare member and guest default permissions](/entra/fundamentals/users-default-permissions?context=graph%2Fcontext#compare-member-and-guest-default-permissions).

With appropriate permissions, apps can access group profiles through navigation properties, such as `/groups/{id}/members`.

## Group-based licensing

Group-based licensing allows you to assign one or more product licenses to a Microsoft Entra group. Group members, including any new members, automatically inherit these licenses. When members leave the group, their licenses are automatically removed. This feature is only available for security groups and Microsoft 365 Groups with **securityEnabled** set to `true`.

For more information, see [What is group-based licensing in Microsoft Entra ID?](/entra/fundamentals/concept-group-based-licensing).

## Properties stored outside the main data store

Most group resource data is stored in Microsoft Entra ID, but some properties, such as **autoSubscribeNewMembers** and **allowExternalSenders**, are stored in Microsoft Exchange. These properties can't be included in the same Create or Update request body as other group properties.

Additionally, properties stored outside the main data store aren't supported for [change tracking](/graph/delta-query-overview). Changes to these properties don't appear in delta query responses.

The following group properties are stored outside the main data store:  
**accessType**, **allowExternalSenders**, **autoSubscribeNewMembers**, **cloudLicensing**, **hideFromAddressLists**, **hideFromOutlookClients**, **welcomeMessageEnabled**, **isFavorite**, **isSubscribedByMail**, **unseenConversationsCount**, **unseenCount**, **unseenMessagesCount**, **membershipRuleProcessingStatus**, **isArchived**.

## Common use cases for the groups API

The Microsoft Graph groups API supports these common operations:

| Use case | API operations |
|--|--|
| **Create and manage groups** | [Create](../api/group-post-groups.md), [list](../api/group-list.md), [update](../api/group-update.md), and [delete](../api/group-delete.md) |
| **Manage group membership** | [List members](../api/group-list-members.md), [add member](../api/group-post-members.md), and [remove member](../api/group-delete-members.md) |
| **Manage group ownership** | [List owners](../api/group-list-owners.md), [add owner](../api/group-post-members.md), and [remove owner](../api/group-delete-members.md) |
| **Microsoft 365 group functionality** | [Manage conversations](../api/group-post-conversations.md), [calendar events](../api/group-post-events.md), [OneNote notebooks](../api/onenote-post-notebooks.md), and [enable for Teams](../api/team-put-teams.md) |

## Microsoft Entra roles for managing groups

To manage groups, the signed-in user must have the appropriate Microsoft Graph permissions and be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The least privileged roles for managing groups are:

- Directory Writers
- Groups Administrator
- User Administrator

For more information, see [Least privileged roles to manage groups](/entra/identity/role-based-access-control/delegate-by-task#groups).

## Next step

> [!div class="nextstepaction"]
> [Start working with groups](../resources/group.md)


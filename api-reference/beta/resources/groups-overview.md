---
title: "Working with groups in Microsoft Graph"
description: "Use the groups API to create and manage different types of groups such as Microsoft 365 groups, security groups, mail-enabled security groups, and distribution groups."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yuhko, khotzteam, aadgroupssg
ms.localizationpriority: high
ms.subservice: "entra-groups"
doc_type: conceptualPageType
ms.topic: overview
ms.date: 05/22/2024
---

# Working with groups in Microsoft Graph

Groups are collections of principals with shared access to resources in Microsoft services or in your app. Different principals such as users, other groups, devices, and applications can be part of groups. Using groups helps you avoid working with individual principals and simplifies management of access to your resources.

Microsoft Graph exposes the [group resource type](../resources/group.md) and its associated APIs to create and manage different types of groups and group functionality.

> [!NOTE]
> 1. Groups can only be created through work or school accounts. Personal Microsoft accounts don't support groups.
> 2. All group-related operations in Microsoft Graph require administrator consent.

## Group types in Microsoft Entra ID and Microsoft Graph

Microsoft Entra ID supports the following types of groups.

- [Microsoft 365 groups](/microsoft-365/admin/create-groups/office-365-groups)
- Security groups
- Mail-enabled security groups
- Distribution groups

> [!NOTE]
> Microsoft also supports [dynamic distribution groups](/exchange/recipients/dynamic-distribution-groups/dynamic-distribution-groups?view=exchserver-2019&preserve-view=true) which can't be managed or retrieved through Microsoft Graph.

In Microsoft Graph, the type of group can be identified by the settings of its **groupTypes**, **mailEnabled**, and **securityEnabled** properties. The following table indicates how to differentiate the groups by their settings, and whether the group types can be managed through the Microsoft Graph groups APIs.

| Type |groupTypes | mailEnabled | securityEnabled | Created and managed via the groups APIs |
|--|--|--|--|--|
| [Microsoft 365 groups](#microsoft-365-groups) | `["Unified"]` | `true` | `true` or `false` | Yes |
| [Security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `false` | `true` | Yes |
| [Mail-enabled security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `true` | `true` | No; read-only through Microsoft Graph |
| Distribution groups | `[]` | `true` | `false` | No; read-only through Microsoft Graph |

For more information about groups in Microsoft Entra ID, see [compare groups in Microsoft Entra ID](/microsoft-365/admin/create-groups/compare-groups).

## Microsoft 365 groups

The power of Microsoft 365 groups is in its collaborative nature, perfect for people who work together on a project or a team. They're created with resources that members of the group share, including:

- Outlook conversations
- Outlook calendar
- SharePoint files
- OneNote notebook
- SharePoint team site
- Planner plans
- Intune device management

The following JSON object shows a sample representation of a group when you call the Microsoft Graph groups API.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id": "4c5ee71b-e6a5-4343-9e2c-4244bc7e0938",
    "deletedDateTime": null,
    "classification": "MBI",
    "createdDateTime": "2016-08-23T14:46:56Z",
    "description": "This is a group in Outlook",
    "displayName": "OutlookGroup101",
    "groupTypes": [
        "Unified"
    ],
    "mail": "outlookgroup101@service.microsoft.com",
    "mailEnabled": true,
    "mailNickname": "outlookgroup101",
    "preferredLanguage": null,
    "proxyAddresses": [
        "smtp:outlookgroup101@contoso.com",
        "SMTP:outlookgroup101@service.microsoft.com"
    ],
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```

## Security groups and mail-enabled security groups

**Security groups** are for controlling user access to resources. By checking whether a user is a member of a security group, your app can make authorization decisions when that user is trying to access some secure resources in your app. Security groups can have users, other security groups, devices, and service principals as members.

**Mail-enabled security groups** are used in the same way as security groups, but can be used to send emails to group members. Mail-enabled security groups can't be created or updated through the API; instead, they're read-only. For more information, see [Manage mail-enabled security groups](/exchange/recipients/mail-enabled-security-groups).

The following JSON object shows a sample representation of a group when you call the Microsoft Graph groups API.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.group",
    "id": "f87faa71-57a8-4c14-91f0-517f54645106",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2016-07-20T09:21:23Z",
    "description": "This group is a Security Group",
    "displayName": "SecurityGroup101",
    "groupTypes": [],
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "",
    "preferredLanguage": null,
    "proxyAddresses": [],
    "securityEnabled": true
}
```

## Group membership

Membership to groups can be statically assigned or dynamic. Not all object types can be members of both Microsoft 365 and security groups.

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

### Dynamic membership

Microsoft 365 and security groups can have dynamic membership rules that automatically add or remove members from the group based on the principal's properties. For example, a "Marketing employees" group can define a dynamic membership rule that only users with their department property set to "Marketing" can be members of the group. In this case, any users who leave the department are automatically removed from the group.

Only users and devices are supported as members in dynamic membership groups. You can create a dynamic membership group for devices or users, but not both.

The dynamic membership rules are specified through the **membershipRule** property during group creation. A single expression follows this syntax: `Property Operator Value`.

- The `Property` is defined following this syntax: `object.property`. For example, `user.department` or `device.accountEnabled`.
- The rule syntax supports various operators. For more information, see [Supported expression operators](/azure/active-directory/enterprise-users/groups-dynamic-membership).
- A `Value` of type String must be enclosed in double quotes ("). You must use a backslash to escape any double quotes inside double quotes. This requirement doesn't apply when using the rule builder in the Microsoft Entra admin center because the expression isn't enclosed in double quotes.

The following example shows a complete rule.

`"membershipRule": "user.department -eq \"Marketing\""`.

You can combine multiple expressions in a rule using the `and`, `or`, and `not` operators.

The **groupTypes** property must also include the `"DynamicMembership"` value in the collection. The dynamic membership rule can be turned on or off through the **membershipRuleProcessingState** property. You can update a group with assigned membership to have dynamic membership.

The following example request creates a new Microsoft 365 group that can only include employees in the Marketing department.


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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/groups-overview-createdynamicgroup-cli-snippets.md)]
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

To learn more about formulating membership rules, see [Dynamic membership rules for groups in Microsoft Entra ID](/azure/active-directory/enterprise-users/groups-dynamic-membership).

> [!NOTE]
> Dynamic membership rules requires the tenant to have at least a Microsoft Entra ID P1 license for each unique user that is a member of one or more dynamic groups.

## Other types of groups

Microsoft 365 groups in Yammer are used to facilitate user collaboration through Yammer posts. This type of group can be returned through a read request, but their posts can't be accessed through the API. When Yammer posts and conversation feeds are enabled on a group, default Microsoft 365 group conversations are disabled. To learn more, see [Yammer developer API docs](/rest/api/yammer/).

## Additional settings for security and Microsoft 365 groups

Apart from configuring the properties on the group resource, you can also configure the following settings for groups.

| Setting | Applies to |
|--|--|
| [Group expiration](../resources/grouplifecyclepolicy.md) | Microsoft 365 groups |
| [Group settings](/graph/group-directory-settings) such as whether the group can have guests as members, allowed words in group names, who is allowed to create groups, and so on | Microsoft 365 groups |
| [Settings to synchronize on-premises groups with the cloud](../resources/onpremisesdirectorysynchronization.md), such as whether writeback is enabled | Security and Microsoft 365 groups |

## Group search limitations for guest users in organizations

Group search capabilities allow the app to search for any groups in an organization's directory by performing queries against the `/groups` resource (for example, `https://graph.microsoft.com/beta/groups`). Both administrators and users who are members have this capability; however, guest users don't.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific group (for example, `https://graph.microsoft.com/beta/group/fc06287e-d082-4aab-9d5e-d6fd0ed7c8bc`); however, it can't perform queries against the `/groups` resource that potentially returns more than a single resource.

With the appropriate permissions, the app can read the profiles of groups that it obtains by following links in navigation properties; for example, `/groups/{id}/members`.

For more information about what guest users can do with groups, see [Compare member and guest default permissions](/entra/fundamentals/users-default-permissions?context=graph%2Fcontext#compare-member-and-guest-default-permissions).

## Group-based licensing

You can use group-based licensing to assign one or more product licenses to a Microsoft Entra group, and the licenses are then inherited by the members of the group, and automatically by any new members. When members leave the group, those licenses are removed. The feature can only be used with security groups and Microsoft 365 groups that have **securityEnabled** set to `true`. 

To learn more about group-based licensing, see [What is group-based licensing in Microsoft Entra ID?](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).
## Properties stored outside the main data store

While the group resource data is mostly stored in Microsoft Entra ID, some of its properties, like **autoSubscribeNewMembers** and **allowExternalSenders**, are stored in Microsoft Exchange. In most instances, you can't specify these properties in the same Create or Update request body as other group properties.

<!-- describe how to identify properties stored outside the main data store-->

Properties stored outside the main data store also aren't supported as part of [change tracking](/graph/delta-query-overview). Therefore, a change to any of these properties doesn't result in an object showing up in the delta query response.

## Common use cases for the groups API in Microsoft Graph

Using Microsoft Graph, you can perform the following common operations on groups.

| Use cases | API operations |
|:-|:-|
| **Create groups, manage group characteristics** |  |
| Create new groups, get existing groups, update the properties on groups, and delete groups. | [Create new groups](../api/group-post-groups.md) <br/> [List groups](../api/group-list.md) <br/> [Update groups](../api/group-update.md) <br/> [Delete groups](../api/group-delete.md) <br/> [Renew](../api/group-renew.md) groups that are about to expire <br/> [Restore](../api/directory-deleteditems-restore.md) deleted Microsoft 365 groups|
| **Manage group membership and ownership** |  |
| List the members of a group, and add or remove members. | [List members](../api/group-list-members.md) <br/> [Add member](../api/group-post-members.md) <br/> [Remove member](../api/group-delete-members.md) |
| Determine whether a user is a member of a group, get all the groups the user is a member of. | [Check member groups](../api/directoryobject-checkmembergroups.md) <br/> [Get member groups](../api/directoryobject-getmembergroups.md) |
| List the owners of a group, and add or remove owners. | [List owners](../api/group-list-owners.md) <br/> [Add owner](../api/group-post-members.md) <br/> [Remove owner](../api/group-delete-members.md) |
| **Group functionality for Microsoft 365 apps** |  |
| Manage group conversations | [Create](../api/group-post-conversations.md), [get](../api/group-get-conversation.md), or [delete](../api/group-delete-conversation.md)  |
| Schedule and manage calendar events on a group calendar | [Create](../api/group-post-events.md), [list](../api/group-list-events.md), [get](../api/group-get-event.md), [update](../api/group-update-event.md), [delete](../api/group-delete-event.md) |
| Manage OneNote notebooks for a group |[Create](../api/onenote-post-notebooks.md), [list](../api/onenote-list-notebooks.md) |
| Enable a Microsoft group for Microsoft Teams |[Create](../api/team-put-teams.md) |

## Microsoft Entra roles for managing groups

To manage groups in delegated scenarios, the app must be granted the appropriate Microsoft Graph permissions and the signed-in user must be in a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

The following Microsoft Entra roles are the least privileged roles for all read and write operations on groups through Microsoft Graph, *except* for role-assignable groups. The least privileged role for managing role-assignable groups is **Privileged Role Administrator**.

- Directory Writers
- Groups Administrator
- User Administrator

For a summary of the least privileged admin roles for different group-related tasks, see [Least privileged roles to manage groups](/entra/identity/role-based-access-control/delegate-by-task#groups).

You can also create custom roles for group-related tasks. Refer to the [Microsoft Entra built-in roles reference](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) to identify permissions that start with `microsoft.directory/groups/` which infer the permission-specific tasks, and [create a custom role](../api/rbacapplication-post-roledefinitions.md) with the selected permissions.

## Next step

> [!div class="nextstepaction"]
> [Start working with groups](../resources/group.md)


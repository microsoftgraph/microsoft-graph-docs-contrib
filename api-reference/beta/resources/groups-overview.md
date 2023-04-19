---
title: "Working with groups in Microsoft Graph"
description: "Groups are collections of principals with shared access to resources in Microsoft services or in your app. Different principals such as users, other groups, devices, and applications can be part of groups. Using groups helps you avoid working with individual principals and simplifies management of access to your resources."
author: "psaffaie"
ms.localizationpriority: high
ms.prod: "groups"
doc_type: conceptualPageType
ms.date: 12/15/2022
---

# Working with groups in Microsoft Graph

Groups are collections of principals with shared access to resources in Microsoft services or in your app. Different principals such as users, other groups, devices, and applications can be part of groups. Using groups helps you avoid working with individual principals and simplifies management of access to your resources.

Microsoft Graph exposes the groups API to create and manage different types of groups and group functionality. 

> [!NOTE]
> 1. Groups can only be created through work or school accounts. Personal Microsoft accounts don't support groups.
> 2. All group-related operations in Microsoft Graph require administrator consent.

## Group types in Azure AD and Microsoft Graph

Azure Active Directory (Azure AD) supports the following types of groups.

- Microsoft 365 groups
- Security groups
- Mail-enabled security groups
- Distribution groups

> [!NOTE]
> Microsoft also supports [dynamic distribution groups](/exchange/recipients/dynamic-distribution-groups/dynamic-distribution-groups?view=exchserver-2019&preserve-view=true) which cannot be managed or retrieved through Microsoft Graph.

Only Microsoft 365 and security groups can be managed through the Microsoft Graph groups API. Mail-enabled and distribution groups are read-only through Microsoft Graph.

In Microsoft Graph, the type of group can be identified by the settings of its **groupType**, **mailEnabled**, and **securityEnabled** properties as indicated in the table below.

| Type |groupType | mailEnabled | securityEnabled | Created and managed via the groups API |
|--|--|--|--|--|
| [Microsoft 365 groups](#microsoft-365-groups) | `["Unified"]` | `true` | `true` or `false` | Yes |
| [Security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `false` | `true` | Yes |
| [Mail-enabled security groups](#security-groups-and-mail-enabled-security-groups) | `[]` | `true` | `true` | No |
| Distribution groups | `[]` | `true` | `false` | No |

For more information about groups, see the sections below. For more information about groups in Azure AD, see [compare groups in Azure AD](/microsoft-365/admin/create-groups/compare-groups).

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
        "smtp:outlookgroup101@microsoft.onmicrosoft.com",
        "SMTP:outlookgroup101@service.microsoft.com"
    ],
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```

To learn more about Microsoft 365 groups and the administrator experiences, see [Learn about Microsoft 365 groups](https://support.office.com/article/Learn-about-Office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2).

## Security groups and mail-enabled security groups

**Security groups** are for controlling user access to resources. By checking whether a user is a member of a security group, your app can make authorization decisions when that user is trying to access some secure resources in your app. Security groups can have users, other security groups, devices, and service principals as members.

**Mail-enabled security groups** are used in the same way as security groups, but can be used to send emails to group members. Mail-enabled security groups can't be created or updated through the API; instead, they're read-only. Learn more in the [Manage mail-enabled security groups Exchange article](/Exchange/recipients/mail-enabled-security-groups). 

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

Not all object types can be members of both Microsoft 365 and security groups.

[!INCLUDE [groups-allowed-member-types](../../../concepts/includes/groups-allowed-member-types.md)]

### Dynamic membership

Microsoft 365 and security groups can have dynamic membership rules that automatically add or remove members from the group based on the principal's properties. For example, a "Marketing employees" group can define a dynamic membership rule that only users with their department property set to "Marketing" can be members of the group. In this case, any user's who leave the department are automatically removed from the group.

Only users and devices are supported as members in dynamic membership groups. You can create a dynamic membership group for devices or users, but not both.

The dynamic membership rules are specified through the **membershipRule** property during group creation. A single expression follows this syntax: `Property Operator Value`.

- The `Property` is defined following this syntax: `object.property`. For example `user.department` or `device.accountEnabled`.
- The rule syntax supports various operators. For more information, see [Supported expression operators](/azure/active-directory/enterprise-users/groups-dynamic-membership).
- A `Value` of type String must be enclosed in double quotes ("). You must use a backslash to escape any double quotes inside double quotes. This requirement doesn't apply when using the rule builder in the Azure portal because the expression isn't enclosed in double quotes.

The following example shows shows a complete rule.

`"membershipRule": "user.department -eq \"Marketing\""`.

You can combine multiple expressions in a rule using the `and`, `or`, and `not` operators.

The **groupType** property must also include the `"DynamicMembership"` value in the collection. The dynamic membership rule can be turned on or off through the **membershipRuleProcessingState** property. You can update a group with assigned membership to have dynamic membership.

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

To learn more about formulating membership rules, see [Dynamic membership rules for groups in Azure Active Directory](/azure/active-directory/enterprise-users/groups-dynamic-membership).

> [!NOTE]
> Dynamic membership rules requires the tenant to have at least an Azure AD Premium P1 license for each unique user that is a member of one or more dynamic groups.

## Other types of groups

Microsoft 365 groups in Yammer are used to facilitate user collaboration through Yammer posts. This type of group can be returned through a read request, but their posts can't be accessed through the API. When Yammer posts and conversation feeds are enabled on a group, default Microsoft 365 group conversations are disabled. To learn more, see [Yammer developer API docs](/rest/api/yammer/).

## Group search limitations for guest users in organizations

Group search capabilities allow the app to search for any groups in an organization's directory by performing queries against the `/groups` resource (for example, `https://graph.microsoft.com/beta/groups`). Both administrators and users who are members have this capability; however, guest users don't.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific group (for example, `https://graph.microsoft.com/beta/group/fc06287e-d082-4aab-9d5e-d6fd0ed7c8bc`); however, it can't perform queries against the `/groups` resource that potentially returns more than a single resource.

With the appropriate permissions, the app can read the profiles of groups that it obtains by following links in navigation properties; for example, `/groups/{id}/members`.

For more information about what guest users can do with groups, see [Compare member and guest default permissions](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#compare-member-and-guest-default-permissions).

## Group-based licensing

Group-based licensing capability can be used to assign one or more product licenses to an Azure AD group. Azure AD ensures that the licenses are assigned to all members of the group. Any new members who join the group are assigned the appropriate licenses. When they leave the group, those licenses are removed. The feature can only be used with security groups, and Microsoft 365 groups that have the **securityEnabled** property set to `true`. To learn more about group-based licensing, see [What is group-based licensing in Azure Active Directory?](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal?context=/azure/active-directory/enterprise-users/context/ugr-context).

## Common use cases for the groups API in Microsoft Graph

Using Microsoft Graph, you can perform the following common operations on groups.

| **Use cases** | **REST resources** | **See also** |
|:-|:-|:-|
| **Create groups, manage group characteristics** |  |  |
| Create new groups, get existing groups, update the properties on groups, and delete groups. Currently, only security groups and groups in Outlook can be created through the API. | [group](group.md) | [Create new groups](../api/group-post-groups.md) <br/> [List groups](../api/group-list.md) <br/> [Update groups](../api/group-update.md) <br/> [Delete groups](../api/group-delete.md) |
| **Manage group membership** |  |  |
| List the members of a group, and add or remove members. | [user](user.md) <br/> [group](group.md) | [List members](../api/group-list-members.md) <br/> [Add member](../api/group-post-members.md) <br/> [Remove member](../api/group-delete-members.md) |
| Determine whether a user is a member of a group, get all the groups the user is a member of. | [user](user.md) <br/> [group](group.md) <br/> [servicePrincipal](serviceprincipal.md) <br/> [orgContact](orgcontact.md) | [Check member groups](../api/directoryobject-checkmembergroups.md) <br/> [Get member groups](../api/directoryobject-getmembergroups.md) |
| List the owners of a group, and add or remove owners. | [user](user.md) <br/> [group](group.md) | [List owners](../api/group-list-members.md) <br/> [Add member](../api/group-post-members.md) <br/> [Remove member](../api/group-delete-members.md) |

## What's new

Find out about the [latest features and updates](/graph/whats-new-overview) for the groups API.

---
title: "Working with users in Microsoft Graph"
description: "Build compelling app experiences based on users, their relationships with other users and groups, and their mail, calendar, and files."
ms.localizationpriority: high
author: "yyuank"
ms.prod: "users"
doc_type: conceptualPageType
ms.date: 11/16/2022
---

# Working with users in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use Microsoft Graph to build compelling app experiences based on users, their relationships with other users and groups, and the resources they access for example their mails, calendars, files, administrative roles, group memberships.

You can access users through Microsoft Graph in two ways:

- By their ID, `/users/{id}`
- By using the `/me` alias for the signed-in user, which is the same as `/users/{signed-in user's id}`

There are two types of users in Azure AD - members and guest users. Guest users join the organization through redeeming their invitation. Guest users can be converted to members to enjoy all the privileges of members.

## Authorization and privileges

One of the following [permissions](/graph/permissions-reference) is required to access user operations. The first three permissions can be granted to an app by a user. The rest can only be granted to an app by the administrator.

- User.ReadBasic.All
- User.Read
- User.ReadWrite
- User.Read.All
- User.ReadWrite.All
- User.ManageIdentities.All
- Directory.Read.All
- Directory.ReadWrite.All
- Directory.AccessAsUser.All

In addition to the required permissions, the user operations that the calling user can perform are bounded to the privileges granted to the calling user via specific [Azure AD roles](/azure/active-directory/roles/permissions-reference). For more information, see the *Who can reset passwords?* and *Who can update sensitive attributes?* sections.

### Default user permissions

The set of default permissions depends on whether the user is a native member of the tenant (member user) or whether the user is brought over from another directory as a business-to-business (B2B) collaboration guest (guest user). Azure AD defines a set of default permissions for member users and guest users. For more information about what member users and guest users can do, see [What are the default user permissions in Azure Active Directory?](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context)

### Sensitive actions for users

The following table lists the sensitive actions on user objects. All users can read the sensitive properties. However, only some administrators can perform the following sensitive actions for some users.

| Sensitive action | Sensitive property name |
| --- | --- |
| Disable or enable users | accountEnabled |
| Update business phone | businessPhones |
| Update mobile phone | mobilePhone |
| Update on-premises immutable ID | onPremisesImmutableId |
| Update other emails | otherMails |
| Update password profile | passwordProfile |
| Update user principal name | userPrincipalName |
| Delete or restore users | Not applicable |

### Who can reset passwords

In the following table, the columns list the roles that can reset passwords and invalidate refresh tokens. The rows list the roles for which their password can be reset.

The following table is for roles assigned at the scope of a tenant. For roles assigned at the scope of an administrative unit, [further restrictions apply](/azure/active-directory/roles/admin-units-assign-roles#roles-that-can-be-assigned-with-administrative-unit-scope).

Role that password can be reset | Password Admin | Helpdesk Admin | Auth Admin | User Admin | Privileged Auth Admin | Global Admin
------ | ------ | ------ | ------ | ------ | ------ | ------
Auth Admin | &nbsp; | &nbsp; | :heavy_check_mark: | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Directory Readers | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Global Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:\*
Groups Admin | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Guest Inviter | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Helpdesk Admin | &nbsp; | :heavy_check_mark: | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Message Center Reader | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Password Admin | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Privileged Auth Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Privileged Role Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Reports Reader | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
User<br/>(no admin role) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
User<br/>(no admin role, but member or owner of a role-assignable group) | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
User Admin | &nbsp; | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Usage Summary Reports Reader | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
All custom roles | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:

\* A Global Administrator cannot remove their own Global Administrator assignment. This is to prevent a situation where an organization has 0 Global Administrators.

> [!NOTE]
> The ability to reset a password includes the ability to update the following sensitive properties required for [self-service password reset](/azure/active-directory/authentication/concept-sspr-howitworks):
> - businessPhones
> - mobilePhone
> - otherMails

### Who can perform sensitive actions

Some administrators can perform the following sensitive actions for some users. All users can read the sensitive properties.

| Sensitive action | Sensitive property name |
| --- | --- |
| Disable or enable users | `accountEnabled` |
| Update business phone | `businessPhones` |
| Update mobile phone | `mobilePhone` |
| Update on-premises immutable ID | `onPremisesImmutableId` |
| Update other emails | `otherMails` |
| Update password profile | `passwordProfile` |
| Update user principal name | `userPrincipalName` |
| Delete or restore users | Not applicable |

In the following table, the columns list the roles that can perform sensitive actions. The rows list the roles for which the sensitive action can be performed upon.

The following table is for roles assigned at the scope of a tenant. For roles assigned at the scope of an administrative unit, [further restrictions apply](/azure/active-directory/roles/admin-units-assign-roles#roles-that-can-be-assigned-with-administrative-unit-scope).

Role that sensitive action can be performed upon | Auth Admin | User Admin | Privileged Auth Admin | Global Admin
------ | ------ | ------ | ------ | ------
Auth Admin | :heavy_check_mark: | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Directory Readers | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Global Admin | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Groups Admin | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Guest Inviter | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Helpdesk Admin | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Message Center Reader | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Password Admin | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Privileged Auth Admin | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Privileged Role Admin | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
Reports Reader | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
User<br/>(no admin role) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
User<br/>(no admin role, but member or owner of a role-assignable group) | &nbsp; | &nbsp; | :heavy_check_mark: | :heavy_check_mark:
User Admin | &nbsp; | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
Usage Summary Reports Reader | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:
All custom roles | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:


## User and group search limitations for guest users in organizations

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users who are members have this capability; however, guest users don't.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it can't perform queries against the `/users` or `/groups` resource set that potentially returns more than a single resource.

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.

For more information about search limitations for guest users, see [Compare member and guest default permissions](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#compare-member-and-guest-default-permissions).

## Common properties

| Property | Description |
|----------|-------------|
| displayName | The name displayed in the address book for the user.|
|givenName| The first name of the user. |
|surname| The last name of the user. |
|mail| The user's email address. |
|photo| The user's profile photo. |

For details and a list of all the properties, see the [user](user.md) object.

## Common operations

>**Note:** Some of these operations require additional permissions.

| Path    | Description |
|---------|-------------|
|[`/users`](../api/user-list.md) | Lists users in the organization. |
|[`/users/{id}`](../api/user-get.md) | Gets a specific user by id. |
|[`/users/{id}/photo/$value`](../api/profilephoto-get.md)| Gets the user's profile photo. |
|[`/users/{id}/manager`](../api/user-list-manager.md) | Gets the user's manager. |
|[`/users/{id}/messages`](../api/user-list-messages.md)| Lists the user's email messages in their primary inbox. |
|[`/users/{id}/events`](../api/user-list-events.md) | Lists the user's upcoming events in their calendar. |
|[`/users/{id}/drive`](../api/drive-get.md)| Gets the user's OneDrive file store. |
|[`/users/{id}/memberOf`](../api/user-list-memberof.md)| Lists the groups that the user is a member of. |
|[`/users/{id}/joinedTeams`](../api/user-list-joinedteams.md)| Lists the Microsoft Teams that the user is a member of. |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

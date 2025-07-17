---
title: Working with users in Microsoft Graph
description: Access and manage user data using Microsoft Graph to build personalized app experiences.
ms.localizationpriority: high
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yyuank, iamut
ms.subservice: entra-users
doc_type: conceptualPageType
ms.topic: overview
ms.date: 03/17/2025
ms.custom: sfi-ga-nochange
#customer intent: As a developer, I want to access and manage user data using Microsoft Graph so that I can build personalized app experiences.
---

# Working with users in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Graph lets you build compelling app experiences based on users and their relationships with other objects, such as other users and groups, group memberships, and the resources they access like their emails, calendars, files, and administrative roles.

This article explains how to access and manage user data using Microsoft Graph, including common API operations, authorization, privileges, and handling sensitive actions.

## Accessing users

Access users through Microsoft Graph in two ways:

- By their ID or userPrincipalName, `/users/{id}` or `/users/{userPrincipalName}`
- By using the `/me` alias for the signed-in user, which is the same as `/users/{signed-in user's id}`

## Common API operations

In Microsoft Graph, users are represented by the [user](../resources/user.md) resource type. The following table lists common operations that you can perform on users.

| Path | Description |
|--|--|
| [`/me`](../api/user-get.md) | Get the signed-in user's details. |
| [`/users`](../api/user-list.md) | Lists users in the organization. |
| [`/users/{id}`](../api/user-get.md) | Gets a specific user by ID. |
| [`/users/{id}/photo/$value`](../api/profilephoto-get.md) | Gets the user's profile photo. |
| [`/users/{id}/manager`](../api/user-list-manager.md) | Gets the user's manager. |
| [`/users/{id}/messages`](../api/user-list-messages.md) | Lists the user's email messages in their primary inbox. |
| [`/users/{id}/events`](../api/user-list-events.md) | Lists the user's upcoming events in their calendar. |
| [`/users/{id}/drive`](../api/drive-get.md) | Gets the user's OneDrive file store. |
| [`/users/{id}/memberOf`](../api/user-list-memberof.md) | Lists the groups that the user is a member of. |
| [`/users/{id}/joinedTeams`](../api/user-list-joinedteams.md) | Lists the Microsoft Teams that the user is a member of. |
| [`POST /invitations`](../api/invitation-post.md) | Invite a guest as part of business-to-business (B2B) collaboration in Microsoft Entra External ID |

## Authorization and privileges

Microsoft Graph supports delegated and application permissions to manage user operations. Understanding these permissions is crucial for secure and efficient application development. For more information, see [Delegated vs. Application permissions](/graph/permissions-overview#permission-types) and the corresponding API reference documentation for the permissions required for each operation.

Some user operations can be performed by the signed-in user against their own details. For such operations, the user can grant the app Microsoft Graph permissions to access their own details. The [User.ReadBasic.All](/graph/permissions-reference#userreadbasicall), [User.Read](/graph/permissions-reference#userread), and [User.ReadWrite](/graph/permissions-reference#userreadwrite) permissions are such permissions.

Other operations, including managing details for other users, require administrative privileges that are granted through other Microsoft Graph permissions that only authorized administrators can consent to and [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). In addition, some operations are considered sensitive and only limited administrators can perform them. For more information, see [Who can reset passwords](#who-can-reset-passwords) and [Who can update sensitive attributes](#who-can-perform-sensitive-actions) sections.

### Default user permissions in Microsoft Entra ID

There are two types of users in Microsoft Entra ID: members and guests. Members are created natively in the tenant. Guests join the tenant by redeeming their invitation and access the tenant as business-to-business (B2B) collaboration guests.

Users in Microsoft Entra ID have default permissions that allow them to perform certain operations. This set of default permissions depends on whether the user is a member or a guest user, and the tenant administrator can change the settings for these default permissions. For more information about what member users and guest users can do, see [What are the default user permissions in Microsoft Entra ID?](/entra/fundamentals/users-default-permissions?context=graph/context).

#### Default user permissions in external tenants

There are also default permissions for customers in Microsoft Entra ID in external tenants. The following table shows the API operations that let customers manage their own profile.

The user ID or userPrincipalName is always the signed-in user's.

| User operation  | API operation                                           | Permissions required       |
|-----------------|---------------------------------------------------------|----------------------------|
| Read profile    | `GET /me` or `GET /users/{id or userPrincipalName}`     | User.Read                  |
| Update profile  | `PATCH /me` or `PATCH /users/{id or userPrincipalName}` <br/><br/> The following properties are updatable: city, country, displayName, givenName, jobTitle, postalCode, state, streetAddress, surname, and preferredLanguage | User.ReadWrite             |
| Change password | `POST /me/changePassword`                               | Directory.AccessAsUser.All |
<!--
| Reset password | `POST /users/{id or userPrincipalName}/authentication/methods/{id}/resetPassword`  where the authentication method ID is always `28c10230-6103-485e-b985-444c60001490`. | UserAuthenticationMethod.ReadWrite |
-->

## Users basic profile

[!INCLUDE [user.readbasic.all](../../../includes/permissions-notes/user.readbasic.all.md)]

In addition, the following scenario-specific permissions also allow apps to read the basic user profile which contains mostly identifier-related properties:
- *User-Mail.ReadWrite.All*
- *User-PasswordProfile.ReadWrite.All*
- *User-Phone.ReadWrite.All*
- *User-LifeCycleInfo.Read.All*
- *User-LifeCycleInfo.ReadWrite.All*

## Sensitive actions

The following actions against the user object are considered sensitive and might be locked down to only specific administrators. All users can read the sensitive properties.

| Sensitive action                | Sensitive property name |
|---------------------------------|-------------------------|
| Disable or enable users         | accountEnabled          |
| Update business phone           | businessPhones          |
| Update mobile phone             | mobilePhone             |
| Update on-premises immutable ID | onPremisesImmutableId   |
| Update other emails             | otherMails              |
| Update password profile         | passwordProfile         |
| Update user principal name      | userPrincipalName       |
| Delete or restore users         | Not applicable          |

### Who can perform sensitive actions

Some administrators can perform the preceding sensitive actions for some users. 

In the following table, the columns list the roles that can perform sensitive actions. The rows list the roles for which the sensitive action can be performed upon.

The following table is for roles assigned at the scope of a tenant. For roles assigned at the scope of an administrative unit, [further restrictions apply](/entra/identity/role-based-access-control/admin-units-assign-roles#roles-that-can-be-assigned-with-administrative-unit-scope).

| Role that sensitive action can be performed upon | Auth Admin | User Admin | Privileged Auth Admin | Global Admin |
| ------ | ------ | ------ | ------ | ------ |
| Auth Admin | :white_check_mark: | &nbsp; | :white_check_mark: | :white_check_mark: |
| Directory Readers | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Global Admin | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| Groups Admin | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Guest Inviter | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Helpdesk Admin | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Message Center Reader | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Password Admin | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Privileged Auth Admin | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| Privileged Role Admin | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| Reports Reader | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| User<br/>(no admin role) | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| User<br/>(no admin role, but member or owner of a role-assignable group) | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| User with a role scoped to a restricted management administrative unit | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| User Admin | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Usage Summary Reports Reader | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| All custom roles |  |  | :white_check_mark: | :white_check_mark: |

### Who can reset passwords

In the following table, the columns list the roles that can reset passwords and invalidate refresh tokens. The rows list the roles for which their password can be reset. For example, a Password Administrator can reset the password for Directory Readers, Guest Inviter, Password Administrator, and users with no administrator role. If a user is assigned any other role, the Password Administrator cannot reset their password.

The following table is for roles assigned at the scope of a tenant. For roles assigned at the scope of an administrative unit, [further restrictions apply](/entra/identity/role-based-access-control/admin-units-assign-roles#roles-that-can-be-assigned-with-administrative-unit-scope).

| Role that password can be reset | Password Admin | Helpdesk Admin | Auth Admin | User Admin | Privileged Auth Admin | Global Admin |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| Auth Admin | &nbsp; | &nbsp; | :white_check_mark: | &nbsp; | :white_check_mark: | :white_check_mark: |
| Directory Readers | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Global Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark:\* |
| Groups Admin | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Guest Inviter | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Helpdesk Admin | &nbsp; | :white_check_mark: | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Message Center Reader | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Password Admin | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Privileged Auth Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| Privileged Role Admin | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| Reports Reader | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| User<br/>(no admin role) | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| User<br/>(no admin role, but member or owner of a role-assignable group) | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| User with a role scoped to a restricted management administrative unit | &nbsp; | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: |
| User Admin | &nbsp; | &nbsp; | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| Usage Summary Reports Reader | &nbsp; | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| All custom roles |  |  |  |  | :white_check_mark: | :white_check_mark: |

The ability to reset a password includes updating the following sensitive properties required for [self-service password reset](/entra/identity/authentication/concept-sspr-howitworks):
> - businessPhones
> - mobilePhone
> - otherMails

## User and group search limitations for guests

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users who are members have this capability; however, guest users don't.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it can't perform queries against the `/users` or `/groups` resource set that potentially returns more than a single resource.

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.

## Properties not returned by default

Some properties of the user object aren't returned by default and must be specified in a `$select` query parameter. For example, **birthday** and **skills**. Refer to the [properties table of the user entity](user.md#properties) to identify properties that are returned only when you `$select`.

## Properties stored outside the main data store

While the user resource data is mostly stored in Microsoft Entra ID, some of its properties, like **skills**, are stored in SharePoint Online. In most instances, you can't specify these properties in the same Create or Update request body as other user properties.

Properties stored outside the main data store also aren't supported as part of [change tracking](/graph/delta-query-overview). Therefore, a change to any of these properties doesn't result in an object showing up in the delta query response.

The following properties on the user object are stored outside the main data store: **signInActivity**, **cloudLicensing**, **mailboxSettings**, **deviceEnrollmentLimit**, **print**, **aboutMe**, **birthday**, **hireDate**, **interests**, **mySite**, **pastProjects**, **preferredName**, **responsibilities**, **schools**, **skills**.

## Conclusion

Microsoft Graph provides powerful capabilities to manage and interact with user data. By understanding the different permissions, common API operations, and handling sensitive actions, you can build secure and efficient applications. For more information, see the related content and documentation links.

## Related content

- [What are the default user permissions in Microsoft Entra ID?](/entra/fundamentals/users-default-permissions?context=graph/context)



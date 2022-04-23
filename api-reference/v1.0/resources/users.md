---
title: "Working with users in Microsoft Graph"
description: "Build compelling app experiences based on users, their relationships with other users and groups, and their mail, calendar, and files."
ms.localizationpriority: high
author: "jpettere"
ms.prod: "users"
doc_type: conceptualPageType
---

# Working with users in Microsoft Graph

You can use Microsoft Graph to build compelling app experiences based on users, their relationships with other users and groups, and the resources they access for example their mails, calendars, files, administrative roles, group memberships.

You can access users through Microsoft Graph in two ways:

- By their ID, `/users/{id}`
- By using the `/me` alias for the signed-in user, which is the same as `/users/{signed-in user's id}`

There are two types of users in Azure AD - members and guest users. Guest users join the organization through redeeming their invitation. Guest users can be converted to members to enjoy all the privileges of members.

## Authorization

One of the following [permissions](/graph/permissions-reference) is required to access user operations. The first three permissions can be granted to an app by a user. The rest can only be granted to an app by the administrator.

- User.ReadBasic.All
- User.Read
- User.ReadWrite
- User.Read.All
- User.ReadWrite.All
- Directory.Read.All
- Directory.ReadWrite.All
- Directory.AccessAsUser.All

## Common properties

The following represent the default set of properties that are returned when getting a user or listing users. These are a subset of all available properties. To get more user properties, use the `$select` query parameter. Learn [how to use the $select query parameter](/graph/query-parameters#select-parameter) and see [properties that support the $select query parameter](../resources/user.md#properties).

|Property |Description |
|:----------|:-------------|
|id | The unique identifier for the user.|
|businessPhones | The user's phone numbers.|
|displayName | The name displayed in the address book for the user.|
|givenName| The first name of the user. |
|jobTitle | The user's job title.|
|mail| The user's email address. |
|mobilePhone | The user's cellphone number.|
|officeLocation | The user's physical office location.|
|preferredLanguage | The user's language of preference.|
|surname| The last name of the user. |
|userPrincipalName| The user's principal name. |

For details and a list of all the properties, see the [user](user.md) object.

## User and group search limitations for guest users in organizations

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users who are members have this capability; however, guest users don't.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it can't perform queries against the `/users` or `/groups` resource set that potentially returns more than a single resource.

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.

For more information about search limitations for guest users, see [Compare member and guest default permissions](/azure/active-directory/fundamentals/users-default-permissions#compare-member-and-guest-default-permissions).

## Common operations

> **Note:** Some of these operations require additional permissions.

| Path    | Description |
|:---------|:-------------|
|[`/users`](../api/user-list.md) | Lists users in the organization. |
|[`/users/{id}`](../api/user-get.md) | Gets a specific user by id. |
|[`/users/{id}/photo/$value`](../api/profilephoto-get.md)| Gets the user's profile photo. |
|[`/users/{id}/manager`](../api/user-list-manager.md) | Gets the user's manager. |
|[`/users/{id}/messages`](../api/user-list-messages.md)| Lists the user's email messages in their primary inbox. |
|[`/users/{id}/events`](../api/user-list-events.md) | Lists the user's upcoming events in their calendar. |
|[`/users/{id}/drive`](../api/drive-get.md)| Gets the user's OneDrive file store. |
|[`/users/{id}/memberOf`](../api/user-list-memberof.md)| Lists the groups that the user is a member of. |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

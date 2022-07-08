---
title: "Microsoft Graph permissions reference "
description: "Microsoft Graph exposes granular permissions that control the access that apps have to resources, like users, groups, and mail. As a developer, you decide which permissions for Microsoft Graph your app requests."
author: "jackson-woods"
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
---

# Microsoft Graph permissions reference

For your app to access data in Microsoft Graph, the user or administrator must grant it the correct permissions via a consent process. This topic lists the permissions associated with each major set of Microsoft Graph APIs. It also provides guidance about how to use the permissions.

[!INCLUDE [auth-use-least-privileged](../includes/auth-use-least-privileged.md)]

To learn more about how permissions work, see [Authentication and authorization basics](auth/auth-concepts.md#microsoft-graph-permissions), and watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]

## Microsoft Graph permission names

Microsoft Graph permission names follow a simple pattern: _resource.operation.constraint_. For example, _User.Read_ grants permission to read the profile of the signed-in user, _User.ReadWrite_ grants permission to read and modify the profile of the signed-in user, and _Mail.Send_ grants permission to send mail on behalf of the signed-in user.

The _constraint_ element of the name determines the potential extent of access your app will have within the directory. Currently Microsoft Graph supports the following constraints:

* **All** grants permission for the app to perform the operations on all of the resources of the specified type in a directory. For example, _User.Read.All_ potentially grants the app privileges to read the profiles of all of the users in a directory.
* **Shared** grants permission for the app to perform the operations on resources that other users have shared with the signed-in user. This constraint is mainly used with Outlook resources like mail, calendars, and contacts. For example, _Mail.Read.Shared_, grants privileges to read mail in the mailbox of the signed-in user as well as mail in mailboxes that other users in the organization have shared with the signed-in user.
* **AppFolder** grants permission for the app to read and write files in a dedicated folder in OneDrive. This constraint is only exposed on [Files permissions](#files-permissions) and is only valid for Microsoft accounts.
* If **no constraint** is specified the app is limited to performing the operations on the resources owned by the signed-in user. For example, _User.Read_ grants privileges to read the profile of the signed-in user only, and _Mail.Read_ grants permission to read only mail in the mailbox of the signed-in user.

> [!NOTE]
> In delegated scenarios, your app's access is also limited by the privileges of the signed-in user. These privileges are determined by the user's assigned roles and their relationship to the data being accessed.
> For example, if the signed-in user doesn't have the appropriate privileges to view a file, then the client app won't be able to read that file either, even if the app is granted the `File.Read.All` delegated permission.

## Microsoft accounts and work or school accounts

Not all permissions are valid for both Microsoft accounts and work or school accounts. You can check the **Microsoft Account Supported** column for each permission group to determine whether a specific permission is valid for Microsoft accounts, work or school accounts, or both.

## Limits on requested permissions per app

Azure AD limits the number of permissions that can be requested and consented by a client app. These limits depend on the `signInAudience` value for your app, shown in the app's manifest. 

| signInAudience                     | Allowed users                                            | Maximum permissions the app can request   | Maximum Microsoft Graph permissions the app can request   | Maximum permissions that can be consented in a single request         |
| ---------------------------------- | -------------------------------------------------------- | ----------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------------------- |
| AzureADMyOrg                       | Users from the organization where the app is registered  | 400                                       | 400                                                       | About 155 delegated permissions and about 300 application permissions |
| AzureADMultipleOrgs                | Users from any Azure AD organization                     | 400                                       | 400                                                       | About 155 delegated permissions and about 300 application permissions |
| PersonalMicrosoftAccount           | Consumer users (such as Outlook.com or Live.com accounts)  | 30                                        | 30                                                        | 30                                                                    |
| AzureADandPersonalMicrosoftAccount | Consumer users and users from any Azure AD organization  | 30                                        | 30                                                        | 30                                                                    |

## Permissions availability status

Microsoft Graph permissions in the [Azure portal](https://portal.azure.com/) are generally available and in GA status for all apps to use, except for a few sets that are in preview or private preview status. Permissions in preview are available to the public; they may change and may not be promoted to GA status. Permissions in private preview status are not and may never become available to the public. Do not use permissions in preview or private preview status in production apps.

## User and group search limitations for guest users in organizations

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users have this capability; however, guest users do not.

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it cannot perform queries against the `/users` or `/groups` resource set that potentially return more than a single resource.

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.

## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application queries the membership of a container object and does not have permission to read a certain type, members of that type are returned but with limited information.  The application receives a 200 response and a collection of objects.  Complete information is returned for the object types that the application has permissions to read.  For the object types which the application does not have permission to read, only the the object type and ID are returned.

This is applied to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type (not just member links). Examples include `/groups/{id}/members`, `/users/{id}/memberOf` or `me/ownedObjects`.

For example, let's say an application has [User.Read.All](#user-permissions) and [Group.Read.All](#group-permissions) permissions for Microsoft Graph.  A group has been created and that group contains a user, a group, and a device.  The application calls [list group members](/graph/api/group-list-members).  The application has access to the user and group objects in the group, but not the device object.  In the response, all the selected properties of the user and group objects are returned. For the device object, however, only limited information is returned.  The data type and object ID are returned for the device, but all other properties have a value of *null*. Apps without permission will not be able to use the ID to get the actual object.

```http
GET https://graph.microsoft.com/v1.0/groups/{id}/members?$select=id,displayName,description,createdDateTime,deletedDateTime,homepage,loginUrl HTTP/1.1
```

The following is the JSON response:

```json
{
"@odata.context":"https://graph.microsoft.com/v1.0/$metadata#directoryObjects(id,displayName,description,createdDateTime,deletedDateTime,homepage,loginUrl)",
    "value":[
        {
            "@odata.type":"#microsoft.graph.user",
            "id":"69d035a3-29c9-469f-809d-d21a4ae69e65",
            "displayName":"Jane Dane",
            "createdDateTime":"2019-09-18T09:06:51Z",
            "deletedDateTime":null
        },
        {
            "@odata.type":"#microsoft.graph.group",
            "id":"c43a7cc9-2d95-44b6-bf6a-6392e41949b4",
            "displayName":"Group 1",
            "description":null,
            "createdDateTime":"2019-10-24T01:34:35Z",
            "deletedDateTime":null
        },
        {
            "@odata.type":"#microsoft.graph.device",
            "id": "d282309e-f91d-43b6-badb-9e68aa4b4fc8",
            "accountEnabled":null,
            "deviceId":null,
            "displayName":null,
            "operatingSystem":null,
            "operatingSystemVersion":null
        }
    ]
}
```

## Access reviews permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _AccessReview.Read.All_ |   Read all access reviews  | Allows the app to read access reviews on behalf of the signed-in user. | Yes | No |
| _AccessReview.ReadWrite.All_ |   Manage all access reviews  | Allows the app to read and write access reviews on behalf of the signed-in user. | Yes | No |
| _AccessReview.ReadWrite.Membership_ |   Manage access reviews for group and app memberships | Allows the app to read and write access reviews of groups and apps on behalf of the signed-in user. | Yes | No |



#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _AccessReview.Read.All_ |   Read all access reviews | Allows the app to read access reviews without a signed-in user. | Yes |
| _AccessReview.ReadWrite.All_ |   Manage all access reviews | Allows the app to read, update, delete and perform actions on access reviews, reviewers, decisions and settings in the organization, without a signed-in user. | Yes |
| _AccessReview.ReadWrite.Membership_ | Manage access reviews for group and app memberships | Allows the app to manage access reviews of groups and apps without a signed-in user. | Yes |


### Remarks

_AccessReview.Read.All_, _AccessReview.ReadWrite.All_, _AccessReview.ReadWrite.Membership_ are valid only for work or school accounts.

For an app with delegated permissions to read access reviews of a group or app, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or User Administrator. For an app with delegated permissions to write access reviews of a group or app, the signed-in user must be a member of one of the following administrator roles: Global Administrator or User Administrator.

For an app with delegated permissions to read access reviews of an Azure AD role, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or Privileged Role Administrator. For an app with delegated permissions to write access reviews of an Azure AD role, the signed-in user must be a member of one of the following administrator roles: Global Administrator or Privileged Role Administrator.

For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

---

## Administrative units permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _AdministrativeUnit.Read.All_ |   Read administrative units  | Allows the app to read administrative units and administrative unit membership on behalf of the signed-in user. | Yes | No |
| _AdministrativeUnit.ReadWrite.All_ |   Read and write administrative units  | Allows the app to create, read, update, and delete administrative units and manage administrative unit membership on behalf of the signed-in user. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _AdministrativeUnit.Read.All_ |   Read all administrative units | Allows the app to read administrative units and administrative unit membership without a signed-in user. | Yes |
| _AdministrativeUnit.ReadWrite.All_ |   Read and write all administrative units | Allows the app to create, read, update, and delete administrative units and manage administrative unit membership without a signed-in user. | Yes |

### Remarks
With the _AdministrativeUnit.Read.All_ permission an application can read administrative unit information including members.

With the _AdministrativeUnit.ReadWrite.All_ permission an application can create, read, update, and delete administrative unit information including members.

_AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_ are valid only for work or school accounts.

### Example usage

> [!NOTE]
> The `v1.0` endpoint for the administrative units API is `/v1.0/directory/administrativeUnits`.

- _AdministrativeUnit.Read.All_: Read administrative units (`GET /beta/administrativeUnits`)
- _AdministrativeUnit.Read.All_: Read members list of an administrative unit (`GET /beta/administrativeUnits/<id>/members`)
- _AdministrativeUnit.ReadWrite.All_: Create an administrative unit (`POST /beta/administrativeUnits`)
- _AdministrativeUnit.ReadWrite.All_: Update an administrative unit (`PATCH /beta/administrativeUnits/<id>`)
- _AdministrativeUnit.ReadWrite.All_: Add members to an administrative unit  (`POST /beta/administrativeUnits/<id>/members`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Analytics resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Analytics.Read_ |   Read user activity statistics. | Allows the app to read the signed-in user's activity statistics, such as how much time the user has spent on emails, in meetings, or in chat sessions. | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _Analytics.Read_: [List related settings for a user](/graph/api/useranalytics-get-settings?view=graph-rest-beta&preserve-view=true) (`GET /beta/me/analytics/settings`)

#### Application

None.

---

## AppCatalog resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------| :----------|
| _AppCatalog.Read.All_ | Read all app catalogs | Allows the app to read the apps in the app catalogs.| No | No |
| _AppCatalog.ReadWrite.All_ | Read and write to all app catalogs  | Allows the app to create, read, update, and delete apps in the app catalogs. | Yes | No |
|_AppCatalog.Submit_|Submit an app for admin review|Allows the user to submit and app for admin review for publication in an organization's app catalog and allows user to cancel past submissions that have not been published.</br> &#119821;&#119822;&#119827;&#119812;: Non-admin users submit apps for review by including the  `requiresReview=true` query parameter.|Yes|No|

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _AppCatalog.Read.All_ | Read all app catalogs | Allows the app to read apps in the app catalogs without a signed-in user. | Yes |
| _AppCatalog.ReadWrite.All_ | Read and write to all app catalogs | Allows the app to create, read, update, and delete apps in the app catalogs without a signed-in user. | Yes |

### Remarks

Currently the only catalog is the list of applications in [Microsoft Teams](teams-concept-overview.md).

### Example usage

#### Delegated
* _AppCatalog.ReadWrite.All_: [List all applications in catalog](/graph/api/appcatalogs-list-teamsapps) (`GET /beta/appCatalogs/teamsApps`)
* _AppCatalog.ReadWrite.All_: [Publish an app](/graph/api/teamsapp-publish?view=graph-rest-beta&preserve-view=true) (`POST /beta/appCatalogs/teamsApps`)
* _AppCatalog.ReadWrite.All_: [Update a published app](/graph/api/teamsapp-update?view=graph-rest-beta&preserve-view=true) (`PATCH /beta/appCatalogs/teamsApps/{id}`)
* _AppCatalog.ReadWrite.All_: [Remove a published app](/graph/api/teamsapp-delete?view=graph-rest-beta&preserve-view=true) (`DELETE /beta/appCatalogs/teamsApps/{id}`)

#### Application

None.

---

## Application resource permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Application.Read.All_ | Read applications | Allows the app to read applications and service principals on behalf of the signed-in user. | Yes |
| _Application.ReadWrite.All_ | Read and write all apps |  Allows the app to create, read, update and delete applications and service principals on behalf of the signed-in user. | Yes |
| _AppRoleAssignment.ReadWrite.All_ | Manage app permission grants and app role assignments | Allows the app to manage permission grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, on behalf of the signed-in user. | Yes |
| _DelegatedPermissionGrant.ReadWrite.All_ | Manage delegated permission grants | Allows the app to manage delegated permission grants for any API (including Microsoft Graph), on behalf of the signed-in user. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Application.Read.All_ | Read applications | Allows the app to read applications and service principals without a signed-in user. | Yes |
| _Application.ReadWrite.All_ | Read and write all apps | Allows the calling app to create, and manage (read, update, update application secrets and delete) applications and service principals without a signed-in user.  Does not allow management of consent grants or application assignments to users or groups. | Yes |
| _Application.ReadWrite.OwnedBy_ | Manage apps that this app creates or owns | Allows the calling app to create other applications and service principals, and fully manage those applications and service principals (read, update, update application secrets and delete), without a signed-in user.  It cannot update any applications that it is not an owner of. Does not allow management of consent grants or application assignments to users or groups. | Yes |
| _AppRoleAssignment.ReadWrite.All_ | Manage app permission grants and app role assignments | Allows the app to manage permission grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, without a signed-in user. | Yes |
| _DelegatedPermissionGrant.ReadWrite.All_ | Manage all delegated permission grants | Allows the app to grant or revoke any delegated permission for any API (including Microsoft Graph), without a signed-in user. | Yes |

### Remarks

> [!CAUTION]
> Permissions that allow granting authorization, such as _AppRoleAssignment.ReadWrite.All_, allow an application to grant additional privileges to itself, other applications, or any user. Likewise, permissions that allow managing credentials, such as _Application.ReadWrite.All_, allow an application to act as other entities, and use the privileges they were granted. Use caution when granting any of these permissions.

The _Application.ReadWrite.OwnedBy_ permission allows the same operations as _Application.ReadWrite.All_ except that the former allows these operations only on applications and service principals that the calling app is an owner of. Ownership is indicated by the `owners` navigation property on the target [application](/graph/api/application-list-owners?view=graph-rest-beta&preserve-view=true) or [service principal](/graph/api/serviceprincipal-list-owners?view=graph-rest-beta&preserve-view=true) resource.
> NOTE: Using the _Application.ReadWrite.OwnedBy_ permission to call `GET /applications` to list applications will fail with a 403.  Instead use `GET servicePrincipals/{id}/ownedObjects` to list the applications owned by the calling application.

### Example usage

#### Delegated

* _Application.Read.All_: List all applications (`GET /v1.0/applications`)
* _Application.ReadWrite.All_: Update a service principal (`PATCH /v1.0/servicePrincipals/{id}`)

#### Application

* _Application.Read.All_: List all applications (`GET /v1.0/applications`)
* _Application.ReadWrite.All_: Delete a service principal (`DELETE /v1.0/servicePrincipals/{id}`)
* _Application.ReadWrite.OwnedBy_: Create an application (`POST /v1.0/applications`)
* _Application.ReadWrite.OwnedBy_: List all applications owned by the calling application (`GET /v1.0/servicePrincipals/{id}/ownedObjects`)
* _Application.ReadWrite.OwnedBy_: Add another owner to an owned application (`POST /v1.0/applications/{id}/owners/$ref`).
    > NOTE: This may require additional permissions.

---

## Audit log permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _AuditLog.Read.All_ | Read audit log data | Allows the app to read and query your audit log activities, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_AuditLog.Read.All_ |Read all audit log data |Allows the app to read and query your audit log activities, without a signed-in user. |Yes |

---

## BitLocker recovery key permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _BitlockerKey.ReadBasic.All_ | Read basic BitLocker key information | Allows an app to read the BitLocker key's properties for all devices in the tenant. The recovery key is not returned. | Yes | No |
| _BitlockerKey.Read.All_ | Read the BitLocker key | Allows an app to read the BitLocker keys for all devices in the tenant. The recovery key is returned. | Yes | No |

#### Application permissions

None.

### Example usage

#### Delegated

* _BitlockerKey.ReadBasic.All_: List the BitLocker recovery keys for all devices in the tenant without returning the 'key' property (`GET /bitlocker/recoveryKeys`).
* _BitlockerKey.Read.All_: Get a BitLocker recovery key with the recovery key (`GET /bitlocker/recoveryKeys/{bitlockerRecoveryKeyId}?$select=key`)

---

## Bookings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Bookings.Read.All_ |  Allows an app to read Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. | Intended for read-only applications. Typical target user is the customer of a booking business. | No | No |
| _BookingsAppointment.ReadWrite.All_ | Allows an app to read and write Bookings appointments and customers, and additionally allows reading businesses, services, and staff on behalf of the signed-in user. | Intended for scheduling applications which need to manipulate appointments and customers. Cannot change fundamental information about the booking business, nor its services and staff members. Typical target user is the customer of a booking business.| No | No |
| _Bookings.ReadWrite.All_ | Allows an app to read and write Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. Does not allow create, delete, or publish of Bookings businesses. | Intended for management applications that manipulate existing businesses, their services and staff members. Cannot create, delete, or change the publishing status of a booking business. Typical target user is the support staff of an organization.| No | No |
| _Bookings.Manage.All_ | Allows an app to read, write, and manage Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user.  | Allows the app to have full access. <br>Intended for a full management experience. Typical target user is the administrator of an organization.| No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Bookings.Read.All_ |  Allows an app to read Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. | Intended for read-only applications. Typical target user is the customer of a booking business. | Yes | No |
| _BookingsAppointment.ReadWrite.All_ | Allows an app to read and write Bookings appointments and customers, and additionally allows reading businesses, services, and staff on behalf of the signed-in user. | Intended for scheduling applications which need to manipulate appointments and customers. Cannot change fundamental information about the booking business, nor its services and staff members. Typical target user is the customer of a booking business.| Yes | No |
| _Bookings.ReadWrite.All_ | Allows an app to read and write Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. Does not allow create, delete, or publish of Bookings businesses. | Intended for management applications that manipulate existing businesses, their services and staff members. Cannot create, delete, or change the publishing status of a booking business. Typical target user is the support staff of an organization.| Yes | No |
| _Bookings.Manage.All_ | Allows an app to read, write, and manage Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user.  | Allows the app to have full access. <br>Intended for a full management experience. Typical target user is the administrator of an organization.| Yes | No |

### Example usage

#### Delegated

* _Bookings.Read.All_: Get the ID and names of the collection of Bookings businesses that has been created for a tenant (`GET /bookingBusinesses`).
* _BookingsAppointment.ReadWrite.All_: Create an appointment for a service at a Bookings business (`POST /bookingBusinesses/{id}/appointments`).
* _Bookings.ReadWrite.All_: Create a new service for the specified Bookings business (`POST /bookingBusinesses/{id}/services`).
* _Bookings.Manage.All_: Make the scheduling page of this business available to external customers (`POST /bookingBusinesses/{id}/publish`).

## Calendars permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Calendars.Read_ |Read user calendars |Allows the app to read events in user calendars. |No | Yes |
| _Calendars.Read.Shared_ |Read user and shared calendars |Allows the app to read events in all calendars that the user can access, including delegate and shared calendars. |No | No |
| _Calendars.ReadWrite_ |Have full access to user calendars |Allows the app to create, read, update, and delete events in user calendars. |No | Yes |
| _Calendars.ReadWrite.Shared_ |Read and write user and shared calendars |Allows the app to create, read, update and delete events in all calendars the user has permissions to access. This includes delegate and shared calendars.|No | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Calendars.Read_ |Read calendars in all mailboxes |Allows the app to read events of all calendars without a signed-in user. |Yes |
|_Calendars.ReadWrite_ |Read and write calendars in all mailboxes |Allows the app to create, read, update, and delete events of all calendars without a signed-in user. |Yes |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not to all the mailboxes in the organization, even if the app has been granted the application permissions of Calendars.Read or Calendars.ReadWrite.
<br/>

### Example usage

#### Delegated

* _Calendars.Read_: Get events on the user's calendar between April 23, 2017 and April 29, 2017 (`GET /me/calendarView?startDateTime=2017-04-23T00:00:00&endDateTime=2017-04-29T00:00:00`).
* _Calendars.Read.Shared_: Find meeting times where all attendees are available (`POST /users/{id|userPrincipalName}/findMeetingTimes`).
* _Calendars.ReadWrite_: Add an event to the user's calendar (`POST /me/events`).

#### Application

* _Calendars.Read_: Find events in a conference room's calendar organized by bob@contoso.com (`GET /users/{id | userPrincipalName}/events?$filter=organizer/emailAddress/address eq 'bob@contoso.com'`).
* _Calendars.Read_: List all events on a user's calendar for the month of May (`GET /users/{id | userPrincipalName}/calendarView?startDateTime=2017-05-01T00:00:00&endDateTime=2017-06-01T00:00:00`)
* _Calendars.ReadWrite_: Add an event to a user's calendar for approved time off  (`POST /users/{id | userPrincipalName}/events`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Calls permissions

#### Delegated permissions

None.

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Calls.Initiate.All_|Initiate outgoing 1:1 calls from the app|Allows the app to place outbound calls to a single user and transfer calls to users in your organization’s directory, without a signed-in user.|Yes|
|_Calls.InitiateGroupCall.All_|Initiate outgoing group calls from the app|Allows the app to place outbound calls to multiple users and add participants to meetings in your organization, without a signed-in user.|Yes|
|_Calls.JoinGroupCall.All_|Join group calls and meetings as an app|Allows the app to join group calls and scheduled meetings in your organization, without a signed-in user. The app will be joined with the privileges of a directory user to meetings in your tenant.|Yes|
|_Calls.JoinGroupCallasGuest.All_|Join group calls and meetings as a guest|Allows the app to anonymously join group calls and scheduled meetings in your organization, without a signed-in user. The app will be joined as a guest to meetings in your tenant.|Yes|
|_Calls.AccessMedia.All_\*|Access media streams in a call as an app|Allows the app to get direct access to media streams in a call, without a signed-in user.|Yes|

> \***Important:** You may NOT use the Cloud Communications APIs to record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content. Make sure that you are compliant with the laws and regulations in your area regarding data protection and confidentiality of communications. Please see the [Terms of Use](/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

<br/>

### Example usage

#### Application

* _Calls.Initiate.All_: Make a peer-to-peer call from the application to a user in the organization (`POST /beta/communications/calls`).
* _Calls.InitiateGroupCall.All_: Make a group call from the application to a group of users in the organization (`POST /beta/communications/calls`).
* _Calls.JoinGroupCall.All_: Join a group call or online meeting from the application (`POST /beta/communications/calls`).
* _Calls.JoinGroupCallasGuest.All_: Join a group call or online meeting from the application, but the application only has guest privileges in the meeting (`POST /beta/communications/calls`).
* _Calls.AccessMedia.All_: Create or join a call and the app gets direct access to participant media streams in the call (`POST /beta/communications/calls`).

> **Note:** For request examples, see [Create call](/graph/api/application-post-calls?view=graph-rest-beta&preserve-view=true).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Call records permissions

#### Delegated permissions

None.

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_CallRecords.Read.All_|Read all call records|Allows the app to read call records for all calls and online meetings without a signed-in user.|Yes|
|_CallRecord-PstnCalls.Read.All_|Read PSTN and direct routing call log data|Allows the app to read all PSTN and direct routing call log data without a signed-in user.|Yes|

### Remarks

The _CallRecords.Read.All_ permission grants an application privileged access to [callRecords](/graph/api/resources/callrecords-callrecord) for every call and online meeting within your organization, including calls to and from external phone numbers. This includes potentially sensitive details about who participated in the call, as well as technical information pertaining to these calls and meetings that can be used for network troubleshooting, such as IP addresses, device details, and other network information.

The _CallRecord-PstnCalls.Read.All_ permission grants an application access to [PSTN (calling plans)](/graph/api/callrecords-callrecord-getpstncalls) and [direct routing](/graph/api/callrecords-callrecord-getdirectroutingcalls) call logs. This includes potentially sensitive information about users as well as calls to and from external phone numbers.

> **Important:** Discretion should be used when granting these permissions to applications. Call records can provide insights into the operation of your business, and so can be a target for malicious actors. Only grant these permissions to applications you trust to meet your data protection requirements.

> **Important:** Make sure that you are compliant with the laws and regulations in your area regarding data protection and confidentiality of communications. Please see the [Terms of Use](/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

<br/>

### Example usage

#### Application

* _CallRecords.Read.All_: Retrieve a call record (`GET /v1.0/communications/callRecords/{id}`).
* _CallRecords.Read.All_: Subscribe to new call records (`POST /v1.0/subscriptions`).
* _CallRecords.Read.All_: Retrieve direct routing call records within the specified time range (`GET /v1.0/communications/callRecords/microsoft.graph.callRecords.getDirectRoutingCalls(fromDateTime={start date and time),toDateTime={end date and time))`)
* _CallRecord-PstnCalls.Read.All_: Retrieve PSTN call records within the specified time range (`GET /v1.0/communications/callRecords/microsoft.graph.callRecords.getPstnCalls(fromDateTime={start date and time),toDateTime={end date and time))`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Channel permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions of channels. | Read channel names and channel descriptions, on behalf of the signed-in user.	| No | No |
| _Channel.Create_ | Create channels. | Create channels in any team, on behalf of the signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, on behalf of the signed-in user.	| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Channel.ReadBasic.All_ | Read the names and descriptions  of all channels. | Read all channel names and channel descriptions, without a signed-in user.	| Yes | No |
| _Channel.Create_ | Create channels. | Create channels in any team, without a signed-in user.	| Yes | No |
| _Channel.Delete.All_ | Delete channels. | Delete channels in any team, without a signed-in user.	| Yes | No |
|_Teamwork.Migrate.All_|Manage migration to Microsoft Teams|Creating and managing resources for migration to Microsoft Teams|Yes|Yes|

## Channel member permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMember.Read.All_  |Read the members of channels. |Read the members of channels, on behalf of the signed-in user. |Yes | No |
|_ChannelMember.ReadWrite.All_ | Add and remove members from channels.| Add and remove members from channels, on behalf of the signed-in user. Also allows changing a member's role, for example from owner to non-owner.| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMember.Read.All_ |Read the members of all channels. |Read the members of all channels, without a signed-in user. |Yes | No |
|_ChannelMember.ReadWrite.All_ |Add and remove members from all channels.|Add and remove members from all channels, without a signed-in user. Also allows changing a member's role, for example from owner to non-owner.| Yes | No |

## Channel message permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMessage.Edit_ (private preview)|Edit user's channel messages |Allows an app to edit channel messages in Microsoft Teams, on behalf of the signed-in user. |Yes | No |
|_ChannelMessage.Read.All_ |Read user channel messages  |Allows an app to read a channel's messages in Microsoft Teams, on behalf of the signed-in user. |Yes | No |
|_ChannelMessage.Send_ |Send channel messages |Allows an app to send channel messages in Microsoft Teams, on behalf of the signed-in user. |No| No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ChannelMessage.Read.All_ |Read all channel messages  |Allows the app to read all channel messages in Microsoft Teams, without a signed-in user. |Yes | No |
|_ChannelMessage.UpdatePolicyViolation.All_ |Flag channel messages for violating policy |Allows the app to update Microsoft Teams channel messages by patching a set of Data Loss Prevention (DLP) policy violation properties to handle the output of DLP processing. | Yes | No |

> **Note:** See also [Group.Read.All](#group-permissions).

## Channel settings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChannelSettings.Read.All_ | Read the names, descriptions, and settings of channels. | Read all channel names, channel descriptions, and channel settings, on behalf of the signed-in user.| Yes | No |
| _ChannelSettings.ReadWrite.All_ | Read and write the names, descriptions, and settings of channels. | Read and write the names, descriptions, and settings of all channels, on behalf of the signed-in user.| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChannelSettings.Read.All_ | Read the names, descriptions, and settings of all channels. | Read all channel names, channel descriptions, and channel settings, without a signed-in user.| Yes | No |
| _ChannelSettings.ReadWrite.All_ | Read and write the names, descriptions, and settings of all channels. | Read and write the names, descriptions, and settings of all channels, without a signed-in user.| Yes | No |

## Chat permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Chat.Read_ |Read your chat messages  |Allows an app to read your 1:1 or group chat messages in Microsoft Teams, on your behalf. |No | No |
|_Chat.ReadBasic_ |Read names and members of user chat threads  |Allows an app to read the members and descriptions of 1:1 and group chats threads, on behalf of the signed-in user. |No | No |
|_Chat.ReadWrite_ |Read your chat messages and send new ones  |Allows an app to read and send your 1:1 or group chat messages in Microsoft Teams, on your behalf. |No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Chat.Read.All_ |Read all chat messages  |Allows the app to read all 1:1 or group chat messages in Microsoft Teams, without a signed-in user. |Yes | No |
|_Chat.ReadBasic.All_ |Read names and members of user chat threads  |Read names and members of all chat threads. |Yes | No |
|_Chat.UpdatePolicyViolation.All_ |Flag chat messages for violating policy |Allows the app to update Microsoft Teams 1:1 or group chat messages by patching a set of Data Loss Prevention (DLP) policy violation properties to handle the output of DLP processing. | Yes | No |

> **Note:** For messages in a channel, see [ChannelMessage permissions](#channel-message-permissions).

## Chat resource-specific consent permissions

#### Application permissions

| Permission                     | Display String                                                | Description  | Admin Consent Required | Microsoft Account supported |
|:-------------------------------|:--------------------------------------------------------------|:-------------|:-----------------------|:----------------------------|
| _ChatSettings.Read.Chat_         | Read this chat's settings.                                    | Allows the app to read this chat's settings, without a signed-in user. |No | No |
| _ChatSettings.ReadWrite.Chat_    | Read and write this chat's settings.                          | Allows the app to read and write this chat's settings, without a signed-in user. |No | No |
| _ChatMessage.Read.Chat_          | Read this chat's messages.                                    | Allows the app to read this chat's messages, without a signed-in user. |No | No |
| _ChatMember.Read.Chat_           | Read this chat's members.                                     | Allows the app to read this chat's members, without a signed-in user. |No | No |
| _Chat.Manage.Chat_               | Manage this chat.                                             | Allows the app to manage the chat, the chat's members, and grant access to the chat's data, without a signed-in user.  |No | No |
| _TeamsTab.Read.Chat_             | Read this chat's tabs.                                        | Allows the app to read this chat's tabs, without a signed-in user. |No | No |
| _TeamsTab.Create.Chat_           | Create tabs in this chat.                                     | Allows the app to create tabs in this chat, without a signed-in user. |No | No |
| _TeamsTab.Delete.Chat_           | Delete this chat's tabs.                                      | Allows the app to delete this chat's tabs, without a signed-in user. |No | No |
| _TeamsTab.ReadWrite.Chat_        | Manage this chat's tabs.                                      | Allows the app to manage this chat's tabs, without a signed-in user. |No | No |
| _TeamsAppInstallation.Read.Chat_ | Read which apps are installed in this chat.                   | Allows the app to read the Teams apps that are installed in this chat along with the permissions granted to each app, without a signed-in user.  |No | No |
| _OnlineMeeting.ReadBasic.Chat_   | Read basic properties of a meeting associated with this chat. | Allows the app to read basic properties—such as name, schedule, organizer, and join link—of a meeting associated with this chat, without a signed-in user. |No | No |
| _Calls.AccessMedia.Chat_         | Access media streams in calls associated with this chat or meeting.                                    | Allows the app to access media streams in calls associated with this chat or meeting, without a signed-in user. |No | No |
| _Calls.JoinGroupCalls.Chat_         | Join calls associated with this chat or meeting.                                    | Allows the app to join calls associated with this chat or meeting, without a signed-in user. |No | No |
| _TeamsActivity.Send.Chat_        | Send activity feed notifications to users in this chat.       | Allows the app to create new notifications in the teamwork activity feeds of the users in this chat, without a signed-in user. | No | No |

>[!NOTE]
> Currently, these permissions are supported only in the beta version of Microsoft Graph.

## ChatMessage permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ChatMessage.Send_ | Send user chat messages | Allows an app to send 1:1 and group chat messages in Microsoft Teams, on behalf of the signed-in user. | No | No |

---

## Cloud PC permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_CloudPC.Read.All_ | Read Cloud PCs | Allows the app to read Cloud PC objects such as provisioning policies, on behalf of the signed-in user. | No | No |
|_CloudPC.ReadWrite.All_ | Read and write Cloud PCs | Allows the app to create, read, update, and delete Cloud PC objects such as Azure network connections, provisioning policies, and device images, on behalf of the user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_CloudPC.Read.All_ | Read Cloud PCs | Allows the app to read Cloud PC objects such as provisioning policies, without a signed-in user. | Yes | No |
|_CloudPC.ReadWrite.All_ | Read and write Cloud PCs | Allows the app to create, read, update, and delete Cloud PC objects such as Azure network connections, provisioning policies, and device images, without a signed-in user. | Yes | No |

### Example usage

#### Delegated

* _CloudPC.Read.All_: View the properties of all Cloud PCs (`GET /deviceManagement/virtualEndpoint/cloudPCs`).
* _CloudPC.ReadWrite.All_: Edit the Cloud PC provisioning policy (`PATCH /deviceManagement/virtualEndpoint/provisioningPolicies/{id}`).

#### Application

* _CloudPC.Read.All_: View the properties of all Cloud PCs (`GET /deviceManagement/virtualEndpoint/cloudPCs`).
* _CloudPC.ReadWrite.All_: Edit the Cloud PC provisioning policy (`PATCH /deviceManagement/virtualEndpoint/provisioningPolicies/{id}`).

---

## Consent requests permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_ConsentRequest.Read.All_ |Read consent requests |Allows the app to read consent requests and approvals on behalf of the signed-in user. |Yes | No |
|_ConsentRequest.ReadWrite.All_ |Read and write consent requests |Allows the app to read app consent requests and approvals, and deny or approve those requests on behalf of the signed-in user. |Yes | No |

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_ConsentRequest.Read.All_ |Read consent requests |Allows the app to read app consent requests and approvals without a signed-in user. |Yes |
|_ConsentRequest.ReadWrite.All_ |Read and write consent requests |Allows the app to read app consent requests and approvals, and deny or approve those requests without a signed-in user. |Yes |

## Contacts permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Contacts.Read_ |Read user contacts  |Allows the app to read user contacts. |No | Yes |
|_Contacts.Read.Shared_ |Read user and shared contacts |Allows the app to read contacts that the user has permissions to access, including the user's own and shared contacts. |No |No|
|_Contacts.ReadWrite_ |Have full access to user contacts |Allows the app to create, read, update, and delete user contacts. |No |Yes|
|_Contacts.ReadWrite.Shared_ |Read and write user and shared contacts |Allows the app to create, read, update and delete contacts that the user has permissions to, including the user's own and shared contacts. |No |No|

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Contacts.Read_ |Read contacts in all mailboxes |Allows the app to read all contacts in all mailboxes without a signed-in user. |Yes |
|_Contacts.ReadWrite_ |Read and write contacts in all mailboxes |Allows the app to create, read, update, and delete all contacts in all mailboxes without a signed-in user. |Yes |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not all the mailboxes in the organization, even if the app has been granted the application permissions of Contacts.Read or Contacts.ReadWrite.

### Example usage
#### Delegated

* _Contacts.Read_: Read a contact from one of the top-level contact folders of the signed-in user (`GET /me/contactfolders/{Id}/contacts/{id}`).
* _Contacts.ReadWrite_: Update the contact photo of one of the signed-in user's contacts (`PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`).
* _Contacts.ReadWrite_: Add contacts to the root folder of the signed-in user (`POST /me/contacts`).

#### Application

* _Contacts.Read_: Read contacts from one of the top-level contact folders of any user in the organization (`GET /users/{id | userPrincipalName}/contactfolders/{Id}/contacts/{id}`).
* _Contacts.ReadWrite_: Update the photo for any contact of any user in an organization (`PUT /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`).
* _Contacts.ReadWrite_: Add contacts to the root folder of any user in the organization (`POST /users/{id | userPrincipalName}/contacts`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Custom security attributes permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _CustomSecAttributeAssignment.Read.All_ | Read custom security attribute assignments | Allows the app to read custom security attribute assignments for all principals in the tenant on behalf of a signed in user. | Yes | No |
| _CustomSecAttributeAssignment.ReadWrite.All_ | Read and write custom security attribute assignments | Allows the app to read and write custom security attribute assignments for all principals in the tenant on behalf of a signed in user. | Yes | No |
| _CustomSecAttributeDefinition.Read.All_ | Read custom security attribute definitions | Allows the app to read custom security attribute definitions for the tenant on behalf of a signed in user. | Yes | No |
| _CustomSecAttributeDefinition.ReadWrite.All_ | Read and write custom security attribute definitions | Allows the app to read and write custom security attribute definitions for the tenant on behalf of a signed in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _CustomSecAttributeAssignment.Read.All_ | Read custom security attribute assignments | Allows the app to read custom security attribute assignments for all principals in the tenant without a signed in user. | Yes |
| _CustomSecAttributeAssignment.ReadWrite.All_ | Read and write custom security attribute assignments | Allows the app to read and write custom security attribute assignments for all principals in the tenant without a signed in user. | Yes |
| _CustomSecAttributeDefinition.Read.All_ | Read custom security attribute definitions | Allows the app to read custom security attribute definitions for the tenant without a signed in user. | Yes |
| _CustomSecAttributeDefinition.ReadWrite.All_ | Read and write custom security attribute definitions | Allows the app to read and write custom security attribute definitions for the tenant without a signed in user. | Yes |

---

## Granular delegated admin privileges (GDAP) permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _DelegatedAdminRelationship.Read.All_ | Read Delegated Admin relationships with customers | Allows the app to read details of delegated admin relationships with customers like access details (that includes roles) and the duration as well as specific role assignments to security groups on behalf of the signed-in user. | Yes | No |
| _DelegatedAdminRelationship.ReadWrite.All_ | Manage Delegated Admin relationships with customers | Allows the app to manage (create-update-terminate) Delegated Admin relationships with customers and role assignments to security groups for active Delegated Admin relationships on your behalf. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _DelegatedAdminRelationship.Read.All_ | Read Delegated Admin relationships with customers | Allows the app to read details of delegated admin relationships with customers like access details (that includes roles) and the duration as well as specific role assignments to security groups without a signed-in user. | Yes | No |
| _DelegatedAdminRelationship.ReadWrite.All_ | Manage Delegated Admin relationships with customers | Allows the app to manage (create-update-terminate) Delegated Admin relationships with customers and role assignments to security groups for active Delegated Admin relationships without a signed-in user. | Yes | No |

---

## Device permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Device.Read_ |Read user devices |Allows the app to read a user's list of devices on behalf of the signed-in user. |No | Yes |
|_Device.Read.All_ |Read all devices |Allows the app to read your organization's devices' configuration information on behalf of the signed-in user.|Yes | Yes |
|_Device.Command_ |Communicate with user devices |Allows the app to launch another app or communicate with another app on a user's device on behalf of the signed-in user. |No | Yes |


#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Device.Read.All_ |Read all devices |Allows the app to read your organization's devices' configuration information without a signed-in user. |Yes |
|_Device.ReadWrite.All_ |Read and write devices |Allows the app to read and write all device properties without a signed in user. Does not allow device creation, device deletion, or update of device alternative security identifiers. |Yes |

> [!NOTE]
> Before December 3rd, 2020, when the application permission *Device.ReadWrite.All* was granted, the [Device Managers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#deprecated-roles) directory role was also assigned to the app's service principal. This directory role assignment is not removed automatically when the associated application permissions is revoked. To ensure that an application's access to read or write to devices is removed, customers must also remove any related directory roles that were granted to the application.
> 
> A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11th, 2021. Directory roles are no longer automatically assigned when application permissions are granted.

### Example usage

#### Application

* _Device.ReadWrite.All_: Read all registered devices in the organization (`GET /devices`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Directory permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Directory.Read.All_ |Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps. **Note**: Users may consent to applications that require this permission if the application is registered in their own organization’s tenant.| Yes | No |
| _Directory.ReadWrite.All_ |Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups. It does not allow the app to delete users or groups, or reset user passwords. | Yes | No |
| _Directory.AccessAsUser.All_ |Access directory as the signed-in user  | Allows the app to have the same access to information in the directory as the signed-in user. | Yes | No |

<br/>

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Directory.Read.All_ | Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps, without a signed-in user. | Yes |
| _Directory.ReadWrite.All_ | Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups, without a signed-in user. Does not allow user or group deletion. | Yes |

### Remarks

Directory permissions provide the highest level of privilege for accessing directory resources such as [user](/graph/api/resources/user), [group](/graph/api/resources/group), and [device](/graph/api/resources/device) in an organization.

They also exclusively control access to other directory resources like: [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta&preserve-view=true), [schema extension APIs](/graph/api/resources/schemaextension?view=graph-rest-beta&preserve-view=true), [Privileged Identity Management (PIM) APIs](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta&preserve-view=true), as well as many of the resources and APIs listed under the **Azure Active Directory** node in the v1.0 and beta API reference documentation. These include administrative units, directory roles, directory settings, policy, and many more.

> [!NOTE]
> Before December 3rd, 2020, when the application permission *Directory.Read.All* was granted, the [Directory Readers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-readers-permissions) directory role was also assigned to the app's service principal. When *Directory.ReadWrite.All* was granted, the [Directory Writers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-writers-permissions) directory role was also assigned. These directory roles are not removed automatically when the associated application permissions are revoked. To remove an application's access to read or write to the directory, customers must also remove any directory roles that were granted to the application.
> 
> A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11th, 2021. Directory roles are no longer automatically assigned when application permissions are granted.

The _Directory.ReadWrite.All_ permission grants the following privileges:

- Full read of all directory resources (both declared properties and navigation properties)
- Create and update users
- Disable and enable users (but not Company Administrator)
- Set user alternative security ID (but not administrators)
- Create and update groups
- Manage group memberships
- Update group owner
- Manage license assignments
- Define schema extensions on applications
- Manage directory settings
- Manage admin consent workflow configuration (but not whether admin consent is required or who is authorized to grant admin consent)

> **Note**:
> - No rights to reset user passwords.
> - Updating another user's **businessPhones**, **mobilePhone**, or **otherMails** property is only allowed on users who are non-administrators or assigned one of the following roles: Directory Readers, Guest Inviter, Message Center Reader and Reports Reader. For more details, see Helpdesk (Password) Administrator in [Azure AD available roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).  This is the case for apps granted either the User.ReadWrite.All or Directory.ReadWrite.All delegated or application permissions.
> - No rights to delete resources (including users or groups).
> - Specifically excludes create or update for resources not listed above. This includes: application, oAauth2Permissiongrant, appRoleAssignment, device, servicePrincipal, organization, domains, and so on.


### Example usage

#### Delegated
* _Directory.Read.All_: List all administrative units in an organization (`GET /beta/administrativeUnits`)
* _Directory.ReadWrite.All_: Add members to a directory role (`POST /directoryRoles/{id}/members/$ref`)

#### Application
* _Directory.Read.All_: List all memberships of a user, including directory roles and administrative units (`GET /beta/users/{id}/memberOf`)
* _Directory.Read.All_: List all group members, including service principals (`GET /beta/groups/{id}/members`)
* _Directory.ReadWrite.All_: Add an owner to a group (`POST /groups/{id}/owners/$ref`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Domain permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_Domain.Read.All_ |Read domains|Allows the app to read all domain properties on behalf of the signed-in user. |Yes | No |
|_Domain.ReadWrite.All_ | Read and write domains |Allows the app to read and write all domain properties on behalf of the signed-in user. Also allows the app to add, verify, and remove domains. |Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Domain.Read.All_ | Read domains | Allows the app to read all domain properties without a signed-in user. | Yes |
| _Domain.ReadWrite.All_ | Read and write domains | Allows the app to read and write domains without a signed-in user. | Yes |

---

## eDiscovery permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_eDiscovery.Read.All_ |Read user eDiscovery case data |Allows the app to read eDiscovery objects such as cases, custodians, review sets and other related objects on behalf of the signed-in user. |Yes | No |
|_eDiscovery.ReadWrite.All_ | Read and write eDiscovery case data |Allows the app to read and write eDiscovery objects such as cases, custodians, review sets and other related objects on behalf of the signed-in user. |Yes | No |

#### Application permissions

None

### Example usage

#### Delegated

* _eDiscovery.Read.All_: Get the list of cases available to the user (`GET /compliance/ediscovery/cases`)
* _eDiscovery.ReadWrite.All_: Create a reviewset query in a review set (`POST /compliance/ediscovery/cases/{caseId}/reviewSets/{reviewSetId}/queries`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---


## Education permissions

#### Delegated permissions

| Permission                      | Display String                                                   | Description                                                                                                                                                                                                                                                                      | Admin Consent Required | Microsoft Account supported |
| :------------------------------ | :--------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------------- | :-------------------------- |
| _EduAdministration.Read_        | Read education app settings                                      | Allows the app to read education app settings on behalf of the user.                                                                                                                                                                                                             | Yes                    | No                          |
| _EduAdministration.ReadWrite_   | Manage education app settings                                    | Allows the app to manage education app settings on behalf of the user.                                                                                                                                                                                                           | Yes                    | No                          |
| _EduAssignments.ReadBasic_      | Read users' class assignments without grades                     | Allows the app to read assignments without grades on behalf of the user                                                                                                                                                                                                          | Yes                    | No                          |
| _EduAssignments.ReadWriteBasic_ | Read and write users' class assignments without grades           | Allows the app to read and write assignments without grades on behalf of the user                                                                                                                                                                                                | Yes                    | No                          |
| _EduAssignments.Read_           | Read users' view of class assignments and their grades           | Allows the app to read assignments and their grades on behalf of the user                                                                                                                                                                                                        | Yes                    | No                          |
| _EduAssignments.ReadWrite_      | Read and write users' view of class assignments and their grades | Allows the app to read and write assignments and their grades on behalf of the user                                                                                                                                                                                              | Yes                    | No                          |
| _EduRoster.ReadBasic_           | Read a limited subset of users' view of the roster               | Allows the app to read a limited subset of the properties from the structure of schools and classes in an organization's roster and a limited subset of properties about users to be read on behalf of the user. Includes name, status, education role, email address and photo. | Yes                    | No                          |
| _EduRoster.Read_                | Read users' view of the roster                                   | Allows the app to read the structure of schools and classes in an organization's roster and education-specific information about users to be read on behalf of the user.                                                                                                         | Yes                    |
| _EduRoster.ReadWrite_           | Read and write users' view of the roster                         | Allows the app to read and write the structure of schools and classes in an organization's roster and education-specific information about users to be read and written on behalf of the user.                                                                                   | Yes                    |

#### Application permissions

| Permission                          | Display String                                      | Description                                                                                                                                                                   | Admin Consent Required |
| :---------------------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :--------------------- |
| _EduAdministration.Read.All_        | Read Education app settings                         | Read the state and settings of all Microsoft education apps on behalf of the user                                                                                             | Yes                    |
| _EduAdministration.ReadWrite.All_   | Manage education app settings                       | Manage the state and settings of all Microsoft education apps on behalf of the user                                                                                           | yes                    |
| _EduAssignments.ReadBasic.All_      | Read class assignments without grades               | Allows the app to read assignments without grades for all users                                                                                                               | Yes                    |
| _EduAssignments.ReadWriteBasic.All_ | Read and write class assignments without grades     | Allows the app to read and write assignments without grades for all users                                                                                                     | Yes                    |
| _EduAssignments.Read.All_           | Read class assignments with grades                  | Allows the app to read assignments and their grades for all users                                                                                                             | Yes                    |
| _EduAssignments.ReadWrite.All_      | Read and write class assignments with grades        | Allows the app to read and write assignments and their grades for all users                                                                                                   | Yes                    |
| _EduRoster.ReadBasic.All_           | Read a limited subset of the organization's roster. | Allows the app to read a limited subset of both the structure of schools and classes in an organization's roster and education-specific information about all users.          | Yes                    |
| _EduRoster.Read.All_                | Read the organization's roster.                     | Allows the app to read the structure of schools and classes in the organization's roster and education-specific information about all users to be read.                       | Yes                    |
| _EduRoster.ReadWrite.All_           | Read and write the organization's roster.           | Allows the app to read and write the structure of schools and classes in the organization's roster and education-specific information about all users to be read and written. | Yes                    |

### Example usage

#### Delegated

* _EduAssignments.Read_: Get the signed-in student's assignment information (`GET /education/classes/{id}/assignments/{id}`)
* _EduAssignments.ReadWriteBasic_: Submit signed-in student assignment (`GET /education/classes/{id}/assignments/{id}submit`)
* _EduRoster.ReadBasic_: Classes a signed-in user attends or teaches (`GET /education/classes/{id}/members`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Entitlement management permissions

#### Delegated permissions

|Permission|Display String|Description|Admin Consent Required|
|:----------|:--------------|:-----------|:-------|
|_EntitlementManagement.ReadWrite.All_|Read and write entitlement management resources|Allows the app to request access to read and manage access packages and related entitlement management resources on behalf of the signed-in user.|Yes|
|_EntitlementManagement.Read.All_|Read entitlement management resources|Allows the app to request access to read access packages and related entitlement management resources on behalf of the signed-in user.|Yes|

#### Application permissions

|Permission|Display String|Description|Admin Consent Required|
|:----------|:--------------|:-----------|:-------|
|_EntitlementManagement.ReadWrite.All_|Read and write entitlement management resources|Allows the app to read and manage access packages and related entitlement management resources.|Yes|
|_EntitlementManagement.Read.All_|Read entitlement management resources|Allows the app to read access packages and related entitlement management resources.|Yes|

## Files permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Files.Read_ | Read user files | Allows the app to read the signed-in user's files. | No | Yes |
| _Files.Read.All_ | Read all files that user can access | Allows the app to read all files the signed-in user can access. | No | Yes |
| _Files.ReadWrite_  | Have full access to user files | Allows the app to read, create, update, and delete the signed-in user's files. | No| Yes |
| _Files.ReadWrite.All_ | Have full access to all files user can access | Allows the app to read, create, update, and delete all files the signed-in user can access. | No | Yes |
| _Files.ReadWrite.AppFolder_ | Have full access to the application's folder (preview) | (Preview) Allows the app to read, create, update, and delete files in the application's folder. | No | Yes |
| _Files.Read.Selected_  | Read files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read files that the user selects. The app has access for several hours after the user selects a file.  | No | No |
| _Files.ReadWrite.Selected_ | Read and write files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. | No | No |

#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
| :--------- | :------------- | :---------- | :--------------------- |
| _Files.Read.All_ | Read files in all site collections | Allows the app to read all files in all site collections without a signed in user.  | Yes |
| _Files.ReadWrite.All_ | Read and write files in all site collections | Allows the app to read, create, update, and delete all files in all site collections without a signed in user. | Yes |

### Remarks

> **Note**: For personal accounts, Files.Read and Files.ReadWrite also grant access to files shared with the signed-in user.

The Files.Read.Selected and Files.ReadWrite.Selected delegated permissions are only valid on work or school accounts and are only exposed for working with [Office 365 file handlers (v1.0)](/previous-versions/office/office-365-api/).
They should not be used for directly calling Microsoft Graph APIs.

The Files.ReadWrite.AppFolder delegated permission is only valid for personal accounts and is used for accessing the [App Root special folder](https://dev.onedrive.com/misc/appfolder.htm) with the OneDrive [Get special folder](/graph/api/drive-get-specialfolder) Microsoft Graph API.


### Example usage

#### Delegated

* _Files.Read_: Read files stored in the signed-in user's OneDrive (`GET /me/drive/root/children`)
* _Files.Read.All_: Read files shared with the signed-in user (`GET /me/drive/root/sharedWithMe`)
* _Files.ReadWrite_: Write a file in the signed-in user's OneDrive (`PUT /me/drive/root/children/filename.txt/content`)
* _Files.ReadWrite.All_: Write a file shared with the user (`PUT /users/rgregg@contoso.com/drive/root/children/file.txt/content`)
* _Files.ReadWrite.AppFolder_: Write files into the app's folder in OneDrive (`PUT /me/drive/special/approot/children/file.txt/content`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---
## Financials permissions
#### Delegated permissions

|Permission|Display String|Description|Admin Consent Required|
|:----------|:--------------|:-----------|:-------|
|_Financials.ReadWrite.All_|Read and write financials data|Allows the app to read and write financials data on behalf of the signed-in user|No|

## Group permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Group.Read.All_ |    Read all groups | Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. | Yes | No |
| _Group.ReadWrite.All_ |    Read and write all groups| Allows the app to create groups and read all group properties and memberships on behalf of the signed-in user.  Also allows the app to read and write calendar, conversations, files, and other group content for all groups the signed-in user can access. Additionally allows group owners to manage their groups and allows group members to update group content. | Yes | No |
| _GroupMember.Read.All_ |    Read group memberships | Allows the app to list groups, read basic group properties and read membership of all groups the signed-in user has access to. | Yes | No |
| _GroupMember.ReadWrite.All_ |    Read and write group memberships | Allows the app to list groups, read basic properties, read and update the membership of the groups the signed-in user has access to. Group properties and owners cannot be updated and groups cannot be deleted. | Yes | No |
| _UnifiedGroupMember.Read.AsGuest_ |    Read unified (Microsoft 365) group memberships as a guest user | Allows the app to read basic unified group properties, memberships, and owners of the group the signed-in guest is a member of. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Group.Read.All_ | Read all groups | Allows the app to read group properties and memberships, and read conversations for all groups, without a signed-in user. | Yes |
| _Group.ReadWrite.All_ | Read and write all groups | Allows the app to create groups, read all group properties and memberships, update group properties and memberships, and delete groups. Also allows the app to read and write conversations. All of these operations can be performed by the app without a signed-in user.| Yes |
| _Group.Selected_ |    Access selected groups | **Note: This permission is exposed in the Azure portal for a feature that is not  available for general use. Do not use this permission as it is subject to change.** | Yes |
| _GroupMember.Read.All_ |    Read group memberships | Allows the app to read memberships and basic group properties for all groups without a signed-in user. | Yes |
| _GroupMember.ReadWrite.All_ |    Read and write group memberships | Allows the app to list groups, read basic properties, read and update the membership of the groups without a signed-in user. Group properties and owners cannot be updated and groups cannot be deleted. | Yes |
| _Group.Create_ |    Create groups | Allows the calling app to create groups without a signed-in user. Does not allow read, update, or deletion of any groups. | Yes |

### Remarks

Group functionality is not supported on personal Microsoft accounts.

For Microsoft 365 groups, Group permissions grant the app access to the contents of the group; for example, conversations, files, notes, and so on.

For application permissions, there are some limitations for the APIs that are supported. For more information, see [known issues](known-issues.md).

In some cases, an app may need [Directory permissions](#directory-permissions) to read some group properties like `member` and `memberOf`. For example, if a group has a one or more [servicePrincipals](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) as members, the app will need effective permissions to read service principals through being granted one of the _Directory.\*_ permissions, otherwise Microsoft Graph will return an error. (In the case of delegated permissions, the signed-in user will also need sufficient privileges in the organization to read service principals.) The same guidance applies for the `memberOf` property, which can return [administrativeUnits](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true).

To set a Microsoft 365 group's **preferredDataLocation** attribute, an app needs Directory.ReadWrite.All permission. When users in a multi-geo environment create a Microsoft 365 group, the **preferredDataLocation** value for the group is automatically set to that of the user. For more information about groups' preferred data location, see [Create a Microsoft 365 group with a specific PDL](/office365/enterprise/multi-geo-add-group-with-pdl).

Group permissions are used to control access to [Microsoft Teams](/graph/api/resources/teams-api-overview) resources and APIs. Personal Microsoft accounts are not supported.

Group permissions are also used to control access to [Microsoft Planner](/graph/api/resources/planner-overview) resources and APIs. Only delegated permissions are supported for Microsoft Planner APIs; application permissions are not supported. Personal Microsoft accounts are not supported.


### Example usage
#### Delegated

* _Group.Read.All_: Read all Microsoft 365 groups that the signed-in user is a member of (`GET /me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`).
* _Group.Read.All_: Read all Microsoft 365 group content like conversations (`GET /groups/{id}/conversations`).
* _Group.ReadWrite.All_: Update group properties, like photo (`PUT /groups/{id}/photo/$value`).
* _GroupMember.ReadWrite.All_: Update group members (`POST /groups/{id}/members/$ref`).
> **Note:**: This also requires _User.ReadBasic.All_ to read the user to add as a member.

#### Application

* _Group.Read.All_: Find all groups with name that starts with 'Sales' (`GET /groups?$filter=startswith(displayName,'Sales')`).
* _Group.ReadWrite.All_: Daemon service creates new events on a Microsoft 365 group's calendar (`POST /groups/{id}/events`).
* _Group.Create_: Creates a new group (`POST /groups`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---


## Identity provider permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityProvider.Read.All_ |   Read identity provider information  | Allows the app to read identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes | No |
| _IdentityProvider.ReadWrite.All_ |   Read and write identity provider information  |  Allows the app to read or write identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes | No |

### Remarks

_IdentityProvider.Read.All_ and _IdentityProvider.ReadWrite.All_ are valid only for work or school accounts. For an app to read or write identity providers with delegated permissions, the signed-in user must be assigned the Global Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _IdentityProvider.Read.All_: Read all identity providers configured in the tenant (`GET /beta/identityProviders`)
* _IdentityProvider.Read.All_: Read an existing identity provider (`GET /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Create an identity provider (`POST /beta/identityProviders`)
* _IdentityProvider.ReadWrite.All_ Update an existing identity provider (`PATCH /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Delete an existing identity provider (`DELETE /beta/identityProviders/{id}`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Identity protection risk permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information  | Allows the app to read identity risk event information for all users in your organization on behalf of the signed-in user. | Yes | No |
| _IdentityRiskyUser.Read.All_ |   Read identity user risk  information  | Allows the app to read identity user risk information for all users in your organization on behalf of the signed-in user. | Yes | No |
| _IdentityRiskyUser.ReadWrite.All_ |   Read and update identity user risk  information  | Allows the app to read and update identity user risk information for all users in your organization on behalf of the signed-in user. | Yes | No |
| _IdentityRiskyServicePrincipal.Read.All_ |   Read all risky service principal information  | Allows the app to read all risky service principal information for your organization, on behalf of the signed-in user. | Yes | No |
| _IdentityRiskyServicePrincipal.ReadWrite.All_ |   Read and write all risky service principal information  | Allows the app to read and update risky service principal information for all service principals in your organization, on behalf of the signed-in user. Update operations include dismissing risky service principals.| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information | Allows the app to read identity risk event information for all users in your organization without a signed-in user. | Yes |
| _IdentityRiskyUser.Read.All_ |   Read identity user risk  information | Allows the app to read identity user risk information for all users in your organization without a signed-in user. | Yes |
| _IdentityRiskyUser.ReadWrite.All_ |   Read and update identity user risk  information | Allows the app to read and update identity user risk information for all users in your organization without a signed-in user. | Yes |
| _IdentityRiskyServicePrincipal.Read.All_ |   Read all risky service principal information  | Allows the app to read all risky service principal information for your organization, without a signed-in user. | Yes |
| _IdentityRiskyServicePrincipal.ReadWrite.All_ |   Read and write all risky service principal information  | Allows the app to read and update risky service principal for your organization, without a signed-in user.| Yes |

All identity risk permissions are valid only for work or school accounts. For an app with delegated permissions to read identity risk information, the signed-in user must be a member of one of the following [Azure AD administrator roles](/azure/active-directory/roles/permissions-reference): Global Administrator, Security Administrator, or Security Reader.

### Example usage

The following usages are valid for both delegated and application permissions:

#### Read risk events

* Read all risk events generated for all users in the tenant (`GET /identityProtection/riskDetections`)
* Read most recent 50 risk events (`GET /identityProtection/riskDetections?$orderBy=detectedDateTime desc&top=50`)

#### Read risky users

* Read all risky users and properties in the tenant (`GET /identityProtection/riskyUsers`)
* Read all risky users whose aggregate risk level is Medium (`GET /identityProtection/riskyUsers?$filter=riskLevel eq 'medium'`)
* Read the risk information for a specific user (`GET /identityProtection/riskyUsers?$filter=id eq 'userId'`)

#### Read risky service principals

* Read all risky service principals and properties in the tenant (`GET /identityProtection/riskyServicePrincipals`)
* Read all risky service principals whose aggregate risk level is Medium (`GET /identityProtection/riskyServicePrincipals?$filter=riskLevel eq 'medium'`)
* Read the risk information for a specific service principal (`GET /identityProtection/riskyServicePrincipals?$filter=id eq '{riskyServicePrincipalsId}'`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Identity user flow permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityUserFlow.Read.All_ |   Read all identity user flows in a tenant  | Allows the app to read your organization's user flows. | Yes | No |
| _IdentityUserFlow.ReadWrite.All_ |   Read and write all identity user flows in a tenant.    | Allows the app to read or write your organization's user flows. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _IdentityUserFlow.Read.All_ |   Read all identity user flows in a tenant  | Allows the app to read your organization's user flows. | Yes | No |
| _IdentityUserFlow.ReadWrite.All_ |   Read and write all identity user flows in a tenant.    | Allows the app to read or write your organization's user flows. | Yes | No |

### Remarks

_IdentityUserFlow.Read.All_ and _IdentityUserFlow.ReadWrite.ALL_ is valid only for work or school accounts.

For an app with delegated permissions to read user flows, the signed-in user must be a member of one of the following administrator roles: Global Administrator, External Identities User Flow Administrator, or Global Reader. For an app with delegated permissions to write user flows, the signed-in user must be a member of one of the following administrator roles: Global Administrator or External Identities User Flow Administrator.

For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated and Application

The following usages are valid for both delegated and application permissions:

* _IdentityUserFlow.Read.All_: Read all user flows in an Azure AD B2C tenant (`GET beta/identity/b2cUserFlows`)
* _IdentityUserFlow.Read.All_: Read all user flows in an Azure Active Directory (Azure AD) tenant (`GET beta/identity/b2xUserFlows`)
* _IdentityUserFlow.Read.All_: Read all user attribute assignments in an Azure AD B2C user flow (`GET beta/identity/b2cUserFlows/{id}/userAttributeAssignments`)
* _IdentityUserFlow.ReadWrite.All_: Create a new user flow in an Azure AD B2C tenant (`POST beta/identity/b2cUserFlows`)
* _IdentityUserFlow.ReadWrite.All_: Create a new user flow in an Azure Active Directory (Azure AD) tenant (`POST beta/identity/b2xUserflows`)
* _IdentitytUserFlow.ReadWrite.All_: Add an identity provider to an Azure AD B2C user flow (`PATCH beta/identity/b2cUserFlows/{id}/identityProviders/$ref`)
* _IdentityUserFlow.ReadWrite.All_: Remove an identity provider from an Azure AD B2C user flow (`DELETE beta/identity/b2cUserFlows/{id}/identityProviders/{id}`)
* _IdentityUserFlow.ReadWrite.All_: Create a user attribute assignment in an Azure AD B2C user flow (`POST beta/identity/b2cUserFlows/{id}/userAttributeAssignments`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Information protection policy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _InformationProtectionPolicy.Read_ |   Read user sensitivity labels and label policies | Allows an app to read information protection sensitivity labels and label policy settings, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _InformationProtectionPolicy.Read.All_ |   Read all published labels and label policies for an organization | Allows an app to read published sensitivity labels and label policy settings for the entire organization or a specific user, without a signed in user. | Yes |

---


## Intune device management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_DeviceManagementApps.Read.All_ | Read Microsoft Intune apps | Allows the app to read the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementApps.ReadWrite.All_ | Read and write Microsoft Intune apps | Allows the app to read and write the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementConfiguration.Read.All_ | Read Microsoft Intune device configuration and policies | Allows the app to read properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementConfiguration.ReadWrite.All_ | Read and write Microsoft Intune device configuration and policies  | Allows the app to read and write properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementManagedDevices.PrivilegedOperations.All_ | Perform user-impacting remote actions on Microsoft Intune devices | Allows the app to perform remote high impact actions such as wiping the device or resetting the passcode on devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.Read.All_ | Read Microsoft Intune devices | Allows the app to read the properties of devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.ReadWrite.All_ | Read and write Microsoft Intune devices | Allows the app to read and write the properties of devices managed by Microsoft Intune. Does not allow high impact operations such as remote wipe and password reset on the device’s owner. | Yes | No |
|_DeviceManagementRBAC.Read.All_ | Read Microsoft Intune RBAC settings | Allows the app to read the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementRBAC.ReadWrite.All_ | Read and write Microsoft Intune RBAC settings | Allows the app to read and write the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementServiceConfig.Read.All_ | Read Microsoft Intune configuration | Allows the app to read Intune service properties including device enrollment and third party service connection configuration. | Yes | No |
|_DeviceManagementServiceConfig.ReadWrite.All_ | Read and write Microsoft Intune configuration | Allows the app to read and write Microsoft Intune service properties including device enrollment and third party service connection configuration. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_DeviceManagementApps.Read.All_ | Read Microsoft Intune apps | Allows the app to read the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementApps.ReadWrite.All_ | Read and write Microsoft Intune apps | Allows the app to read and write the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes | No |
|_DeviceManagementConfiguration.Read.All_ | Read Microsoft Intune device configuration and policies | Allows the app to read properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementConfiguration.ReadWrite.All_ | Read and write Microsoft Intune device configuration and policies  | Allows the app to read and write properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes | No |
|_DeviceManagementManagedDevices.PrivilegedOperations.All_ | Perform user-impacting remote actions on Microsoft Intune devices | Allows the app to perform remote high impact actions such as wiping the device or resetting the passcode on devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.Read.All_ | Read Microsoft Intune devices | Allows the app to read the properties of devices managed by Microsoft Intune. | Yes | No |
|_DeviceManagementManagedDevices.ReadWrite.All_ | Read and write Microsoft Intune devices | Allows the app to read and write the properties of devices managed by Microsoft Intune. Does not allow high impact operations such as remote wipe and password reset on the device’s owner. | Yes | No |
|_DeviceManagementRBAC.Read.All_ | Read Microsoft Intune RBAC settings | Allows the app to read the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementRBAC.ReadWrite.All_ | Read and write Microsoft Intune RBAC settings | Allows the app to read and write the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes | No |
|_DeviceManagementServiceConfig.Read.All_ | Read Microsoft Intune configuration | Allows the app to read Intune service properties including device enrollment and third party service connection configuration. | Yes | No |
|_DeviceManagementServiceConfig.ReadWrite.All_ | Read and write Microsoft Intune configuration | Allows the app to read and write Microsoft Intune service properties including device enrollment and third party service connection configuration. | Yes | No |

### Remarks

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

These permissions are only valid for work or school accounts.

### Example usage

#### Delegated

* _DeviceManagementServiceConfiguration.Read.All_: Check the current state of the Intune subscription (`GET /deviceManagement/subscriptionState`).
* _DeviceManagementServiceConfiguration.ReadWrite.All_: Create new Terms and Conditions (`POST /deviceManagement/termsAndConditions`).
* _DeviceManagementConfiguration.Read.All_: Find the status of a device configuration (`GET /deviceManagement/deviceConfigurations/{id}/deviceStatuses`).
* _DeviceManagementConfiguration.ReadWrite.All_: Assign a device compliance policy to a group (`POST deviceCompliancePolicies/{id}/assign`).
* _DeviceManagementApps.Read.All_: Find all the Windows Store apps published to Intune (`GET /deviceAppManagement/mobileApps?$filter=isOf('microsoft.graph.windowsStoreApp')`).
* _DeviceManagementApps.ReadWrite.All_: Publish a new application (`POST /deviceAppManagement/mobileApps`).
* _DeviceManagementRBAC.Read.All_: Find a role assignment by name (`GET /deviceManagement/roleAssignments?$filter=displayName eq 'My Role Assignment'`).
* _DeviceManagementRBAC.ReadWrite.All_: Create a new custom role (`POST /deviceManagement/roleDefinitions`).
* _DeviceManagementManagedDevices.Read.All_: Find a managed device by name (`GET /managedDevices/?$filter=deviceName eq 'My Device'`).
* _DeviceManagementManagedDevices.ReadWrite.All_: Remove a managed device (`DELETE /managedDevices/{id}`).
* _DeviceManagementManagedDevices.PrivilegedOperations.All_: Reset the passcode on a user's managed device (`POST /managedDevices/{id}/resetPasscode`).

#### Application

* _DeviceManagementServiceConfiguration.Read.All_: Check the current state of the Intune subscription (`GET /deviceManagement/subscriptionState`).
* _DeviceManagementServiceConfiguration.ReadWrite.All_: Create new Terms and Conditions (`POST /deviceManagement/termsAndConditions`).
* _DeviceManagementConfiguration.Read.All_: Find the status of a device configuration (`GET /deviceManagement/deviceConfigurations/{id}/deviceStatuses`).
* _DeviceManagementConfiguration.ReadWrite.All_: Assign a device compliance policy to a group (`POST deviceCompliancePolicies/{id}/assign`).
* _DeviceManagementApps.Read.All_: Find all the Windows Store apps published to Intune (`GET /deviceAppManagement/mobileApps?$filter=isOf('microsoft.graph.windowsStoreApp')`).
* _DeviceManagementApps.ReadWrite.All_: Publish a new application (`POST /deviceAppManagement/mobileApps`).
* _DeviceManagementRBAC.Read.All_: Find a role assignment by name (`GET /deviceManagement/roleAssignments?$filter=displayName eq 'My Role Assignment'`).
* _DeviceManagementRBAC.ReadWrite.All_: Create a new custom role (`POST /deviceManagement/roleDefinitions`).
* _DeviceManagementManagedDevices.Read.All_: Find a managed device by name (`GET /managedDevices/?$filter=deviceName eq 'My Device'`).
* _DeviceManagementManagedDevices.ReadWrite.All_: Remove a managed device (`DELETE /managedDevices/{id}`).
* _DeviceManagementManagedDevices.PrivilegedOperations.All_: Reset the passcode on a user's managed device (`POST /managedDevices/{id}/resetPasscode`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Mail permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Mail.Read_ |    Read user mail | Allows the app to read email in user mailboxes. | No | Yes
| _Mail.ReadBasic_ |    Read user basic mail | Allows the app to read email in the signed-in user's mailbox, except for **body**, **bodyPreview**, **uniqueBody**, **attachments**, **extensions**, and any extended properties. Does not include permissions to search messages. | No | No
| _Mail.ReadWrite_ |    Read and write access to user mail | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail.| No | Yes
| _Mail.Read.Shared_ |    Read user and shared mail | Allows the app to read mail that the user can access, including the user's own and shared mail. | No | No
| _Mail.ReadWrite.Shared_ |    Read and write user and shared mail | Allows the app to create, read, update, and delete mail that the user has permission to access, including the user's own and shared mail. Does not include permission to send mail. | No | No
| _Mail.Send_ |    Send mail as a user | Allows the app to send mail as users in the organization. | No | Yes
| _Mail.Send.Shared_ |    Send mail on behalf of others | Allows the app to send mail as the signed-in user, including sending on-behalf of others. | No | No
| _MailboxSettings.Read_ |  Read user mailbox settings | Allows the app to the read user's mailbox settings. Does not include permission to send mail. | No | Yes
| _MailboxSettings.ReadWrite_ |  Read and write user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings. Does not include permission to directly send mail, but allows the app to create rules that can forward or redirect messages. | No | Yes
| _IMAP.AccessAsUser.All_ | Read and write access to user mail via IMAP | Allows the app to read, update, create and delete email in user mailboxes. Does not include permission to send mail. | No | Yes
| _POP.AccessAsUser.All_ | Read and write access to user mail via POP | Allows the app to read, update, create and delete email in user mailboxes. Does not include permission to send mail. | No | Yes
| _SMTP.Send_ | Send mail as a user using SMTP AUTH | Allows the app to send mail as users in the organization. | No | Yes

#### Application permissions

| Permission                  | Display String                           | Description                                                                                                                                                                        | Admin Consent Required |
|:----------------------------|:-----------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------|
| _Mail.Read_                 | Read mail in all mailboxes               | Allows the app to read mail in all mailboxes without a signed-in user.                                                                                                             | Yes                    |
| _Mail.ReadBasic.All_        | Read all users basic mail                | Allows the app to read all users mailboxes except Body, BodyPreview, UniqueBody, Attachments, ExtendedProperties, and Extensions. Does not include permissions to search messages. | Yes                    |
| _Mail.ReadWrite_            | Read and write mail in all mailboxes     | Allows the app to create, read, update, and delete mail in all mailboxes without a signed-in user. Does not include permission to send mail.                                       | Yes                    |
| _Mail.Send_                 | Send mail as any user                    | Allows the app to send mail as any user without a signed-in user.                                                                                                                  | Yes                    |
| _MailboxSettings.Read_      | Read all user mailbox settings           | Allows the app to read user's mailbox settings without a signed-in user. Does not include permission to send mail.                                                                 | Yes                     |
| _MailboxSettings.ReadWrite_ | Read and write all user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings without a signed-in user. Does not include permission to send mail.                                     | Yes                    |

> **Important**
Administrators can configure [application access policy](auth-limit-mailbox-access.md) to limit app access to _specific_ mailboxes and not to all the mailboxes in the organization, even if the app has been granted the application permissions of Mail.Read, Mail.ReadWrite, Mail.Send, MailboxSettings.Read, or MailboxSettings.ReadWrite.


### Remarks

_Mail.Read.Shared_, _Mail.ReadWrite.Shared_, and _Mail.Send.Shared_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Mail.Send_ or _Mail.Send.Shared_ permission, an app can send mail and save a copy to the user's Sent Items folder, even if the app does not use a corresponding _Mail.ReadWrite_ or _Mail.ReadWrite.Shared_ permission.

### Example usage

#### Delegated

* _Mail.Read_: List messages in the user's inbox, sorted by `receivedDateTime` (`GET /me/mailfolders/inbox/messages?$orderby=receivedDateTime DESC`).
* _Mail.Read.Shared_: Find all messages with attachments in a user's inbox that has shared their inbox with the signed-in user (`GET /users{id | userPrincipalName}/mailfolders/inbox/messages?$filter=hasAttachments eq true`).
* _Mail.ReadWrite_: Mark a message read (`PATCH /me/messages/{id}`).
* _Mail.Send_: Send a message (`POST /me/sendmail`).
* _MailboxSettings.ReadWrite_: Update the user's automatic reply (`PATCH /me/mailboxSettings`).

#### Application

* _Mail.Read_: Find messages from bob@contoso.com (`GET /users/{id | userPrincipalName}/messages?$filter=from/emailAddress/address eq 'bob@contoso.com'`).
* _Mail.ReadWrite_: Create a new folder in the Inbox named `Expense Reports` (`POST /users/{id | userPrincipalName}/mailfolders`).
* _Mail.Send_: Send a message (`POST /users/{id | userPrincipalName}/sendmail`).
* _MailboxSettings.Read_: Get the default timezone for the user's mailbox (`GET /users/{id | userPrincipalName}/mailboxSettings/timeZone`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Managed tenant permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ManagedTenants.Read.All_ | Read all managed tenant specific information | Allows the app to read all managed tenant information on behalf of the signed-in user. | Yes | No |
| _ManagedTenants.ReadWrite.All_ | Read and write all managed tenant specific information | Allows the app to read and write all managed tenant information on behalf of the signed-in user. | Yes | No |

#### Application permissions

None.

---

## Member permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Member.Read.Hidden_ | Read hidden memberships | Allows the app to read the memberships of hidden groups and administrative units on behalf of the signed-in user, for those hidden groups and administrative units that the signed-in user has access to. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Member.Read.Hidden_ | Read all hidden memberships | Allows the app to read the memberships of hidden groups and administrative units without a signed-in user. | Yes |

### Remarks
_Member.Read.Hidden_ is valid only on work or school accounts.

Membership in some Microsoft 365 groups can be hidden. This means that only the members of the group can view its members. This feature can be used to help comply with regulations that require an organization to hide group membership from outsiders (for example, a Microsoft 365 group that represents students enrolled in a class).

### Example usage

#### Delegated

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership on behalf of the signed-in user (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership on behalf of the signed-in user (`GET /groups/{id}/members`).

#### Application

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership (`GET /groups/{id}/members`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Notes permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Notes.Read_ |    Read user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user. | No | Yes
| _Notes.Create_ |    Create user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user.| No | Yes
| _Notes.ReadWrite_ |    Read and write user OneNote notebooks | Allows the app to read, share, and modify OneNote notebooks on behalf of the signed-in user. | No | Yes
| _Notes.Read.All_ |    Read all OneNote notebooks that user can access | Allows the app to read OneNote notebooks that the signed-in user has access to in the organization. | No | No
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks that user can access | Allows the app to read, share, and modify OneNote notebooks that the signed-in user has access to in the organization.| No | No
| _Notes.ReadWrite.CreatedByApp_ |    Limited notebook access (deprecated) | **Deprecated** <br/>Do not use. No privileges are granted by this permission. | No | No

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Notes.Read.All_ |    Read all OneNote notebooks | Allows the app to read all the OneNote notebooks in your organization, without a signed-in user. | Yes |
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks | Allows the app to read, share, and modify all the OneNote notebooks in your organization, without a signed-in user.| Yes |


### Remarks
_Notes.Read.All_ and _Notes.ReadWrite.All_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Notes.Create_ permission, an app can view the OneNote notebook hierarchy of the signed-in user and create OneNote content (notebooks, section groups, sections, pages, etc.).

_Notes.ReadWrite_ and _Notes.ReadWrite.All_ also allow the app to modify the permissions on the OneNote content that can be accessed by the signed-in user.

For work or school accounts, _Notes.Read.All_ and _Notes.ReadWrite.All_ allow the app to access other users' OneNote content that the signed-in user has permission to within the organization.

### Example usage
#### Delegated

* _Notes.Create_: Create a new notebooks for the signed-in user (`POST /me/onenote/notebooks`).
* _Notes.Read_: Read the notebooks for the signed-in user (`GET /me/onenote/notebooks`).
* _Notes.Read.All_: Get all notebooks that the signed-in user has access to within the organization (`GET /me/onenote/notebooks?includesharednotebooks=true`).
* _Notes.ReadWrite_: Update the page of the signed-in user (`PATCH /me/onenote/pages/{id}/$value`).
* _Notes.ReadWrite.All_: Create a page in another user's notebook that the signed-in user has access to within the organization (`POST /users/{id}/onenote/pages`).

#### Application

* _Notes.Read.All_: Read all users notebooks in a group (`GET /groups/{id}/onenote/notebooks`).
* _Notes.ReadWrite.All_: Update the page in a notebook for any user in the organization (`PATCH /users/{id}/onenote/pages/{id}/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Notifications permissions
#### Delegated permissions
|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Notifications.ReadWrite.CreatedByApp_ | Deliver and manage notifications for this app. | Allow the app to deliver its notifications on behalf of signed-in users. Also allows the app to read, update, and delete the user’s notification items for this app. |No |
### Remarks
*Notifications.ReadWrite.CreatedByApp* is valid for both Microsoft accounts and work or school accounts.
The *CreatedByApp* constraint associated with this permission indicates that the service will apply implicit filtering to results based on the identity of the calling app, either the Microsoft account app ID or a set of app IDs configured for a cross-platform application identity.
### Example usage
#### Delegated
* _Notifications.ReadWrite.CreatedByApp_: Publish a user-centric notification, which might then be delivered to the user’s multiple application clients running on different endpoints. (POST /me/notifications/).

---

## Online meetings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_OnlineMeetings.Read_|Read Online Meeting.|Allows an app to read online meeting details on behalf of the signed-in user.|No|No|
|_OnlineMeetings.ReadWrite_|Read and Create Online Meetings.|Allows an app to create, read online meetings on behalf of the signed-in user. |No|No|
|_OnlineMeetingArtifact.Read.All_|Read Online Meeting artifacts.|Allows the app to read online meeting artifacts on behalf of the signed-in user. |No|No|

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_OnlineMeetings.Read.All_|Read Online Meeting details from the app |Allows the app to read Online Meeting details in your organization without a signed-in user.|Yes|
|_OnlineMeetings.ReadWrite.All_|Read Online Meeting details from the app|Allows an app to create, read Online Meetings without a signed-in user.|Yes|
|_OnlineMeetingArtifact.Read.All_|Read Online Meeting artifacts from the app |Allows the app to read Online Meeting artifacts in your organization, without a signed-in user.|Yes|

> **Important**
Administrators can configure [application access policy](cloud-communication-online-meeting-application-access-policy.md) to allow apps to access online meetings on behalf of a user.

### Example usage

#### Delegated

* _OnlineMeetings.Read_: Retrieve the properties and relationships of an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) (`GET /beta/communications/onlinemeetings/{default id}`).
* _OnlineMeetings.ReadWrite_: Create an [online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true) (`POST /beta/communications/onlinemeetings`).

#### Application

* _OnlineMeetings.Read.All_
  * Retrieve the properties and relationships of an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) (`GET /beta/communications/onlinemeetings/?$filter=VideoTeleconferenceId%20eq%20'{id}'`).
  * Retrieve an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) on behalf of a user (`GET /beta/users/{userId}/onlineMeetings/{id})
* _OnlineMeetings.ReadWrite.All_
  * Create an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) on behalf of a user (`POST /beta/users/{userId}/onlineMeetings/)
  * Update an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) on behalf of a user (`PATCH /beta/users/{userId}/onlineMeetings/{id})
  * Delete an [online meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) on behalf of a user (`DELETE /beta/users/{userId}/onlineMeetings/{id})
  
> **Note**: Creating an [online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true) creates a meeting on behalf of a user, but does not show it on the user's Calendar.

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## On-premises publishing profiles permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| OnPremisesPublishingProfiles.ReadWrite.All |    Access  On-Premises Publishing Profiles| Allows the app to manage hybrid identity service configuration by creating, viewing, updating and deleting on-premises published resources, on-premises agents and agent groups, on behalf of the signed-in user. | No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| OnPremisesPublishingProfiles.ReadWrite.All |    Access  On-Premises Publishing Profiles| Allows the app to create, view, update and delete on-premises published resources, on-premises agents and agent groups, as part of a hybrid identity configuration, without a signed in user. | Yes | No |

---

## OpenID Connect (OIDC) scopes

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _email_ |    View users' email address | Allows the app to read your users' primary email address. | No | Yes |
| _offline_access_ |    Access user's data anytime | Allows the app to read and update user data, even when they are not currently using the app.| No | Yes |
| _openid_ |    Sign users in | By using this permission, an app can receive a unique identifier for the user in the form of the sub claim. The permission also gives the app access to the UserInfo endpoint. The openid scope can be used at the Microsoft identity platform token endpoint to acquire ID tokens. The app can use these tokens for authentication.| No | Yes |
| _profile_ |    View users' basic profile | Allows the app to see your users' basic profile (name, picture, user name).| No | Yes |

### Remarks
You can use these scopes to specify artifacts that you want returned in Azure AD authorization and token requests. They are supported differently by the Azure AD v1.0 and v2.0 endpoints.

With the Azure AD v1.0 endpoint, only the _openid_ scope is used. You specify it in the *scope* parameter in an authorization request to return an ID token when you use the OpenID Connect protocol to sign in a user to your app. For more information, see [Authorize access to web applications using OpenID Connect and Azure Active Directory](/azure/active-directory/develop/active-directory-protocols-openid-connect-code). To successfully return an ID token, you must also make sure that the _User.Read_ permission is configured when you register your app.

With the Azure AD v2.0 endpoint, you specify the _offline\_access_ scope in the _scope_ parameter to explicitly request a refresh token when using the OAuth 2.0 or OpenID Connect protocols. With OpenID Connect, you specify the _openid_ scope to request an ID token. You can also specify the _email_ scope, _profile_ scope, or both to return additional claims in the ID token. You do not need to specify the _User.Read_ permission to return an ID token with the v2.0 endpoint. For more information, see [OpenID Connect scopes](/azure/active-directory/develop/active-directory-v2-scopes#openid-connect-scopes).

> [!IMPORTANT]
> 
> The Microsoft Authentication Library (MSAL) currently specifies _offline\_access_, _openid_, _profile_, and _email_ by default in authorization and token requests. This means that, for the default case, if you specify these scopes explicitly, Azure AD may return an error.

---

## Organization permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Organization.Read.All_ |Read organization information | Allows the app to read the organization and related resources, on behalf of the signed-in user. Related resources include things like subscribed SKUs and tenant branding information.|Yes | No |
| _Organization.ReadWrite.All_ |Read and write organization information | Allows the app to read and write the organization and related resources, on behalf of the signed-in user. Related resources include things like subscribed SKUs and tenant branding information. |Yes | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Organization.Read.All_ |Read organization information | Allows the app to read the organization and related resources, without a signed-in user. Related resources include things like subscribed SKUs and tenant branding information. | Yes |
| _Organization.ReadWrite.All_ |Read and write organization information | Allows the app to read and write the organization and related resources, without a signed-in user. Related resources include things like subscribed SKUs and tenant branding information. |Yes |


### Example usage

#### Delegated

* _Organization.Read.All_: Get organization information (`GET /organization`).
* _Organization.Read.All_: Get the SKUs that the organization has subscribed to (`GET /subscribedSkus`).

#### Application

* _Organization.ReadWrite.All_: Update organization information (such as **technicalNotificationMails**) (`PATCH /organization/{id}`).

---

## Organizational contact permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _OrgContact.Read.All_ | Read organizational contacts|Allows the app to read all organizational contacts on behalf of the signed-in user. These contacts are managed by the organization and are different from a user's personal contacts.|Yes | No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _OrgContact.Read.All_ |Read organizational contacts | Allows the app to read all organizational contacts without a signed-in user.  These contacts are managed by the organization and are different from a user's personal contacts. | Yes |

### Example usage

#### Delegated

* _OrgContact.Read.All_: Get all organizational contacts (`GET /contacts`).

---

## People permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _People.Read_ |    Read users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). | No | Yes |
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. <br/><br/>The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes |

### Remarks

The People.Read.All permission is only valid for work and school accounts.

### Example usage

#### Delegated
* _People.Read_: Read a list of relevant people (`GET /me/people`)
* _People.Read.All_: Read a list of relevant people to another user in the same organization (`GET /users('{id})/people`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Privileged access permissions

#### Delegated permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:---------- |:-------------- |:----------- |:---------------------- |:----------------- |
| _PrivilegedAccess.ReadWrite.AzureAD_ |Read and write Privileged Identity Management data for Directory  | Allows the app to have read and write access to Privileged Identity Management APIs for Azure AD. | Yes | No |
| _PrivilegedAccess.ReadWrite.AzureADGroup_ |Read and write Privileged Identity Management data for privileged access groups | Allows the app to have read and write access to Privileged Identity Management APIs for groups. | Yes | No |
| _PrivilegedAccess.ReadWrite.AzureResources_ |Read and write Privileged Identity Management data for Azure Resources | Allows the app to have read and write access to Privileged Identity Management APIs for Azure resources. | Yes | No |

#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
|:---------- |:-------------- |:----------- |:---------------------- |
| _PrivilegedAccess.Read.AzureAD_ |Read Privileged Identity Management data for Directory  | Allows the app to have read access to Privileged Identity Management APIs for Azure AD. | Yes |
| _PrivilegedAccess.Read.AzureADGroup_ |Read Privileged Identity Management data for privileged access groups | Allows the app to have read access to Privileged Identity Management APIs for groups. | Yes |
| _PrivilegedAccess.Read.AzureResources_ |Read Privileged Identity Management data for Azure resources | Allows the app to have read access to Privileged Identity Management APIs for Azure AD resources. | Yes |

---

## Places permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Place.Read.All_ |   Read all company places | Allows the app to read company places (conference rooms and room lists) set up in Exchange Online for the tenant. |Yes | No |
| _Place.ReadWrite.All_ |   Read and write all company places | Allows the app to read and write company places (conference rooms and room lists) set up in Exchange Online for the tenant. |Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Place.Read.All_ |   Read all company places | Allows the app to read company places (conference rooms and room lists) for calendar events and other applications.| Yes |

---

## Policy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Policy.Read.All_ | Read your organization's policies | Allows the app to read your organization's policies on behalf of the signed-in user. | Yes | No |
| _Policy.Read.PermissionGrant_ | Read consent and permission grant policies | Allows the app to read policies related to consent and permission grants for applications, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AccessReview_ |   Read and write your organization's access review policy  | Allows the app to read and write your organization's access review policy on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.ApplicationConfiguration_ | Read and write your organization's application configuration policies | Allows the app to read and write your organization's application configuration policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AuthenticationFlows_ | Read and write your organization's authentication flow policies | Allows the app to read and write the authentication flow policies, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AuthenticationMethod_        | Read and write authentication method policies       | Allows the app to read and write the authentication method policies, on behalf of the signed-in user. The signed-in user must also be assigned the Global Administrator role. | Yes | No |
| _Policy.ReadWrite.Authorization_ | Read and write your organization's authorization policy | Allows the app to read and write your organization's authorization policy on behalf of the signed-in user.  For example, authorization policies can control some of the permissions that the out-of-the-box user role has by default. | Yes | No |
| _Policy.ReadWrite.ConditionalAccess_ | Read and write your organization's conditional access policies | Allows the app to read and write your organization's conditional access policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.ConsentRequest_ | Read and write your organization's consent requests policy | Allows the app to read and write your organization's consent requests policy on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.CrossTenantAccess_ | Read and write your organization's cross-tenant access policy | Allows the app to read and write your organization's cross-tenant access policy on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.FeatureRollout_ | Read and write your organization's feature rollout policies | Allows the app to read and write your organization's feature rollout policies on behalf of the signed-in user. Includes abilities to assign and remove users and groups to rollout of a specific feature. | Yes | No |
| _Policy.ReadWrite.PermissionGrant_ | Manage consent and permission grant policies | Allows the app to manage policies related to consent and permission grants for applications, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.TrustFramework_ | Read and write your organization's trust framework policies | Allows the app to read and write your organization's trust framework policies on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.AuthenticationMethod_ | Read and write your organization's authentication method policies | Allows the app to read and write the authentication method policies, on behalf of the signed-in user. | Yes | No |
| _Policy.ReadWrite.MobilityManagement_ | Read and write your organization's mobility management policies. | Allows the app to read and write the mobility management policies on behalf of the signed-in user. These control the settings for mobile device management (MDM) and mobile application management (MAM) applications. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Policy.Read.All_ | Read your organization's policies | Allows the app to read all your organization's policies without a signed in user. | Yes |
| _Policy.Read.PermissionGrant_ | Read consent and permission grant policies | Allows the app to read policies related to consent and permission grants for applications, without a signed-in user. | Yes |
| _Policy.Read.ApplicationConfiguration_ | Read your organization's application configuration policies | Allows the app to read all your organization's application configuration policies without a signed in user. | Yes |
| _Policy.ReadWrite.AccessReview_ | Read and write your organization's access review policy | Allows the app to read and write your organization's access review policy, without a signed-in user. | Yes |
| _Policy.ReadWrite.ApplicationConfiguration_ | Read and write your organization's application configuration policies | Allows the app to read and write your organization's application configuration policies, without a signed-in user. | Yes |
| _Policy.ReadWrite.AuthenticationFlows_ | Read and write your organization's authentication flow policies | Allows the app to read and write the authentication flow policies for the tenant, without a signed in user. | Yes |
| _Policy.ReadWrite.Authorization_ | Read and write your organization's authorization policy | Allows the app to read and write your organization's authorization policy on behalf of the signed-in user.  For example, authorization policies can control some of the permissions that the out-of-the-box user role has by default. | Yes | 
| _Policy.ReadWrite.ConsentRequest_ | Read and write your organization's consent requests policy | Allows the app to read and write your organization's consent requests policy without a signed-in user. | Yes |
| _Policy.ReadWrite.CrossTenantAccess_ | Read and write your organization's cross-tenant access policy | Allows the app to read and write your organization's cross-tenant access policy without a signed-in user. | Yes |
| _Policy.ReadWrite.AuthenticationMethod_   | Read and write all authentication method policies    | Allows the app to read and write all authentication method policies for the tenant, without a signed-in user. | Yes |
| _Policy.ReadWrite.FeatureRollout_ | Read and write feature rollout policies | Allows the app to read and write feature rollout policies without a signed-in user. Includes abilities to assign and remove users and groups to rollout of a specific feature. | Yes |
| _Policy.ReadWrite.PermissionGrant_ | Manage consent and permission grant policies | Allows the app to manage policies related to consent and permission grants for applications, without a signed-in user. | Yes |
| _Policy.ReadWrite.TrustFramework_ | Read and write your organization's trust framework policies | Allows the app to read and write your organization's trust framework policies without a signed in user. | Yes |

### Example usage

The following usages are valid for both delegated and application permissions:

* _Policy.Read.All_: Read your organization's policies (`GET /policies`)
* _Policy.Read.All_: Read your organization's trust framework policies (`GET /beta/trustFramework/policies`)
* _Policy.Read.All_: Read your organization's feature rollout policies (`GET /beta/directory/featureRolloutPolicies`)
* _Policy.ReadWrite.AccessReview_: Read and write your organization's access review policies (`PATCH /beta/policies/accessReviewPolicy`)
* _Policy.ReadWrite.ApplicationConfiguration_: Read and write your organization's application configuration policies (`POST /beta/policies/tokenLifetimePolicies`)
* _Policy.ReadWrite.AuthenticationFlows_: Read and write your organization's authentication flows policy (`PATCH /beta/policies/authenticationFlowsPolicy`)
* _Policy.ReadWrite.AuthenticationMethod_: Use this permission to manage the settings of the authentication methods policy, including enabling and disabling authentication methods, allowing users and groups to use those methods, and configuring other settings related to the authentication methods that users may register and use in a tenant.
* _Policy.ReadWrite.ConditionalAccess_: Read and write your organization's conditional access policies (`POST /beta/identity/conditionalAccess/policies`)
* _Policy.ReadWrite.CrossTenantAccess_: Read and write your organization's cross tenant access policy (`PATCH /beta/policies/crossTenantAccessPolicy`)
* _Policy.ReadWrite.FeatureRollout_: Read and write your organization's feature rollout policies (`POST /beta/directory/featureRolloutPolicies`)
* _Policy.ReadWrite.TrustFramework_: Read and write your organization's trust framework policies (`POST /beta/trustFramework/policies`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Presence permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Presence.Read_ | Read user's presence information | Allows the app to read presence information on behalf of the signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | No |
| _Presence.Read.All_ |   Read presence information of all users in your organization | Allows the app to read presence information of all users in the directory on behalf of the signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | No |
| _Presence.ReadWrite_ | Read and write a user's presence information | Allows the app to read the presence information and write activity and availability on behalf of the signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | Yes |

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Presence.ReadWrite.All_ | Read and write presence information for all users | Allows the app to read all presence information and write activity and availability of all users in the directory without a signed-in user. Presence information includes activity, availability, status note, calendar out-of-office message, timezone and location. | Yes |

### Example usage

* _Presence.Read_: If you're signed in, retrieve your own presence information (`GET /me/presence`)
* _Presence.Read.All_: Retrieve the presence information of another user (`GET /users/{id}/presence`)
* _Presence.Read.All_: Retrieve the presence information of multiple users (`POST /communications/getPresencesByUserId`)
* _Presence.ReadWrite_:
  * If you're signed in, set the state of your presence session (`POST /me/presence/setPresence`)
  * If you're signed in, set your own preferred presence (`POST /me/presence/setUserPreferredPresence`)
* _Presence.ReadWrite.All_:
  * Set the state of a user's presence session as an application (`POST /users/{id}/presence/setPresence`)
  * Set the preferred presence of a user as an application (`POST /users/{id}/presence/setUserPreferredPresence`)

---

## Programs and program controls permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ProgramControl.Read.All_ |   Read all programs  | Allows the app to read programs on behalf of the signed-in user. | Yes | No |
| _ProgramControl.ReadWrite.All_ |   Manage all programs  | Allows the app to read and write programs on behalf of the signed-in user. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _ProgramControl.Read.All_ |   Read all programs | Allows the app to read programs without a signed-in user. | Yes |
| _ProgramControl.ReadWrite.All_ |   Manage all programs | Allows the app to read and write programs without a signed-in user. | Yes |

### Remarks

_ProgramControl.Read.All_ and _ProgramControl.ReadWrite.All_ are valid only for work or school accounts.

For an app with delegated permissions to read programs and program controls, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, Security Reader or User Administrator. For an app with delegated permissions to write programs and program controls, the signed-in user must be a member of one of the following administrator roles: Global Administrator or User Administrator.  For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

---
## Records management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_RecordsManagement.Read.All_ |Read data from Microsoft Purview records management. |Allows the application to read any data from the Microsoft Purview records management solution such as label names, event names and event type names on behalf of the signed-in user. |Yes | 
|_RecordsManagement.ReadWrite.All_ | Read and write any data from Microsoft Purview records management. |Allow the application to create, update and delete any data from the Microsoft Purview records management solution such as labels, events and event types on behalf of the signed-in user. |Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
|_RecordsManagement.Read.All_ |Read data from Microsoft Purview records management. |Allows the application to read any data from the Microsoft Purview records management solution such as label names, event names and event type names on behalf of the signed-in user. |Yes | 
|_RecordsManagement.ReadWrite.All_ | Read and write any data from Microsoft Purview records management. |Allow the application to create, update and delete any data from the Microsoft Purview records management solution such as labels, events and event types on behalf of the signed-in user. |Yes |

### Example usage

#### Delegated

* _RecordsManagement.Read.All_: Get the list of labels available to the user from Microsoft Purview Records maangement (`GET /security/labels/retentionLabels`)
* _RecordsManagement.ReadWrite.All_: Create a label in Microsoft Purview Records managment (`POST /security/labels/retentionLabels/`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Reports permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports on behalf of the signed-in user. Services that provide usage reports include Microsoft 365 and Azure Active Directory. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports without a signed-in user. Services that provide usage reports include Microsoft 365 and Azure Active Directory. | Yes |

### Remarks
- Reports permissions are only valid for work or school accounts.
- For delegated permissions to allow apps to read service usage reports on behalf of a user, the tenant administrator must have assigned the user an Azure AD limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md).

### Example usage

#### Application

* _Reports.Read.All_: Read usage detail report of email apps with period of 7 days (`GET /reports/EmailAppUsage(view='Detail',period='D7')/content`).
* _Reports.Read.All_: Read activity detail report of email with date of '2017-01-01' (`GET /reports/EmailActivity(view='Detail',data='2017-01-01')/content`).
* _Reports.Read.All_: Read Microsoft 365 activations detail report (`GET /reports/Office365Activations(view='Detail')/content`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Role management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _RoleAssignmentSchedule.Read.Directory_ | Read all active role assignments for your company's directory. | Allows the app to read the active role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. This includes reading directory role templates, and directory roles. | Yes | No |
| _RoleEligibilitySchedule.Read.Directory_ | Read all eligible role assignments for your company's directory. | Allows the app to read the eligible role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. This includes reading directory role templates, and directory roles. | Yes | No |
| _RoleManagement.Read.All_ | Read role management data for all RBAC providers. | Allows the app to read the role-based access control (RBAC) settings for all supported [RBAC providers](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true), on behalf of the signed-in user. This includes reading role definitions and role assignments. | Yes | No |
| _RoleManagement.Read.Directory_ | Read role management data for Azure AD. | Allows the app to read the role-based access control (RBAC) settings for your company's directory, on behalf of the signed-in user.  This includes reading directory role templates, directory roles and memberships. | Yes | No |
| _RoleManagementPolicy.Read.Directory_ | Read all policies for privileged role assignments for your company's directory. | Allows the app to read policies for privileged role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. | Yes | No |
| _RoleAssignmentSchedule.ReadWrite.Directory_ | Read, update, and delete all active role assignments for your company's directory. | Allows the app to read and manage the active role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. This includes managing active directory role membership, and reading directory role templates, directory roles and active memberships. | Yes | No |
| _RoleEligibilitySchedule.ReadWrite.Directory_ | Read, update, and delete  all eligible role assignments for your company's directory. | Allows the app to read and manage the eligible role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. This includes managing eligible directory role membership, and reading directory role templates, directory roles and eligible memberships. | Yes | No |
| _RoleManagement.ReadWrite.Directory_ | Read and write role management data for Azure AD. | Allows the app to read and manage the role-based access control (RBAC) settings for your company's directory, on behalf of the signed-in user. This includes instantiating directory roles and managing directory role membership, and reading directory role templates, directory roles and memberships. | Yes | No |
| _RoleManagementPolicy.ReadWrite.Directory_ | Read, update, and delete all policies for privileged role assignments for your company's directory. | Allows the app to read, update, and delete policies for privileged role-based access control (RBAC) assignments for your company's directory, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _RoleManagement.Read.All_ | Read role management data for all RBAC providers. | Allows the app to read the role-based access control (RBAC) settings for all supported [RBAC providers](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true), without a signed-in user. This includes reading role definitions and role assignments. | Yes |
| _RoleManagement.Read.Directory_ | Read role management data for Azure AD. | Allows the app to read the role-based access control (RBAC) settings for your company's directory, without a signed-in user.  This includes reading directory role templates, directory roles and memberships. | Yes |
| _RoleManagement.ReadWrite.Directory_ | Read and write role management data for Azure AD. | Allows the app to read and manage the role-based access control (RBAC) settings for your company's directory, without a signed-in user. This includes instantiating directory roles and managing directory role membership, and reading directory role templates, directory roles and memberships. | Yes |


### Remarks

> [!CAUTION]
> Permissions that allow granting authorization, such as _RoleManagement.ReadWrite.Directory_, allow an application to grant itself, other applications, or any user, additional privileges. Use caution when granting any of these permissions.

With the _RoleManagement.Read.Directory_ permission an application can read directoryRoles and directoryRoleTemplates. This includes reading membership information for directory roles.

With the _RoleManagement.ReadWrite.Directory_ permission an application can read and write directoryRoles (directoryRoleTemplates are readonly resources). This includes adding and removing members to and from directory roles.

Role management permissions are only valid for work or school accounts.

### Example usage

- _RoleManagement.Read.Directory_: Read the list of available role templates (`GET /directoryRoleTemplates`)
- _RoleManagement.Read.Directory_: Read the list of activated roles in your directory (`GET /directoryRoles`)
- _RoleManagement.Read.Directory_: Read the list of members for a role (`GET /directoryRoles/<id>/members`)
- _RoleManagement.Read.Directory_: Read the list of administrative unit-scoped members for a role (`GET /directoryRoles/<id>/scopedMembers`)
- _RoleManagement.ReadWrite.Directory_: Activate a directory role from a role template  (`POST /directoryRoles`)
- _RoleManagement.ReadWrite.Directory_: Add a member to a directory role (`POST /directoryRoles/<id>/members`)
- _RoleManagement.ReadWrite.Directory_: Add an administrative unit-scoped member to a directory role (`POST /directoryRoles/<id>/scopedMembers`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Schedule management permissions ([private preview](#permissions-availability-status))

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Schedule.ReadWrite.All_ (private preview)| Read and Write Shifts service (Teams) data | Allows an app to read and write schedule, schedule groups, shifts, and associated entities in shifts applications without a signed-in user.| Yes | No |
| _Schedule.Read.All_ (private preview)| Read Shifts service (Teams) data | Allows the app to read schedule, schedule groups, shifts, and associated entities in shifts applications without a signed-in user.  | Yes | No |

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:-----------------------|
| _Schedule.ReadWrite.All_ | Read and Write Shifts service (Teams) data | Allows an app to read and write schedule, schedule groups, shifts, and associated entities in shifts applications on behalf of the signed-in user.| No | No |
| _Schedule.Read.All_ | Read Shifts service (Teams) data | Allows the app to read schedule, schedule groups, shifts, and associated entities in shifts applications on behalf of the signed-in user.  | No | No |
| _WorkforceIntegration.ReadWrite.All_ (private preview)| Read and write workforce integrations | Allows the app to manage workforce integrations, to synchronize data from Microsoft Teams Shifts with an integrated system, on behalf of the signed-in user.  | Yes | No |
| _WorkforceIntegration.Read.All_ (private preview)| Read and write workforce integrations | Allows the app to manage workforce integrations, to synchronize data from Microsoft Teams Shifts with an integrated system, on behalf of the signed-in user.  | Yes | No |

## Search permissions

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ExternalConnection.Read.All_ | Read all external connections | Allows the app to read all external connections without a signed-in user. | Yes | No |
| _ExternalConnection.ReadWrite.All_ | Read and write all external connections | Allows the app to read and write all external connections without a signed-in user. | Yes | No |
| _ExternalConnection.ReadWrite.OwnedBy_ | Read and write external connections and connection settings | Allows the app to read and write external connections and their settings without a signed-in user. The app can only read and write external connections that it is authorized to, or it can create new external connections. | Yes | No |
| _ExternalItem.Read.All_ | Read all external items | Allows the app to read all external items without a signed-in user. | Yes | No |
| _ExternalItem.ReadWrite.All_ | Read and write all external items | Allows the app to read and write all external items without a signed-in user. | Yes | No |
| _ExternalItem.ReadWrite.OwnedBy_ | Read and write external items | Allows the app to read and write external items without a signed-in user. The app can only read external items of the connection that it is authorized to. | Yes | No |

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:-----------------------|
| _ExternalConnection.Read.All_ | Read all external connections | Allows the app to read all external connections on behalf of a signed-in user. | Yes | No |
| _ExternalConnection.ReadWrite.All_ | Read and write all external connections | Allows the app to read and write all external connections on behalf of a signed-in user. | Yes | No |
| _ExternalConnection.ReadWrite.OwnedBy_ | Read and write external connections | Allows the app to read and write external connections on behalf of a signed-in user. The app can only read and write external connections that it is authorized to, or it can create new external connections. | Yes | No |
| _ExternalItem.Read.All_ | Read external data | Allow the app to read external datasets and content on behalf of the signed-in user. | Yes | No |
| _ExternalItem.ReadWrite.All_ | Read and write all external items | Allows the app to read and write all external items on behalf of a signed-in user. | Yes | No |
| _ExternalItem.ReadWrite.OwnedBy_ | Read and write external items | Allows the app to read and write external items on behalf of a signed-in user. The app can only read external items of the connection that it is authorized to. | Yes | No |

### Remarks
Search permissions are only valid for work or school accounts.

This search permission is only applicable to ingested data from the indexing API.

Access to data via search requires the read permission to the item. Ex : _Files.Read.All_ to access files via search.

### Example usage

#### Delegated

* _ExternalItem.Read.All_ :  Access external data from the [search API](/graph/api/resources/search-api-overview) (`POST /search/query`).

---

## Search configuration permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:-----------------------|
| _SearchConfiguration.Read.All_ | Read your organization's search configuration | Allows the app to read search configuration, on behalf of the signed-in user. | Yes | No |
| _SearchConfiguration.ReadWrite.All_ | Read and write your organization's search configuration | Allows the app to read and write search configurations, on behalf of the signed-in user. | Yes | No |

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | 
|:----------------|:------------------|:-------------|:-----------------------|
| _SearchConfiguration.Read.All_ | Read your organization's search configuration | Allows the app to read search configurations, without a signed-in user. | Yes | 
| _SearchConfiguration.ReadWrite.All_ | Read and write your organization's search configuration | Allows the app to read and write search configurations, without a signed-in user. | Yes | 


### Remarks
Search configuration permissions are only valid for work or school accounts.

### Example usage

#### Delegated and Application

- _SearchConfiguration.Read.All_: Read the list of all bookmarks created for your tenant (`GET /beta/search/bookmarks`)
- _SearchConfiguration.ReadWrite.All_: Update or read all bookmarks created for your tenant  (`PATCH /beta/search/bookmarks/{id}`)

---

## Security permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. | Yes  | No |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. Also allows the app to update editable properties in security events on behalf of the signed-in user. | Yes  | No |
| _SecurityActions.Read.All_        |  Read your organization's security actions | Allows the app to read your organization’s security actions on behalf of the signed-in user. | Yes  | No |
| _SecurityActions.ReadWrite.All_   | Read and update your organization's security actions | Allows the app to read or update your organization’s security actions on behalf of the signed-in user.  | Yes  | No |
| _ThreatIndicators.ReadWrite.OwnedBy_   | Manage threat indicators this app creates or owns |Allows the app to create threat indicators, and fully manage those threat indicators (read, update and delete) on behalf of the signed-in user.  | Yes  | No |
| _ThreatIndicators.Read.All_   | Read your organization's threat indicators | Allows the app to read all the threat indicators for your organization, on behalf of the signed-in user.  | Yes  | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events. | Yes  |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events. Also allows the app to update editable properties in security events. | Yes  |
| _SecurityActions.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security actions. | Yes  |
| _SecurityActions.ReadWrite.All_   | Create and read your organization's security actions | Allows the app to read or create security actions, without a signed-in user. | Yes  |
| _ThreatIndicators.ReadWrite.OwnedBy_   | Manage threat indicators this app creates or owns | Allows the app to create threat indicators, and fully manage those threat indicators (read, update and delete), without a signed-in user.  It cannot update any threat indicators it does not own. | Yes  |
| _ThreatIndicators.Read.All_   | Manage threat indicators this app creates or owns | Allows the app to read all the threat indicators for your organization, without a signed-in user. | Yes  |

### Remarks

Security permissions are valid only on work or school accounts.

### Example usage

#### Delegated and Application

- _SecurityEvents.Read.All_: Read the list of all security alerts from all licensed security providers available to your tenant (`GET /beta/security/alerts`)
- _SecurityEvents.ReadWrite.All_: Update or read security alerts from all licensed security providers available to your tenant  (`PATCH /beta/security/alerts/{id}`)

---

## Service communications permissions

#### Delegated permissions

|   Permission    |  Display String  | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ServiceHealth.Read.All_ | Read service health | Allows the app to read your tenant's service health information on behalf of the signed-in user. Health information may include service issues or service health overviews. | Yes | Yes |
| _ServiceMessage.Read.All_ | Read service messages | Allows the app to read your tenant's service announcement messages on behalf of the signed-in user. Messages may include information about new or changed features. | Yes | Yes |
| _ServiceMessageViewpoint.Write_ | Update your user status on service announcement messages | Allows the app to update service announcement messages' user status on behalf of the signed-in user. The message status can be marked as read, archive, or favorite. | Yes | Yes |

#### Application permissions

|   Permission    |  Display String  | Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _ServiceHealth.Read.All_ | Read service health | Allows the app to read your tenant's service health information, without a signed-in user. Health information may include service issues or service health overviews. | Yes |
| _ServiceMessage.Read.All_ | Read service messages | Allows the app to read your tenant's service announcement messages, without a signed-in user. Messages may include information about new or changed features. | Yes |

---

## Short Notes permissions ([private preview](#permissions-availability-status))

#### Delegated permissions

|   Permission    |  Display String  | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ShortNotes.Read_ | Read short notes of the signed-in user | Allows the app to read all the short notes a sign-in user has access to. | No | Yes |
| _ShortNotes.ReadWrite_ | Read, create, edit, and delete short notes of the signed-in user | Allows the app to read, create, edit, and delete short notes of a signed-in user. | No | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _ShortNotes.Read.All_ | Read all users' short notes | Allows the app to read all the short notes without a signed-in user. | Yes |
| _ShortNotes.ReadWrite.All_ | Read, create, edit, and delete all users' short notes | Allows the app to read, create, edit, and delete all the short notes without a signed-in user. | Yes |

---

## Sites permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections on behalf of the signed-in user. | No  | No |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to edit or delete documents and list items in all site collections on behalf of the signed-in user. | No  | No |
| _Sites.Manage.All_      | Create, edit, and delete items and lists in all site collections | Allows the app to manage and create lists, documents, and list items in all site collections on behalf of the signed-in user. | No | No |
| _Sites.FullControl.All_ | Have full control of all site collections | Allows the app to have full control to SharePoint sites in all site collections on behalf of the signed-in user.  | Yes  | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections without a signed in user. | Yes |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to create, read, update, and delete documents and list items in all site collections without a signed in user. | Yes |
| _Sites.Manage.All_      | Create, edit, and delete items and lists in all site collections | Allows the app to manage and create lists, documents, and list items in all site collections without a signed-in user.  | Yes  |
| _Sites.FullControl.All_ | Have full control of all site collections | Allows the app to have full control to SharePoint sites in all site collections without a signed-in user.  | Yes  |
| _Sites.Selected_ | Access selected site collections | Allow the application to access a subset of site collections without a signed in user.  The specific site collections and the permissions granted will be configured in SharePoint Online. | Yes  |


### Remarks

Sites permissions are valid only on work or school accounts.
The _Sites.Selected_ application permission is available only in the Microsoft Graph API.

### Example usage

#### Delegated

* _Sites.Read.All_: Read the lists on the SharePoint root site (`GET /v1.0/sites/root/lists`)
* _Sites.ReadWrite.All_: Create new list items in a SharePoint list (`POST /v1.0/sites/root/lists/123/items`)
* _Sites.Manage.All_: Add a new list to a SharePoint site (`POST /v1.0/sites/root/lists`)
* _Sites.FullControl.All_: Complete access to SharePoint sites and lists.

---

## Subject rights request permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
SubjectRightsRequest.Read.All | Read subject rights requests | Allows the app to read subject rights requests on behalf of the signed-in user. | Yes | No |
SubjectRightsRequest.ReadWrite.All | Read and write subject rights requests | Allows the app to read and write subject rights requests on behalf of the signed-in user. | Yes | No |

#### Application permissions
None.

### Example usage
#### Delegated
- SubjectRightsRequest.Read.All_: Get the list of subject rights request available to the user (`GET /privacy/subjectrightsrequests`).
- _SubjectRightsRequest.ReadWrite.All_: Create a subject rights request (`POST /privacy/subjectrightsrequests`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Tasks permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Tasks.Read_ | Read user’s tasks and task lists (preview) | Allows the app to read the signed-in user’s tasks and task lists, including any shared with the user. Doesn't include permission to create, delete, or update anything. | No | Yes |
| _Tasks.Read.Shared_ | Read user and shared tasks (preview) | Allows the app to read tasks a user has permissions to access, including their own and shared tasks. | No | No |
| _Tasks.ReadWrite_ | Create, read, update, and delete user’s tasks and task lists (preview) | Allows the app to create, read, update, and delete the signed-in user's tasks and task lists, including any shared with the user. | No | Yes |
| _Tasks.ReadWrite.Shared_ | Read and write user and shared tasks (preview) | Allows the app to create, read, update, and delete tasks a user has permissions to, including their own and shared tasks. | No | No |

#### Application permissions

None.

### Remarks
_Tasks_ permissions are used to control access for To Do tasks and Outlook tasks(deprecated). Access for Microsoft Planner tasks is controlled by [_Group_ permissions](#group-permissions).

_Shared_ permissions are currently only supported for work or school accounts. Even with _Shared_ permissions, reads and writes may fail if the user who owns the shared content has not granted the accessing user permissions to modify content within the folder.

### Example usage
#### Delegated

* _Tasks.Read_: Get all tasks in a user's mailbox (`GET /me/outlook/tasks`).
* _Tasks.Read.Shared_: Access tasks in a folder shared to you by another user in your organization (`Get /users{id|userPrincipalName}/outlook/taskfolders/{id}/tasks`).
* _Tasks.ReadWrite_: Add an event to the user's default task folder (`POST /me/outlook/tasks`).
* _Tasks.Read_: Get all uncompleted tasks in a user's mailbox (`GET /users/{id | userPrincipalName}/outlook/tasks?$filter=status ne 'completed'`).
* _Tasks.ReadWrite_: Update a task in a user's mailbox (`PATCH /users/{id | userPrincipalName}/outlook/tasks/id`).
* _Tasks.ReadWrite.Shared_: Complete a task on behalf of another user (`POST /users/{id | userPrincipalName}/outlook/tasks/id/complete`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Taxonomy permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TermStore.Read.All_        | Read term store data | Allows app to read various terms, sets, and groups in the term store | Yes  | No |
| _TermStore.ReadWrite.All_   | Read and write all term store data | Allows the app to edit or delete terms, sets, and groups in the term store | Yes  | No |

### Remarks

Taxonomy permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _TermStore.Read.All_: Read the termstore for the tenant (`GET /termStore`)
* _TermStore.ReadWrite.All_: Create new terms in the termStore (`POST /termStore/sets/123/children`)

---

## Teams permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Read the names and descriptions of teams | Read the names and descriptions of teams, on behalf of the signed-in user.	| No | No |
| _Team.Create_  | Create teams | Create teams, on behalf of the signed-in user. | Yes | No |

#### Application permissions 

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Get a list of all teams | Get a list of all teams, without a signed-in user.	| Yes | No |
| _Team.Create_  | Create teams | Create teams, without a signed-in user. | Yes | No |
| _Teamwork.Migrate.All_|Manage migration to Microsoft Teams|Creating and managing resources for migration to Microsoft Teams|Yes|Yes|

## Team settings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamSettings.Read.All_ | Read teams' settings | Read this team's settings, on behalf of the signed-in user.	| Yes | No |
| _TeamSettings.ReadWrite.All_ | Read and change teams' settings | Read and change all teams' settings, on behalf of the signed-in user.	| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamSettings.Read.All_ | Read all teams' settings | Read this team's settings, without a signed-in user.	| Yes | No |
| _TeamSettings.ReadWrite.All_ | Read and change all teams' settings. | Read and change all teams' settings, without a signed-in user.	| Yes | No |

## Teams activity permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsActivity.Read_ ([private preview](#permissions-availability-status)) | Read user's teamwork activity feed | Allows the app to read the signed-in user's teamwork activity feed.	| No | No |
| _TeamsActivity.Send_ | Send a teamwork activity as the user | Allows the app to create new notifications in users' teamwork activity feeds on behalf of the signed in user. These notifications may not be discoverable or be held or governed by compliance policies. | No | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsActivity.Read.All_ ([private preview](#permissions-availability-status)) | Read all users' teamwork activity feed | Allows the app to read all users' teamwork activity feed, without a signed-in user. | Yes | No |
| _TeamsActivity.Send_ | Send a teamwork activity to any user | Allows the app to create new notifications in users' teamwork activity feeds without a signed in user. These notifications may not be discoverable or be held or governed by compliance policies. | Yes | No |

## Teams app permissions (deprecated)

>[!NOTE]
>These permissions are deprecated. Use the equivalent TeamsAppInstallation.\*.All permissions instead.

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsApp.Read.All_ (**Deprecated**)| Read all installed Teams apps | Allows the app to read the Teams apps that are installed for the signed-in user, and in all teams the user is a member of. Does not give the ability to read application-specific settings. | Yes | No |
| _TeamsApp.ReadWrite.All_ (**Deprecated**)| Manage all Teams apps | Allows the app to read, install, upgrade, and uninstall Teams apps, on behalf of the signed-in user and also for teams the user is a member of. Does not give the ability to read or write application-specific settings. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsApp.Read.All_ (**Deprecated**)| Read all users' installed Teams apps | Allows the app to read the Teams apps that are installed for any user, without a signed-in user. Does not give the ability to read application-specific settings. | Yes | No |
| _TeamsApp.ReadWrite.All_ (**Deprecated**)| Manage all users' Teams apps  | Allows the app to read, install, upgrade, and uninstall Teams apps for any user, without a signed-in user. Does not give the ability to read or write application-specific settings. 	| Yes | No |

## Teams app installation permissions

#### Delegated permissions
|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsAppInstallation.ReadForUser_  | Read user's installed Teams apps| Allows the app to read the Teams apps that are installed for the signed-in user. Does not give the ability to read application-specific settings.| No | No |
| _TeamsAppInstallation.ReadWriteForUser_ | Manage user's installed Teams apps| Allows the app to read, install, upgrade, and uninstall Teams apps installed for the signed in user. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteSelfForUser_ | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| No | No |
| _TeamsAppInstallation.ReadForTeam_ | Read installed Teams apps in teams| Allows the app to read the Teams apps that are installed in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteForTeam_ | Manage installed Teams apps in teams| Allows the app to read, install, upgrade, and uninstall Teams apps in teams the signed-in user can access. Does not give the ability to read application-specific settings.| Yes | No |
| _TeamsAppInstallation.ReadWriteSelfForTeam_ | Allow the app to manage itself in teams| Allows a Teams app to read, install, upgrade, and uninstall itself to teams the signed-in user can access.| Yes | No |

#### Application permissions
|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _TeamsAppInstallation.ReadForUser.All_ | Read installed Teams apps for all users| Allows the app to read the Teams apps that are installed for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteForUser.All_ | Manage Teams apps for all users| Allows the app to read, install, upgrade, and uninstall Teams apps for any user, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForUser.All_  | Allow the app to manage itself for all users| Allows a Teams app to read, install, upgrade, and uninstall itself to any user, without a signed-in user.| Yes |
| _TeamsAppInstallation.ReadForTeam.All_ | Read installed Teams apps for all teams| Allows the app to read the Teams apps that are installed in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteForTeam.All_ | Manage Teams apps for all teams| Allows the app to read, install, upgrade, and uninstall Teams apps in any team, without a signed-in user. Does not give the ability to read application-specific settings.| Yes |
| _TeamsAppInstallation.ReadWriteSelfForTeam.All_ | Allow the Teams app to manage itself for all teams| Allows a Teams app to read, install, upgrade, and uninstall itself in any team, without a signed-in user.| Yes |

## Teams device management permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamworkDevice.Read.All_ | Read Teams devices. | Allows the app to read the management data for Teams devices on behalf of the signed-in user.	| Yes | No |
| _TeamworkDevice.ReadWrite.All_ | Read and write Teams devices. | Allows the app to read and write the management data for Teams devices on behalf of the signed-in user. 	| Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamworkDevice.Read.All_ | Read Teams devices. | Allows the app to read the management data for Teams devices, without a signed-in user.	| Yes | No |
| _TeamworkDevice.ReadWrite.All_ | Read and write Teams devices. | Allows the app to read and write the management data for Teams devices, without a signed-in user. | Yes | No |

## Team member permissions 

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamMember.Read.All_ | Read the members of teams. | Read the members of teams, on behalf of the signed-in user. | Yes | No |
| _TeamMember.ReadWrite.All_ | Add and remove members from teams. | Add and remove members from teams, on behalf of the signed-in user. Also allows changing a member's role, for example from owner to non-owner. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamMember.Read.All_ | Read the members of all teams. | Read the members of all teams, without a signed-in user.	| Yes | No |
| _TeamMember.ReadWrite.All_ | Add and remove members from all teams. | Add and remove members from all teams, without a signed-in user. Also allows changing a team member's role, for example from owner to non-owner. | Yes | No |

## Team resource-specific consent permissions

#### Application permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamSettings.Read.Group_ | Read this team's settings. | Read this team's settings, without a signed-in user. |No | No |
| _TeamSettings.ReadWrite.Group_ | Update the settings for this team. | Read and write this team's settings, without a signed-in user. |No | No |
| _ChannelSettings.Read.Group_ | Read the names, descriptions, and settings of this team’s channels. | Read this team's channel names, channel descriptions, and channel settings, without a signed-in user. |No | No |
| _ChannelSettings.ReadWrite.Group_ | Update the names, descriptions, and settings of this team’s channels.| Update this team's channel names, channel descriptions, and channel settings, without a signed-in user. |No | No |
| _Channel.Create.Group_ | Create channels in this team. | Create channels in this team, without a signed-in user. |No | No |
| _Channel.Delete.Group_ | Delete this team's channels. | Delete this team's channels, without a signed-in user. |No | No |
| _ChannelMessage.Read.Group_ | Read the team’s channel messages. | Allows an app to read this team's channel's messages, without a signed-in user. |No | No |
| _TeamsAppInstallation.Read.Group_ | See which apps are installed in this team. | See which apps are installed in this team, without a signed-in user. |No | No |
| _TeamsTab.Read.Group_ | Read this team's tabs. | Read this team's tabs, without a signed-in user. |No | No |
| _TeamsTab.Create.Group_ | Create tabs in this team. | Create tabs in this team, without a signed-in user. |No | No |
| _TeamsTab.ReadWrite.Group_ | Update this team's tabs. | Update this team's tabs, without a signed-in user. |No | No |
| _TeamsTab.Delete.Group_ | Delete this team's tabs. | Delete this team's tabs, without a signed-in user. |No | No |
| _TeamMember.Read.Group_ | Read this team's members. | Read this team's members, without a signed-in user. |No | No |
| _Member.Read.Group_ | Read this group's members.| Read this group's members, without a signed-in user. |No | No |
| _Owner.Read.Group_| Read this group's owners.	| Read this group's owners, without a signed-in user. |No | No |
| _File.Read.Group_| Read this team's files and folders. | **Limited support** <br/> (Preview) Read this team's files and folders, without a signed-in users. | No | No |
| _TeamsActivity.Send.Group_| Send activity feed notifications to users in this team. | Allows the app to create new notifications in the teamwork activity feeds of the users in this team, without a signed-in user. | No | No |

## Teams settings permissions

### Delegated permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Read the names and descriptions of teams| Read the names and  descriptions of teams, on behalf of the signed-in user.|No| No |
| _TeamSettings.Read.All_ | Read teams' settings| Read all teams' settings, on behalf of the signed-in user.|Yes| No |
| _TeamSettings.ReadWrite.All_ | Read and change teams' settings.| Read and change all teams' settings, on behalf of the signed-in user.|Yes| No |

### Application permissions

| Permission | Display String | Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Team.ReadBasic.All_ | Get a list of all teams.| Get a list of all teams, without a signed-in user.|Yes| No |
| _TeamSettings.Read.All_ | Read all teams' settings| Read this team's settings, without a signed-in user.|Yes| No |
| _TeamSettings.ReadWrite.All_ | Read and change all teams' settings| Read and change all teams' settings, without a signed-in user.|Yes | No |

## Teams tab permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsTab.Read.All_ | Read tabs in Microsoft Teams. | Allows the app to read the Teams apps that are installed for the signed-in user, and in all teams the user is a member of. Does not give the ability to read application-specific settings.	| Yes | No |
| _TeamsTab.ReadWrite.All_ | Read and write tabs in Microsoft Teams. | Allows the app to read, install, upgrade, and uninstall Teams apps, on behalf of the signed-in user and also for teams the user is a member of. Does not give the ability to read or write application-specific settings. 	| Yes | No |
| _TeamsTab.Create_ | Create tabs in Microsoft Teams. | Allows the app to create tabs in any team in Microsoft Teams, on behalf of the signed-in user. This does not grant the ability to read, modify or delete tabs after they are created, or give access to the content inside the tabs. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamsTab.Read.All_ | Read tabs in Microsoft Teams. | Read the names and settings of tabs inside any team in Microsoft Teams, without a signed-in user. This does not give access to the content inside the tabs.	| Yes | No |
| _TeamsTab.ReadWrite.All_ | Read and write tabs in Microsoft Teams. | Read and write tabs in any team in Microsoft Teams, without a signed-in user. This does not give access to the content inside the tabs. | Yes | No |
| _TeamsTab.Create_ | Create tabs in Microsoft Teams. | Allows the app to create tabs in any team in Microsoft Teams, without a signed-in user. This does not grant the ability to read, modify or delete tabs after they are created, or give access to the content inside the tabs. | Yes | No |

## Teams tag permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamworkTag.ReadWrite_| Read and write tags in Microsoft Teams. | Allows the app to read and write tags in Teams, on behalf of the signed-in user.	| Yes | No |
| _TeamworkTag.Read_ | Read tags in Microsoft Teams. | Allows the app to read tags in Teams, on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _TeamworkTag.ReadWrite.All_| Read and write tags in Microsoft Teams. | Allows the app to read and write tags in Teams without a signed-in user.	| Yes | No |
| _TeamworkTag.Read.All_ | Read tags in Microsoft Teams. | Allows the app to read tags in Teams without a signed-in user | Yes | No |


## Terms of use permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Agreement.Read.All_ | Read all terms of use agreements | Allows the app to read terms of use agreements on behalf of the signed-in user. | Yes | No |
| _Agreement.ReadWrite.All_ | Read and write all terms of use agreements | Allows the app to read and write terms of use agreements on behalf of the signed-in user. | Yes | No |
| _AgreementAcceptance.Read_ | Read user terms of use acceptance statuses | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes | No |
| _AgreementAcceptance.Read.All_ | Read terms of use acceptance statuses that user can access | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes | No |

### Remarks

All the permissions above are valid only for work or school accounts.

For an app to read or write all agreements or agreement acceptances with delegated permissions, the signed-in user must be assigned the Global Administrator, Conditional Access Administrator or Security Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _Agreement.Read.All_: Read all terms of use agreements (`GET /beta/agreements`)
* _Agreement.ReadWrite.All_: Read and write all terms of use agreements (`POST /beta/agreements`)
* _AgreementAcceptance.Read_ Read user terms of use acceptance statuses (`GET /beta/me/agreementAcceptances`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Threat assessment permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _ThreatAssessment.ReadWrite.All_ | Read and write threat assessment requests | Allows an app to read your organization's threat assessment requests on behalf of the signed-in user. Also allows the app to create new requests to assess threats received by your organization on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _ThreatAssessment.Read.All_ | Read threat assessment requests | Allows an app to read your organization's threat assessment requests, without a signed-in user. | Yes |

### Remarks

Threat assessment permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _ThreatAssessment.ReadWrite.All_: Read and write threat assessment requests (`POST /informationProtection/threatAssessmentRequests`)

#### Application

* _ThreatAssessment.Read.All_: Read threat assessment requests (`GET /informationProtection/threatAssessmentRequests`)

---

## Universal Print permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _Printer.Create_ | Register printers | Allows the application to create (register) printers on behalf of the signed-in user. | Yes | No |
| _Printer.FullControl.All_ | Register, read, update, and unregister printers | Allows the application to create (register), read, update, and delete (unregister) printers on behalf of the signed-in user. | Yes | No |
| _Printer.Read.All_ | Read printers | Allows the application to read printers on behalf of the signed-in user. | Yes | No |
| _Printer.ReadWrite.All_ | Read and update printers | Allows the application to read and update printers on behalf of the signed-in user. Does not allow creating (registering) or deleting (unregistering) printers. | Yes | No |
| _PrinterShare.ReadBasic.All_ | Read basic information about printer shares | Allows the application to read basic information about printer shares on behalf of the signed-in user. Does not allow reading access control information. | No | No |
| _PrinterShare.Read.All_ | Read printer shares | Allows the application to read printer shares on behalf of the signed-in user. | No | No |
| _PrinterShare.ReadWrite.All_ | Read and write printer shares | Allows the application to read and update printer shares on behalf of the signed-in user. | Yes | No |
| _PrintJob.Create_ | Create print jobs | Allows the application to create print jobs on behalf of the signed-in user and upload document content to print jobs that the signed-in user created. | No | No |
| _PrintJob.Read_ | Read user's print jobs | Allows the application to read the metadata and document content of print jobs that the signed-in user created. | No | No |
| _PrintJob.Read.All_ | Read print jobs | Allows the application to read the metadata and document content of print jobs on behalf of the signed-in user. | Yes | No |
| _PrintJob.ReadBasic_ | Read basic information of user's print jobs | Allows the application to read the metadata of print jobs that the signed-in user created. Does not allow access to print job document content. | No | No |
| _PrintJob.ReadBasic.All_ | Read basic information of print jobs | Allows the application to read the metadata of print jobs on behalf of the signed-in user. Does not allow access to print job document content. | Yes | No |
| _PrintJob.ReadWrite_ | Read and write user's print jobs | Allows the application to read and update the metadata and document content of print jobs that the signed-in user created. | No | No |
| _PrintJob.ReadWrite.All_ | Read and write print jobs | Allows the application to read and update the metadata and document content of print jobs on behalf of the signed-in user. | Yes | No |
| _PrintJob.ReadWriteBasic_ | Read and write basic information of user's print jobs | Allows the application to read and update the metadata of print jobs that the signed-in user created. Does not allow access to print job document content. | No | No |
| _PrintJob.ReadWriteBasic.All_ | Read and write basic information of print jobs | Allows the application to read and update the metadata of print jobs on behalf of the signed-in user. Does not allow access to print job document content. | Yes | No |
| _PrintConnector.Read.All_ | Read connectors | Allows the application to read connectors on behalf of the signed-in user. | Yes | No |
| _PrintConnector.ReadWrite.All_ | Read and write print connectors | Allows the application to read and write print connectors on behalf of the signed-in user. | Yes | No |
| _PrintSettings.Read.All_ | Read tenant-wide print settings | Allows the application to read print settings on behalf of the signed-in user. | Yes | No |
| _PrintSettings.ReadWrite.All_ | Read and write tenant-wide print settings | Allows the application to read and update print settings on behalf of the signed-in user. | Yes | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Printer.Read.All_ | Read printers | Allows the application to read printers without a signed-in user. | Yes |
| _Printer.ReadWrite.All_ | Read and update printers | Allows the application to read and update printers without a signed-in user. Does not allow creating (registering) or deleting (unregistering) printers. | Yes |
| _PrintJob.Manage.All_ | Perform advanced operations on print jobs | Allows the application to perform advanced operations like redirecting a print job to another printer without a signed-in user. Also allows the application to read and update the metadata of print jobs. | Yes |
| _PrintJob.Read.All_ | Read print jobs | Allows the application to read the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadBasic.All_ | Read basic information for print jobs | Allows the application to read the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |
| _PrintJob.ReadWrite.All_ | Read and write print jobs | Allows the application to read and update the metadata and document content of print jobs without a signed-in user. | Yes |
| _PrintJob.ReadWriteBasic.All_ | Read and write basic information for print jobs | Allows the application to read and update the metadata of print jobs without a signed-in user. Does not allow access to print job document content. | Yes |
| _PrintTaskDefinition.ReadWrite.All_ | Read, write and update print task definitions | Allows the application to read and update print task definitions without a signed-in user. | Yes |

### Remarks

* To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription in addition to the  permissions listed earlier.

* Some permissions distinguish between print job metadata and payload. Metadata describes the configuration of a print job (its name and document configuration, such as whether it should be stapled or printed in color). Payload is the document data itself (the PDF or XPS file to be printed.)

* All PrintJob.* permissions also require at least Printer.Read.All (or a more prviliged permission) because print jobs are stored within printers.

### Example usage

#### Delegated

* _Printer.Read.All_: Get a list of all printers in the tenant (`GET /print/printers`)
* _PrintJob.Read.All_: Get a list of all print jobs queued to a Printer (`GET /print/printers/{id}/jobs`)
* _Printer.FullControl.All_: Delete (unregister) a printer (`DELETE /print/printers/{id}`)
* _PrintJob.ReadWriteBasic.All_: Update metadata (such as current status) of print jobs (`PATCH /print/printers/{id}/jobs/{id}`)
* _PrintJob.ReadWrite.All_: Create print jobs and upload document data to them (`POST /print/printers/{id}/jobs`)

#### Application

* _Printer.Read.All_: Get a list of all printers in the tenant (`GET /print/printers`)

---

## User permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required | Microsoft Account supported |
|:----------------|:------------------|:-------------|:-----------------------|:--------------|
| _User.Read_       |    Sign-in and read user profile | Allows users to sign-in to the app, and allows the app to read the profile of signed-in users. It also allows the app to read basic company information of signed-in users.| No | Yes |
| _User.ReadWrite_ |    Read and write access to user profile | Allows the app to read the signed-in user's full profile. It also allows the app to update the signed-in user's profile information on their behalf. | No | Yes |
| _User.ReadBasic.All_ |    Read all users' basic profiles | Allows the app to read a basic set of profile properties of other users in your organization on behalf of the signed-in user. This includes display name, first and last name, email address, open extensions and photo. Also allows the app to read the full profile of the signed-in user. | No | No |
| _User.Read.All_  |     Read all users' full profiles           | Allows the app to read the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. | Yes | No |
| _User.ReadWrite.All_ |     Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. Also allows the app to create and delete users as well as reset user passwords on behalf of the signed-in user. | Yes | No |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, on behalf of the signed-in user. | Yes | No |
| _User.Export.All_       |    Export users' data | Allows the app to export an organizational user's data, when performed by a Company Administrator.| Yes | No |
| _User.ManageIdentities.All_       |    Manage user identities | Allows an application to read, update and delete identities that are associated with a user's account, that the signed-in user has access to. This controls which identities your users can sign-in with. | Yes | No |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _User.Read.All_ |    Read all users' full profiles | Allows the app to read the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.| Yes |
| _User.ReadWrite.All_ |   Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.  Also allows the app to create and delete non-administrative users. Does not allow reset of user passwords. | Yes |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, without a signed-in user. | Yes |
| _User.Export.All_       |    Export users' data | Allows the app to export organizational users' data, without a signed-in user.| Yes |
| _User.ManageIdentities.All_       |    Manage all user identities | Allows an application to read, update and delete identities that are associated with a user's account, without a signed in user. This controls which identities users can sign-in with. |  Yes |

### Remarks

With the _User.Read_ permission, an app can also read the basic company information of the signed-in user for a work or school account through the [organization](/graph/api/resources/organization) resource. The following properties are available: id, displayName, and verifiedDomains.

For work or school accounts, the full profile includes all of the declared properties of the [User](/graph/api/resources/user) resource. On reads, only a limited number of properties are returned by default. To read properties that are not in the default set, use `$select`. The default properties are:

- displayName
- givenName
- jobTitle
- mail
- mobilePhone
- officeLocation
- preferredLanguage
- surname
- userPrincipalName

 _User.ReadWrite_ and _User.Readwrite.All_ delegated permissions allow the app to update the following profile properties for work or school accounts:

- aboutMe
- birthday
- hireDate
- interests
- mobilePhone
- mySite
- pastProjects
- photo
- preferredName
- responsibilities
- schools
- skills

With the _User.ReadWrite.All_ application permission, the app can update all of the declared properties of work or school accounts except for password.

With the _User.ReadWrite.All_ delegated or application permission, updating another user's **businessPhones**, **mobilePhone** or **otherMails** is only allowed on users who are non-administrators or assigned one of the following roles: Directory Readers, Guest Inviter, Message Center Reader and Reports Reader. For more details, see Helpdesk (Password) Administrator in [Azure AD available roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

To read or write direct reports (`directReports`) or the manager (`manager`) of a work or school account, the app must have either _User.Read.All_ (read only) or _User.ReadWrite.All_.

The _User.ReadBasic.All_ permission constrains app access to a limited set of properties known as the basic profile. This is because the full profile might contain sensitive directory information. The basic profile includes only the following properties:

- displayName
- givenName
- mail
- photo
- surname
- userPrincipalName

To read the group memberships of a user (`memberOf`), the app must have either [_Group.Read.All_](#group-permissions) or [_Group.ReadWrite.All_](#group-permissions). However, if the user also has membership in a [directoryRole](/graph/api/resources/directoryrole) or an [administrativeUnit](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true), the app will need effective permissions to read those resources too, or Microsoft Graph will return an error. This means the app will also need [Directory permissions](#directory-permissions), and, for delegated permissions, the signed-in user will also need sufficient privileges in the organization to access directory roles and administrative units.

With the _User.ManageIdentities.All_ delegated or application permission, it is possible to update the identities (`identities`) of a user. This includes federated (or social identities) or local identities with email or name-based sign-in names.

### Example usage

#### Delegated

* _User.Read_: Read the full profile for the signed-in user (`GET /me`).
* _User.ReadWrite_: Update the photo of the signed-in user (`PUT /me/photo/$value`).
* _User.ReadBasic.All_: Find all users whose name starts with "David" (`GET /users?$filter=startswith(displayName,'David')`).
* _User.Read.All_: Read a user's manager (`GET /users/{id | userPrincipalName}/manager`).

#### Application

* _User.Read.All_: Read all users and relationships through delta query (`GET /beta/users/delta?$select=displayName,givenName,surname`).
* _User.ReadWrite.All_: Update the photo for any user in the organization (`PUT /users/{id | userPrincipalName}/photo/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## User activity permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required | Microsoft Account supported |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|:-----------------|
| _UserActivity.ReadWrite.CreatedByApp_ |Read and write app activity to users' activity feed |Allows the app to read and report the signed-in user's activity in the app. |No | Yes |

#### Application permissions
None.

### Remarks
*UserActivity.ReadWrite.CreatedByApp* is valid for both Microsoft accounts and work or school accounts.

The *CreatedByApp* constraint associated with this permission indicates the service will apply implicit filtering to results based on the identity of the calling app, either the MSA app id or a set of app ids configured for a cross-platform application identity.

### Example usage

#### Delegated
* _UserActivity.ReadWrite.CreatedByApp_: Get a list of recent unique user activities based on associated history items published in the last day. (GET /me/activities/recent).
* _UserActivity.ReadWrite.CreatedByApp_: Publish or update a user activity which may be resumed by the user of the application. (PUT /me/activities/%2Farticle%3F12345).
*	_UserActivity.ReadWrite.CreatedByApp_: Publish or update a history item for a specified user activity in order to represent the period of user engagement. (PUT /me/activities/{id}/historyItems/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a user activity in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a history item in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}/historyItems/{id}).

---

## User authentication method permissions ([preview](#permissions-availability-status))

#### Delegated permissions

|Permission                              |Display String                        |Description        |Admin Consent Required | Microsoft Account supported |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|:----------------------------|
|_UserAuthenticationMethod.Read_ (preview)        |Read own authentication methods       |Allows the app to read the signed-in user's authentication methods, including phone numbers and Authenticator app settings. This does not allow the app to see secret information like the signed-in user's passwords, or to sign-in or otherwise use the signed-in user's authentication methods. |Yes|No|
|_UserAuthenticationMethod.Read.All_ (preview)    |Read users' authentication methods    |Allows the app to read authentication methods of all users in your organization that the signed-in user has access to. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|No|
|_UserAuthenticationMethod.ReadWrite_ (preview)   |Manage own authentication methods     |Allows the app to read and write the signed-in user's authentication methods, including phone numbers and Authenticator app settings. This does not allow the app to see secret information like the signed-in user's passwords, or to sign-in or otherwise use the signed-in user's authentication methods. |Yes|No|
|_UserAuthenticationMethod.ReadWrite.All_ (preview)|Manage users' authentication methods  |Allows the app to read and write authentication methods of all users in your organization that the signed-in user has access to. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|No|

#### Application permissions

|Permission                              |Display String                        |Description        |Admin Consent Required |
|:---------------------------------------|:-------------------------------------|:------------------|:----------------------|
|_UserAuthenticationMethod.Read.All_ (preview)   |Read users' authentication methods    |Allows the app to read authentication methods of all users in your organization, without a signed-in user. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|
|_UserAuthenticationMethod.ReadWrite.All_ (preview)|Manage users' authentication methods  |Allows the application to read and write authentication methods of all users in your organization, without a signed-in user. Authentication methods include things like a user’s phone numbers and Authenticator app settings. This does not allow the app to see secret information like passwords, or to sign-in or otherwise use the authentication methods. |Yes|

### Remarks

User authentication method permissions are used to manage authentication methods on users. With these permissions, a delegated user or application can register new authentication methods on a user, read the authentication methods the user already has registered, update those authentication methods, and remove them from the user.

With these permissions, all authentication methods can be read and managed on a user. This includes methods used for:

* Primary authentication (password)
* Second factor of multi-factor authentication/MFA (phone numbers)
* Self-Service Password Reset/SSPR (email address)

## Windows updates permissions

#### Delegated permissions

|Permission|Display String|Description|Admin Consent Required|Microsoft Account Supported|
|:---|:---|:---|:---|:---|
|_WindowsUpdates.ReadWrite.All_|Read and write all Windows update deployment settings|Allows the app to read and write all Windows update deployment settings for the organization on behalf of the signed-in user.|Yes|No|

#### Application permissions

|Permission|Display String|Description|Admin Consent Required|
|:---|:---|:---|:---|
|_WindowsUpdates.ReadWrite.All_|Read and write all Windows update deployment settings|Allows the app to read and write all Windows update deployment settings for the organization without a signed-in user.|Yes|

### Remarks

All the permissions above are valid only for work or school accounts.

For an app to read or write all Windows update deployment settings with delegated permissions, the signed-in user must be assigned the Global Administrator, Intune Administrator, or Windows Update Deployment Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated

* _WindowsUpdates.ReadWrite.All_: Create a deployment (`POST /beta/admin/windows/updates/deployments`).

#### Application

* _WindowsUpdates.ReadWrite.All_: Create a deployment (`POST /beta/admin/windows/updates/deployments`).

## Permission scenarios

This section shows some common scenarios that target [user](/graph/api/resources/user) and [group](/graph/api/resources/group) resources in an organization. The tables show the permissions that an app needs to be able to perform specific operations required by the scenario. Note that in some cases the ability of the app to perform specific operations will depend on whether a permission is an application or delegated permission. In the case of delegated permissions, the app's effective permissions will also depend on the privileges of the signed-in user within the organization. For more information, see  [Delegated permissions, Application permissions, and effective permissions](auth/auth-concepts.md#microsoft-graph-permissions).

### Access scenarios on the User resource

| **App tasks involving User**	 |  **Required permissions** | **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  Read all user's basic profiles |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc.)	 | _User.Read_ | Enable sign-in and read user profile|
| App wants to read complete user profile all users	 | _User.Read.All_ |  Read all user's full profiles   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendars.Read_ | Enable sign-in and read user profile, Read users' files,  Read user mail,  Read user calendars |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | Enable sign-in and read user profile, Read users' files,  Read items in all site collections |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | Read and write access to user profile |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | Read and write all user's full profiles |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendars.ReadWrite_  |  Read and write access to user profile,  Read and write access to user profile,  Read and write access to user mail, Have full access to user calendars |
| App wants to submit a data policy operation request to export a user's personal data | _User.Export.All_ | Export a user'a personal data. |


### Access scenarios on the Group resource

| **App tasks involving Group**	 |  **Required permissions** |  **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | Read all groups|
| App wants to read all content in all Microsoft 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | Read items in all site collections, Read all groups|
| App wants to read and write all content in all Microsoft 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  Read and write all groups, Edit or delete items in all site collections |
| App wants to discover (find) a Microsoft 365 group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | Read and write all groups|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | Read and write all groups|


## All permissions and IDs

| Permission                                              | Type        | ID                                   |
|---------------------------------------------------------|-------------|--------------------------------------|
| AccessReview.Read.All                                   | Delegated   | ebfcd32b-babb-40f4-a14b-42706e83bd28 |
| AccessReview.Read.All                                   | Application | d07a8cc0-3d51-4b77-b3b0-32704d1f69fa |
| AccessReview.ReadWrite.All                              | Delegated   | e4aa47b9-9a69-4109-82ed-36ec70d85ff1 |
| AccessReview.ReadWrite.All                              | Application | ef5f7d5c-338f-44b0-86c3-351f46c8bb5f |
| AccessReview.ReadWrite.Membership                       | Delegated   | 5af8c3f5-baca-439a-97b0-ea58a435e269 |
| AccessReview.ReadWrite.Membership                       | Application | 18228521-a591-40f1-b215-5fad4488c117 |
| AdministrativeUnit.Read.All                             | Delegated   | 3361d15d-be43-4de6-b441-3c746d05163d |
| AdministrativeUnit.Read.All                             | Application | 134fd756-38ce-4afd-ba33-e9623dbe66c2 |
| AdministrativeUnit.ReadWrite.All                        | Delegated   | 7b8a2d34-6b3f-4542-a343-54651608ad81 |
| AdministrativeUnit.ReadWrite.All                        | Application | 5eb59dd3-1da2-4329-8733-9dabdc435916 |
| Agreement.Read.All                                      | Delegated   | af2819c9-df71-4dd3-ade7-4d7c9dc653b7 |
| Agreement.Read.All                                      | Application | 2f3e6f8c-093b-4c57-a58b-ba5ce494a169 |
| Agreement.ReadWrite.All                                 | Delegated   | ef4b5d93-3104-4664-9053-a5c49ab44218 |
| Agreement.ReadWrite.All                                 | Application | c9090d00-6101-42f0-a729-c41074260d47 |
| AgreementAcceptance.Read                                | Delegated   | 0b7643bb-5336-476f-80b5-18fbfbc91806 |
| AgreementAcceptance.Read.All                            | Delegated   | a66a5341-e66e-4897-9d52-c2df58c2bfb9 |
| AgreementAcceptance.Read.All                            | Application | d8e4ec18-f6c0-4620-8122-c8b1f2bf400e |
| Analytics.Read                                          | Delegated   | e03cf23f-8056-446a-8994-7d93dfc8b50e |
| APIConnectors.Read.All                                  | Delegated   | 1b6ff35f-31df-4332-8571-d31ea5a4893f |
| APIConnectors.Read.All                                  | Application | b86848a7-d5b1-41eb-a9b4-54a4e6306e97 |
| APIConnectors.ReadWrite.All                             | Delegated   | c67b52c5-7c69-48b6-9d48-7b3af3ded914 |
| APIConnectors.ReadWrite.All                             | Application | 1dfe531a-24a6-4f1b-80f4-7a0dc5a0a171 |
| AppCatalog.Read.All                                     | Delegated   | 88e58d74-d3df-44f3-ad47-e89edf4472e4 |
| AppCatalog.Read.All                                     | Application | e12dae10-5a57-4817-b79d-dfbec5348930 |
| AppCatalog.ReadWrite.All                                | Delegated   | 1ca167d5-1655-44a1-8adf-1414072e1ef9 |
| AppCatalog.ReadWrite.All                                | Application | dc149144-f292-421e-b185-5953f2e98d7f |
| AppCatalog.Submit                                       | Delegated   | 3db89e36-7fa6-4012-b281-85f3d9d9fd2e |
| Application.Read.All                                    | Delegated   | c79f8feb-a9db-4090-85f9-90d820caa0eb |
| Application.Read.All                                    | Application | 9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30 |
| Application.ReadWrite.All                               | Delegated   | bdfbf15f-ee85-4955-8675-146e8e5296b5 |
| Application.ReadWrite.All                               | Application | 1bfefb4e-e0b5-418b-a88f-73c46d2cc8e9 |
| Application.ReadWrite.OwnedBy                           | Application | 18a4783c-866b-4cc7-a460-3d5e5662c884 |
| AppRoleAssignment.ReadWrite.All                         | Delegated   | 84bccea3-f856-4a8a-967b-dbe0a3d53a64 |
| AppRoleAssignment.ReadWrite.All                         | Application | 06b708a9-e830-4db3-a914-8e69da51d44f |
| Approval.Read.All                                       | Delegated   | 1196552e-b226-4363-b01e-b8901fe10a11 |
| Approval.ReadWrite.All                                  | Delegated   | 1d3d0bc7-4b3a-427a-ae9f-6de4e1edc95f |
| AuditLog.Read.All                                       | Delegated   | e4c9e354-4dc5-45b8-9e7c-e1393b0b1a20 |
| AuditLog.Read.All                                       | Application | b0afded3-3588-46d8-8b3d-9842eff778da |
| BitlockerKey.Read.All                                   | Delegated   | b27a61ec-b99c-4d6a-b126-c4375d08ae30 |
| BitlockerKey.Read.All                                   | Application | 57f1cf28-c0c4-4ec3-9a30-19a2eaaf2f6e |
| BitlockerKey.ReadBasic.All                              | Delegated   | 5a107bfc-4f00-4e1a-b67e-66451267bc68 |
| BitlockerKey.ReadBasic.All                              | Application | f690d423-6b29-4d04-98c6-694c42282419 |
| Bookings.Manage.All                                     | Delegated   | 7f36b48e-542f-4d3b-9bcb-8406f0ab9fdb |
| Bookings.Read.All                                       | Delegated   | 33b1df99-4b29-4548-9339-7a7b83eaeebc |
| Bookings.ReadWrite.All                                  | Delegated   | 948eb538-f19d-4ec5-9ccc-f059e1ea4c72 |
| BookingsAppointment.ReadWrite.All                       | Delegated   | 02a5a114-36a6-46ff-a102-954d89d9ab02 |
| Calendars.Read                                          | Delegated   | 465a38f9-76ea-45b9-9f34-9e8b0d4b0b42 |
| Calendars.Read                                          | Application | 798ee544-9d2d-430c-a058-570e29e34338 |
| Calendars.Read.Shared                                   | Delegated   | 2b9c4092-424d-4249-948d-b43879977640 |
| Calendars.ReadWrite                                     | Delegated   | 1ec239c2-d7c9-4623-a91a-a9775856bb36 |
| Calendars.ReadWrite                                     | Application | ef54d2bf-783f-4e0f-bca1-3210c0444d99 |
| Calendars.ReadWrite.Shared                              | Delegated   | 12466101-c9b8-439a-8589-dd09ee67e8e9 |
| CallRecord-PstnCalls.Read.All                           | Application | a2611786-80b3-417e-adaa-707d4261a5f0 |
| CallRecords.Read.All                                    | Application | 45bbb07e-7321-4fd7-a8f6-3ff27e6a81c8 |
| Calls.AccessMedia.All                                   | Application | a7a681dc-756e-4909-b988-f160edc6655f |
| Calls.Initiate.All                                      | Application | 284383ee-7f6e-4e40-a2a8-e85dcb029101 |
| Calls.InitiateGroupCall.All                             | Application | 4c277553-8a09-487b-8023-29ee378d8324 |
| Calls.JoinGroupCall.All                                 | Application | f6b49018-60ab-4f81-83bd-22caeabfed2d |
| Calls.JoinGroupCallAsGuest.All                          | Application | fd7ccf6b-3d28-418b-9701-cd10f5cd2fd4 |
| Channel.Create                                          | Delegated   | 101147cf-4178-4455-9d58-02b5c164e759 |
| Channel.Create                                          | Application | f3a65bd4-b703-46df-8f7e-0174fea562aa |
| Channel.Delete.All                                      | Delegated   | cc83893a-e232-4723-b5af-bd0b01bcfe65 |
| Channel.Delete.All                                      | Application | 6a118a39-1227-45d4-af0c-ea7b40d210bc |
| Channel.ReadBasic.All                                   | Delegated   | 9d8982ae-4365-4f57-95e9-d6032a4c0b87 |
| Channel.ReadBasic.All                                   | Application | 59a6b24b-4225-4393-8165-ebaec5f55d7a |
| ChannelMember.Read.All                                  | Delegated   | 2eadaff8-0bce-4198-a6b9-2cfc35a30075 |
| ChannelMember.Read.All                                  | Application | 3b55498e-47ec-484f-8136-9013221c06a9 |
| ChannelMember.ReadWrite.All                             | Delegated   | 0c3e411a-ce45-4cd1-8f30-f99a3efa7b11 |
| ChannelMember.ReadWrite.All                             | Application | 35930dcf-aceb-4bd1-b99a-8ffed403c974 |
| ChannelMessage.Edit                                     | Delegated   | 2b61aa8a-6d36-4b2f-ac7b-f29867937c53 |
| ChannelMessage.Read.All                                 | Delegated   | 767156cb-16ae-4d10-8f8b-41b657c8c8c8 |
| ChannelMessage.Read.All                                 | Application | 7b2449af-6ccd-4f4d-9f78-e550c193f0d1 |
| ChannelMessage.Send                                     | Delegated   | ebf0f66e-9fb1-49e4-a278-222f76911cf4 |
| ChannelMessage.UpdatePolicyViolation.All                | Application | 4d02b0cc-d90b-441f-8d82-4fb55c34d6bb |
| ChannelSettings.Read.All                                | Delegated   | 233e0cf1-dd62-48bc-b65b-b38fe87fcf8e |
| ChannelSettings.Read.All                                | Application | c97b873f-f59f-49aa-8a0e-52b32d762124 |
| ChannelSettings.ReadWrite.All                           | Delegated   | d649fb7c-72b4-4eec-b2b4-b15acf79e378 |
| ChannelSettings.ReadWrite.All                           | Application | 243cded2-bd16-4fd6-a953-ff8177894c3d |
| Chat.Create                                             | Delegated   | 38826093-1258-4dea-98f0-00003be2b8d0 |
| Chat.Create                                             | Application | d9c48af6-9ad9-47ad-82c3-63757137b9af |
| Chat.Read                                               | Delegated   | f501c180-9344-439a-bca0-6cbf209fd270 |
| Chat.Read.All                                           | Application | 6b7d71aa-70aa-4810-a8d9-5d9fb2830017 |
| Chat.ReadBasic                                          | Delegated   | 9547fcb5-d03f-419d-9948-5928bbf71b0f |
| Chat.ReadBasic.All                                      | Application | b2e060da-3baf-4687-9611-f4ebc0f0cbde |
| Chat.ReadWrite                                          | Delegated   | 9ff7295e-131b-4d94-90e1-69fde507ac11 |
| Chat.ReadWrite.All                                      | Application | 294ce7c9-31ba-490a-ad7d-97a7d075e4ed |
| Chat.UpdatePolicyViolation.All                          | Application | 7e847308-e030-4183-9899-5235d7270f58 |
| ChatMember.Read                                         | Delegated   | c5a9e2b1-faf6-41d4-8875-d381aa549b24 |
| ChatMember.Read.All                                     | Application | a3410be2-8e48-4f32-8454-c29a7465209d |
| ChatMember.ReadWrite                                    | Delegated   | dea13482-7ea6-488f-8b98-eb5bbecf033d |
| ChatMember.ReadWrite.All                                | Application | 57257249-34ce-4810-a8a2-a03adf0c5693 |
| ChatMessage.Read                                        | Delegated   | cdcdac3a-fd45-410d-83ef-554db620e5c7 |
| ChatMessage.Read.All                                    | Application | b9bb2381-47a4-46cd-aafb-00cb12f68504 |
| ChatMessage.Send                                        | Delegated   | 116b7235-7cc6-461e-b163-8e55691d839e |
| CloudPC.Read.All                                        | Delegated   | 5252ec4e-fd40-4d92-8c68-89dd1d3c6110 |
| CloudPC.Read.All                                        | Application | a9e09520-8ed4-4cde-838e-4fdea192c227 |
| CloudPC.ReadWrite.All                                   | Delegated   | 9d77138f-f0e2-47ba-ab33-cd246c8b79d1 |
| CloudPC.ReadWrite.All                                   | Application | 3b4349e1-8cf5-45a3-95b7-69d1751d3e6a |
| ConsentRequest.Read.All                                 | Delegated   | f3bfad56-966e-4590-a536-82ecf548ac1e |
| ConsentRequest.Read.All                                 | Application | 1260ad83-98fb-4785-abbb-d6cc1806fd41 |
| ConsentRequest.ReadWrite.All                            | Delegated   | 497d9dfa-3bd1-481a-baab-90895e54568c |
| ConsentRequest.ReadWrite.All                            | Application | 9f1b81a7-0223-4428-bfa4-0bcb5535f27d |
| Contacts.Read                                           | Delegated   | ff74d97f-43af-4b68-9f2a-b77ee6968c5d |
| Contacts.Read                                           | Application | 089fe4d0-434a-44c5-8827-41ba8a0b17f5 |
| Contacts.Read.Shared                                    | Delegated   | 242b9d9e-ed24-4d09-9a52-f43769beb9d4 |
| Contacts.ReadWrite                                      | Delegated   | d56682ec-c09e-4743-aaf4-1a3aac4caa21 |
| Contacts.ReadWrite                                      | Application | 6918b873-d17a-4dc1-b314-35f528134491 |
| Contacts.ReadWrite.Shared                               | Delegated   | afb6c84b-06be-49af-80bb-8f3f77004eab |
| CrossTenantInformation.ReadBasic.All                    | Delegated   | 81594d25-e88e-49cf-ac8c-fecbff49f994 |
| CrossTenantInformation.ReadBasic.All                    | Application | cac88765-0581-4025-9725-5ebc13f729ee |
| CrossTenantUserProfileSharing.Read                      | Delegated   | cb1ba48f-d22b-4325-a07f-74135a62ee41 |
| CrossTenantUserProfileSharing.Read.All                  | Delegated   | 759dcd16-3c90-463c-937e-abf89f991c18 |
| CrossTenantUserProfileSharing.Read.All                  | Application | 8b919d44-6192-4f3d-8a3b-f86f8069ae3c |
| CrossTenantUserProfileSharing.ReadWrite                 | Delegated   | eed0129d-dc60-4f30-8641-daf337a39ffd |
| CrossTenantUserProfileSharing.ReadWrite.All             | Delegated   | 64dfa325-cbf8-48e3-938d-51224a0cac01 |
| CrossTenantUserProfileSharing.ReadWrite.All             | Application | 306785c5-c09b-4ba0-a4ee-023f3da165cb |
| CustomSecAttributeAssignment.Read.All                   | Delegated   | b46ffa80-fe3d-4822-9a1a-c200932d54d0 |
| CustomSecAttributeAssignment.Read.All                   | Application | 3b37c5a4-1226-493d-bec3-5d6c6b866f3f |
| CustomSecAttributeAssignment.ReadWrite.All              | Delegated   | ca46335e-8453-47cd-a001-8459884efeae |
| CustomSecAttributeAssignment.ReadWrite.All              | Application | de89b5e4-5b8f-48eb-8925-29c2b33bd8bd |
| CustomSecAttributeDefinition.Read.All                   | Delegated   | ce026878-a0ff-4745-a728-d4fedd086c07 |
| CustomSecAttributeDefinition.Read.All                   | Application | b185aa14-d8d2-42c1-a685-0f5596613624 |
| CustomSecAttributeDefinition.ReadWrite.All              | Delegated   | 8b0160d4-5743-482b-bb27-efc0a485ca4a |
| CustomSecAttributeDefinition.ReadWrite.All              | Application | 12338004-21f4-4896-bf5e-b75dfaf1016d |
| DelegatedAdminRelationship.Read.All                     | Delegated   | 0c0064ea-477b-4130-82a5-4c2cc4ff68aa |
| DelegatedAdminRelationship.Read.All                     | Application | f6e9e124-4586-492f-adc0-c6f96e4823fd |
| DelegatedAdminRelationship.ReadWrite.All                | Delegated   | 885f682f-a990-4bad-a642-36736a74b0c7 |
| DelegatedAdminRelationship.ReadWrite.All                | Application | cc13eba4-8cd8-44c6-b4d4-f93237adce58 |
| DelegatedPermissionGrant.ReadWrite.All                  | Delegated   | 41ce6ca6-6826-4807-84f1-1c82854f7ee5 |
| DelegatedPermissionGrant.ReadWrite.All                  | Application | 8e8e4742-1d95-4f68-9d56-6ee75648c72a |
| Device.Command                                          | Delegated   | bac3b9c2-b516-4ef4-bd3b-c2ef73d8d804 |
| Device.Read                                             | Delegated   | 11d4cd79-5ba5-460f-803f-e22c8ab85ccd |
| Device.Read.All                                         | Delegated   | 951183d1-1a61-466f-a6d1-1fde911bfd95 |
| Device.Read.All                                         | Application | 7438b122-aefc-4978-80ed-43db9fcc7715 |
| Device.ReadWrite.All                                    | Application | 1138cb37-bd11-4084-a2b7-9f71582aeddb |
| DeviceManagementApps.Read.All                           | Delegated   | 4edf5f54-4666-44af-9de9-0144fb4b6e8c |
| DeviceManagementApps.Read.All                           | Application | 7a6ee1e7-141e-4cec-ae74-d9db155731ff |
| DeviceManagementApps.ReadWrite.All                      | Delegated   | 7b3f05d5-f68c-4b8d-8c59-a2ecd12f24af |
| DeviceManagementApps.ReadWrite.All                      | Application | 78145de6-330d-4800-a6ce-494ff2d33d07 |
| DeviceManagementConfiguration.Read.All                  | Delegated   | f1493658-876a-4c87-8fa7-edb559b3476a |
| DeviceManagementConfiguration.Read.All                  | Application | dc377aa6-52d8-4e23-b271-2a7ae04cedf3 |
| DeviceManagementConfiguration.ReadWrite.All             | Delegated   | 0883f392-0a7a-443d-8c76-16a6d39c7b63 |
| DeviceManagementConfiguration.ReadWrite.All             | Application | 9241abd9-d0e6-425a-bd4f-47ba86e767a4 |
| DeviceManagementManagedDevices.PrivilegedOperations.All | Delegated   | 3404d2bf-2b13-457e-a330-c24615765193 |
| DeviceManagementManagedDevices.PrivilegedOperations.All | Application | 5b07b0dd-2377-4e44-a38d-703f09a0dc3c |
| DeviceManagementManagedDevices.Read.All                 | Delegated   | 314874da-47d6-4978-88dc-cf0d37f0bb82 |
| DeviceManagementManagedDevices.Read.All                 | Application | 2f51be20-0bb4-4fed-bf7b-db946066c75e |
| DeviceManagementManagedDevices.ReadWrite.All            | Delegated   | 44642bfe-8385-4adc-8fc6-fe3cb2c375c3 |
| DeviceManagementManagedDevices.ReadWrite.All            | Application | 243333ab-4d21-40cb-a475-36241daa0842 |
| DeviceManagementRBAC.Read.All                           | Delegated   | 49f0cc30-024c-4dfd-ab3e-82e137ee5431 |
| DeviceManagementRBAC.Read.All                           | Application | 58ca0d9a-1575-47e1-a3cb-007ef2e4583b |
| DeviceManagementRBAC.ReadWrite.All                      | Delegated   | 0c5e8a55-87a6-4556-93ab-adc52c4d862d |
| DeviceManagementRBAC.ReadWrite.All                      | Application | e330c4f0-4170-414e-a55a-2f022ec2b57b |
| DeviceManagementServiceConfig.Read.All                  | Delegated   | 8696daa5-bce5-4b2e-83f9-51b6defc4e1e |
| DeviceManagementServiceConfig.Read.All                  | Application | 06a5fe6d-c49d-46a7-b082-56b1b14103c7 |
| DeviceManagementServiceConfig.ReadWrite.All             | Delegated   | 662ed50a-ac44-4eef-ad86-62eed9be2a29 |
| DeviceManagementServiceConfig.ReadWrite.All             | Application | 5ac13192-7ace-4fcf-b828-1a26f28068ee |
| Directory.AccessAsUser.All                              | Delegated   | 0e263e50-5827-48a4-b97c-d940288653c7 |
| Directory.Read.All                                      | Delegated   | 06da0dbc-49e2-44d2-8312-53f166ab848a |
| Directory.Read.All                                      | Application | 7ab1d382-f21e-4acd-a863-ba3e13f7da61 |
| Directory.ReadWrite.All                                 | Delegated   | c5366453-9fb0-48a5-a156-24f0c49a4b84 |
| Directory.ReadWrite.All                                 | Application | 19dbc75e-c2e2-444c-a770-ec69d8559fc7 |
| Directory.Write.Restricted                              | Delegated   | cba5390f-ed6a-4b7f-b657-0efc2210ed20 |
| Directory.Write.Restricted                              | Application | f20584af-9290-4153-9280-ff8bb2c0ea7f |
| DirectoryRecommendations.Read.All                       | Delegated   | 34d3bd24-f6a6-468c-b67c-0c365c1d6410 |
| DirectoryRecommendations.Read.All                       | Application | ae73097b-cb2a-4447-b064-5d80f6093921 |
| DirectoryRecommendations.ReadWrite.All                  | Delegated   | f37235e8-90a0-4189-93e2-e55b53867ccd |
| DirectoryRecommendations.ReadWrite.All                  | Application | 0e9eea12-4f01-45f6-9b8d-3ea4c8144158 |
| Domain.Read.All                                         | Delegated   | 2f9ee017-59c1-4f1d-9472-bd5529a7b311 |
| Domain.Read.All                                         | Application | dbb9058a-0e50-45d7-ae91-66909b5d4664 |
| Domain.ReadWrite.All                                    | Delegated   | 0b5d694c-a244-4bde-86e6-eb5cd07730fe |
| Domain.ReadWrite.All                                    | Application | 7e05723c-0bb0-42da-be95-ae9f08a6e53c |
| EAS.AccessAsUser.All                                    | Delegated   | ff91d191-45a0-43fd-b837-bd682c4a0b0f |
| eDiscovery.Read.All                                     | Delegated   | 99201db3-7652-4d5a-809a-bdb94f85fe3c |
| eDiscovery.Read.All                                     | Application | 50180013-6191-4d1e-a373-e590ff4e66af |
| eDiscovery.ReadWrite.All                                | Delegated   | acb8f680-0834-4146-b69e-4ab1b39745ad |
| eDiscovery.ReadWrite.All                                | Application | b2620db1-3bf7-4c5b-9cb9-576d29eac736 |
| EduAdministration.Read                                  | Delegated   | 8523895c-6081-45bf-8a5d-f062a2f12c9f |
| EduAdministration.Read.All                              | Application | 7c9db06a-ec2d-4e7b-a592-5a1e30992566 |
| EduAdministration.ReadWrite                             | Delegated   | 63589852-04e3-46b4-bae9-15d5b1050748 |
| EduAdministration.ReadWrite.All                         | Application | 9bc431c3-b8bc-4a8d-a219-40f10f92eff6 |
| EduAssignments.Read                                     | Delegated   | 091460c9-9c4a-49b2-81ef-1f3d852acce2 |
| EduAssignments.Read.All                                 | Application | 4c37e1b6-35a1-43bf-926a-6f30f2cdf585 |
| EduAssignments.ReadBasic                                | Delegated   | c0b0103b-c053-4b2e-9973-9f3a544ec9b8 |
| EduAssignments.ReadBasic.All                            | Application | 6e0a958b-b7fc-4348-b7c4-a6ab9fd3dd0e |
| EduAssignments.ReadWrite                                | Delegated   | 2f233e90-164b-4501-8bce-31af2559a2d3 |
| EduAssignments.ReadWrite.All                            | Application | 0d22204b-6cad-4dd0-8362-3e3f2ae699d9 |
| EduAssignments.ReadWriteBasic                           | Delegated   | 2ef770a1-622a-47c4-93ee-28d6adbed3a0 |
| EduAssignments.ReadWriteBasic.All                       | Application | f431cc63-a2de-48c4-8054-a34bc093af84 |
| EduRoster.Read                                          | Delegated   | a4389601-22d9-4096-ac18-36a927199112 |
| EduRoster.Read.All                                      | Application | e0ac9e1b-cb65-4fc5-87c5-1a8bc181f648 |
| EduRoster.ReadBasic                                     | Delegated   | 5d186531-d1bf-4f07-8cea-7c42119e1bd9 |
| EduRoster.ReadBasic.All                                 | Application | 0d412a8c-a06c-439f-b3ec-8abcf54d2f96 |
| EduRoster.ReadWrite                                     | Delegated   | 359e19a6-e3fa-4d7f-bcab-d28ec592b51e |
| EduRoster.ReadWrite.All                                 | Application | d1808e82-ce13-47af-ae0d-f9b254e6d58a |
| email                                                   | Delegated   | 64a6cdd6-aab1-4aaf-94b8-3cc8405e90d0 |
| EntitlementManagement.Read.All                          | Delegated   | 5449aa12-1393-4ea2-a7c7-d0e06c1a56b2 |
| EntitlementManagement.Read.All                          | Application | c74fd47d-ed3c-45c3-9a9e-b8676de685d2 |
| EntitlementManagement.ReadWrite.All                     | Delegated   | ae7a573d-81d7-432b-ad44-4ed5c9d89038 |
| EntitlementManagement.ReadWrite.All                     | Application | 9acd699f-1e81-4958-b001-93b1d2506e19 |
| EWS.AccessAsUser.All                                    | Delegated   | 9769c687-087d-48ac-9cb3-c37dde652038 |
| ExternalConnection.Read.All                             | Delegated   | a38267a5-26b6-4d76-9493-935b7599116b |
| ExternalConnection.Read.All                             | Application | 1914711b-a1cb-4793-b019-c2ce0ed21b8c |
| ExternalConnection.ReadWrite.All                        | Delegated   | bbbbd9b3-3566-4931-ac37-2b2180d9e334 |
| ExternalConnection.ReadWrite.All                        | Application | 34c37bc0-2b40-4d5e-85e1-2365cd256d79 |
| ExternalConnection.ReadWrite.OwnedBy                    | Delegated   | 4082ad95-c812-4f02-be92-780c4c4f1830 |
| ExternalConnection.ReadWrite.OwnedBy                    | Application | f431331c-49a6-499f-be1c-62af19c34a9d |
| ExternalItem.Read.All                                   | Delegated   | 922f9392-b1b7-483c-a4be-0089be7704fb |
| ExternalItem.Read.All                                   | Application | 7a7cffad-37d2-4f48-afa4-c6ab129adcc2 |
| ExternalItem.ReadWrite.All                              | Delegated   | b02c54f8-eb48-4c50-a9f0-a149e5a2012f |
| ExternalItem.ReadWrite.All                              | Application | 38c3d6ee-69ee-422f-b954-e17819665354 |
| ExternalItem.ReadWrite.OwnedBy                          | Delegated   | 4367b9d7-cee7-4995-853c-a0bdfe95c1f9 |
| ExternalItem.ReadWrite.OwnedBy                          | Application | 8116ae0f-55c2-452d-9944-d18420f5b2c8 |
| Family.Read                                             | Delegated   | 3a1e4806-a744-4c70-80fc-223bf8582c46 |
| Files.Read                                              | Delegated   | 10465720-29dd-4523-a11a-6a75c743c9d9 |
| Files.Read.All                                          | Delegated   | df85f4d6-205c-4ac5-a5ea-6bf408dba283 |
| Files.Read.All                                          | Application | 01d4889c-1287-42c6-ac1f-5d1e02578ef6 |
| Files.Read.Selected                                     | Delegated   | 5447fe39-cb82-4c1a-b977-520e67e724eb |
| Files.ReadWrite                                         | Delegated   | 5c28f0bf-8a70-41f1-8ab2-9032436ddb65 |
| Files.ReadWrite.All                                     | Delegated   | 863451e7-0667-486c-a5d6-d135439485f0 |
| Files.ReadWrite.All                                     | Application | 75359482-378d-4052-8f01-80520e7db3cd |
| Files.ReadWrite.AppFolder                               | Delegated   | 8019c312-3263-48e6-825e-2b833497195b |
| Files.ReadWrite.Selected                                | Delegated   | 17dde5bd-8c17-420f-a486-969730c1b827 |
| Financials.ReadWrite.All                                | Delegated   | f534bf13-55d4-45a9-8f3c-c92fe64d6131 |
| Group.Create                                            | Application | bf7b1a76-6e77-406b-b258-bf5c7720e98f |
| Group.Read.All                                          | Delegated   | 5f8c59db-677d-491f-a6b8-5f174b11ec1d |
| Group.Read.All                                          | Application | 5b567255-7703-4780-807c-7be8301ae99b |
| Group.ReadWrite.All                                     | Delegated   | 4e46008b-f24c-477d-8fff-7bb4ec7aafe0 |
| Group.ReadWrite.All                                     | Application | 62a82d76-70ea-41e2-9197-370581804d09 |
| GroupMember.Read.All                                    | Delegated   | bc024368-1153-4739-b217-4326f2e966d0 |
| GroupMember.Read.All                                    | Application | 98830695-27a2-44f7-8c18-0c3ebc9698f6 |
| GroupMember.ReadWrite.All                               | Delegated   | f81125ac-d3b7-4573-a3b2-7099cc39df9e |
| GroupMember.ReadWrite.All                               | Application | dbaae8cf-10b5-4b86-a4a1-f871c94c6695 |
| IdentityProvider.Read.All                               | Delegated   | 43781733-b5a7-4d1b-98f4-e8edff23e1a9 |
| IdentityProvider.Read.All                               | Application | e321f0bb-e7f7-481e-bb28-e3b0b32d4bd0 |
| IdentityProvider.ReadWrite.All                          | Delegated   | f13ce604-1677-429f-90bd-8a10b9f01325 |
| IdentityProvider.ReadWrite.All                          | Application | 90db2b9a-d928-4d33-a4dd-8442ae3d41e4 |
| IdentityRiskEvent.Read.All                              | Delegated   | 8f6a01e7-0391-4ee5-aa22-a3af122cef27 |
| IdentityRiskEvent.Read.All                              | Application | 6e472fd1-ad78-48da-a0f0-97ab2c6b769e |
| IdentityRiskEvent.ReadWrite.All                         | Delegated   | 9e4862a5-b68f-479e-848a-4e07e25c9916 |
| IdentityRiskEvent.ReadWrite.All                         | Application | db06fb33-1953-4b7b-a2ac-f1e2c854f7ae |
| IdentityRiskyServicePrincipal.Read.All                  | Delegated   | ea5c4ab0-5a73-4f35-8272-5d5337884e5d |
| IdentityRiskyServicePrincipal.Read.All                  | Application | 607c7344-0eed-41e5-823a-9695ebe1b7b0 |
| IdentityRiskyServicePrincipal.ReadWrite.All             | Delegated   | bb6f654c-d7fd-4ae3-85c3-fc380934f515 |
| IdentityRiskyServicePrincipal.ReadWrite.All             | Application | cb8d6980-6bcb-4507-afec-ed6de3a2d798 |
| IdentityRiskyUser.Read.All                              | Delegated   | d04bb851-cb7c-4146-97c7-ca3e71baf56c |
| IdentityRiskyUser.Read.All                              | Application | dc5007c0-2d7d-4c42-879c-2dab87571379 |
| IdentityRiskyUser.ReadWrite.All                         | Delegated   | e0a7cdbb-08b0-4697-8264-0069786e9674 |
| IdentityRiskyUser.ReadWrite.All                         | Application | 656f6061-f9fe-4807-9708-6a2e0934df76 |
| IdentityUserFlow.Read.All                               | Delegated   | 2903d63d-4611-4d43-99ce-a33f3f52e343 |
| IdentityUserFlow.Read.All                               | Application | 1b0c317f-dd31-4305-9932-259a8b6e8099 |
| IdentityUserFlow.ReadWrite.All                          | Delegated   | 281892cc-4dbf-4e3a-b6cc-b21029bb4e82 |
| IdentityUserFlow.ReadWrite.All                          | Application | 65319a09-a2be-469d-8782-f6b07debf789 |
| IMAP.AccessAsUser.All                                   | Delegated   | 652390e4-393a-48de-9484-05f9b1212954 |
| InformationProtectionContent.Sign.All                   | Application | cbe6c7e4-09aa-4b8d-b3c3-2dbb59af4b54 |
| InformationProtectionContent.Write.All                  | Application | 287bd98c-e865-4e8c-bade-1a85523195b9 |
| InformationProtectionPolicy.Read                        | Delegated   | 4ad84827-5578-4e18-ad7a-86530b12f884 |
| InformationProtectionPolicy.Read.All                    | Application | 19da66cb-0fb0-4390-b071-ebc76a349482 |
| LicenseAssignment.ReadWrite.All                         | Delegated   | f55016cc-149c-447e-8f21-7cf3ec1d6350 |
| LicenseAssignment.ReadWrite.All                         | Application | 5facf0c1-8979-4e95-abcf-ff3d079771c0 |
| Mail.Read                                               | Delegated   | 570282fd-fa5c-430d-a7fd-fc8dc98a9dca |
| Mail.Read                                               | Application | 810c84a8-4a9e-49e6-bf7d-12d183f40d01 |
| Mail.Read.Shared                                        | Delegated   | 7b9103a5-4610-446b-9670-80643382c1fa |
| Mail.ReadBasic                                          | Delegated   | a4b8392a-d8d1-4954-a029-8e668a39a170 |
| Mail.ReadBasic                                          | Application | 6be147d2-ea4f-4b5a-a3fa-3eab6f3c140a |
| Mail.ReadBasic.All                                      | Application | 693c5e45-0940-467d-9b8a-1022fb9d42ef |
| Mail.ReadWrite                                          | Delegated   | 024d486e-b451-40bb-833d-3e66d98c5c73 |
| Mail.ReadWrite                                          | Application | e2a3a72e-5f79-4c64-b1b1-878b674786c9 |
| Mail.ReadWrite.Shared                                   | Delegated   | 5df07973-7d5d-46ed-9847-1271055cbd51 |
| Mail.Send                                               | Delegated   | e383f46e-2787-4529-855e-0e479a3ffac0 |
| Mail.Send                                               | Application | b633e1c5-b582-4048-a93e-9f11b44c7e96 |
| Mail.Send.Shared                                        | Delegated   | a367ab51-6b49-43bf-a716-a1fb06d2a174 |
| MailboxSettings.Read                                    | Delegated   | 87f447af-9fa4-4c32-9dfa-4a57a73d18ce |
| MailboxSettings.Read                                    | Application | 40f97065-369a-49f4-947c-6a255697ae91 |
| MailboxSettings.ReadWrite                               | Delegated   | 818c620a-27a9-40bd-a6a5-d96f7d610b4b |
| MailboxSettings.ReadWrite                               | Application | 6931bccd-447a-43d1-b442-00a195474933 |
| ManagedTenants.Read.All                                 | Delegated   | dc34164e-6c4a-41a0-be89-3ae2fbad7cd3 |
| ManagedTenants.ReadWrite.All                            | Delegated   | b31fa710-c9b3-4d9e-8f5e-8036eecddab9 |
| Member.Read.Hidden                                      | Delegated   | f6a3db3e-f7e8-4ed2-a414-557c8c9830be |
| Member.Read.Hidden                                      | Application | 658aa5d8-239f-45c4-aa12-864f4fc7e490 |
| Notes.Create                                            | Delegated   | 9d822255-d64d-4b7a-afdb-833b9a97ed02 |
| Notes.Read                                              | Delegated   | 371361e4-b9e2-4a3f-8315-2a301a3b0a3d |
| Notes.Read.All                                          | Delegated   | dfabfca6-ee36-4db2-8208-7a28381419b3 |
| Notes.Read.All                                          | Application | 3aeca27b-ee3a-4c2b-8ded-80376e2134a4 |
| Notes.ReadWrite                                         | Delegated   | 615e26af-c38a-4150-ae3e-c3b0d4cb1d6a |
| Notes.ReadWrite.All                                     | Delegated   | 64ac0503-b4fa-45d9-b544-71a463f05da0 |
| Notes.ReadWrite.All                                     | Application | 0c458cef-11f3-48c2-a568-c66751c238c0 |
| Notes.ReadWrite.CreatedByApp                            | Delegated   | ed68249d-017c-4df5-9113-e684c7f8760b |
| Notifications.ReadWrite.CreatedByApp                    | Delegated   | 89497502-6e42-46a2-8cb2-427fd3df970a |
| offline_access                                          | Delegated   | 7427e0e9-2fba-42fe-b0c0-848c9e6a8182 |
| OnlineMeetingArtifact.Read.All                          | Delegated   | 110e5abb-a10c-4b59-8b55-9b4daa4ef743 |
| OnlineMeetingArtifact.Read.All                          | Application | df01ed3b-eb61-4eca-9965-6b3d789751b2 |
| OnlineMeetingRecording.Read.All                         | Delegated   | 190c2bb6-1fdd-4fec-9aa2-7d571b5e1fe3 |
| OnlineMeetingRecording.Read.All                         | Application | a4a08342-c95d-476b-b943-97e100569c8d |
| OnlineMeetings.Read                                     | Delegated   | 9be106e1-f4e3-4df5-bdff-e4bc531cbe43 |
| OnlineMeetings.Read.All                                 | Application | c1684f21-1984-47fa-9d61-2dc8c296bb70 |
| OnlineMeetings.ReadWrite                                | Delegated   | a65f2972-a4f8-4f5e-afd7-69ccb046d5dc |
| OnlineMeetings.ReadWrite.All                            | Application | b8bb2037-6e08-44ac-a4ea-4674e010e2a4 |
| OnlineMeetingTranscript.Read.All                        | Delegated   | 30b87d18-ebb1-45db-97f8-82ccb1f0190c |
| OnlineMeetingTranscript.Read.All                        | Application | a4a80d8d-d283-4bd8-8504-555ec3870630 |
| OnPremisesPublishingProfiles.ReadWrite.All              | Delegated   | 8c4d5184-71c2-4bf8-bb9d-bc3378c9ad42 |
| OnPremisesPublishingProfiles.ReadWrite.All              | Application | 0b57845e-aa49-4e6f-8109-ce654fffa618 |
| openid                                                  | Delegated   | 37f7f235-527c-4136-accd-4a02d197296e |
| Organization.Read.All                                   | Delegated   | 4908d5b9-3fb2-4b1e-9336-1888b7937185 |
| Organization.Read.All                                   | Application | 498476ce-e0fe-48b0-b801-37ba7e2685c6 |
| Organization.ReadWrite.All                              | Delegated   | 46ca0847-7e6b-426e-9775-ea810a948356 |
| Organization.ReadWrite.All                              | Application | 292d869f-3427-49a8-9dab-8c70152b74e9 |
| OrgContact.Read.All                                     | Delegated   | 08432d1b-5911-483c-86df-7980af5cdee0 |
| OrgContact.Read.All                                     | Application | e1a88a34-94c4-4418-be12-c87b00e26bea |
| People.Read                                             | Delegated   | ba47897c-39ec-4d83-8086-ee8256fa737d |
| People.Read.All                                         | Delegated   | b89f9189-71a5-4e70-b041-9887f0bc7e4a |
| People.Read.All                                         | Application | b528084d-ad10-4598-8b93-929746b4d7d6 |
| Place.Read.All                                          | Delegated   | cb8f45a0-5c2e-4ea1-b803-84b870a7d7ec |
| Place.Read.All                                          | Application | 913b9306-0ce1-42b8-9137-6a7df690a760 |
| Place.ReadWrite.All                                     | Delegated   | 4c06a06a-098a-4063-868e-5dfee3827264 |
| Policy.Read.All                                         | Delegated   | 572fea84-0151-49b2-9301-11cb16974376 |
| Policy.Read.All                                         | Application | 246dd0d5-5bd0-4def-940b-0421030a5b68 |
| Policy.Read.ConditionalAccess                           | Delegated   | 633e0fce-8c58-4cfb-9495-12bbd5a24f7c |
| Policy.Read.ConditionalAccess                           | Application | 37730810-e9ba-4e46-b07e-8ca78d182097 |
| Policy.Read.PermissionGrant                             | Delegated   | 414de6ea-2d92-462f-b120-6e2a809a6d01 |
| Policy.Read.PermissionGrant                             | Application | 9e640839-a198-48fb-8b9a-013fd6f6cbcd |
| Policy.ReadWrite.ApplicationConfiguration               | Delegated   | b27add92-efb2-4f16-84f5-8108ba77985c |
| Policy.ReadWrite.ApplicationConfiguration               | Application | be74164b-cff1-491c-8741-e671cb536e13 |
| Policy.ReadWrite.AuthenticationFlows                    | Delegated   | edb72de9-4252-4d03-a925-451deef99db7 |
| Policy.ReadWrite.AuthenticationFlows                    | Application | 25f85f3c-f66c-4205-8cd5-de92dd7f0cec |
| Policy.ReadWrite.AuthenticationMethod                   | Delegated   | 7e823077-d88e-468f-a337-e18f1f0e6c7c |
| Policy.ReadWrite.AuthenticationMethod                   | Application | 29c18626-4985-4dcd-85c0-193eef327366 |
| Policy.ReadWrite.Authorization                          | Delegated   | edd3c878-b384-41fd-95ad-e7407dd775be |
| Policy.ReadWrite.Authorization                          | Application | fb221be6-99f2-473f-bd32-01c6a0e9ca3b |
| Policy.ReadWrite.ConditionalAccess                      | Delegated   | ad902697-1014-4ef5-81ef-2b4301988e8c |
| Policy.ReadWrite.ConditionalAccess                      | Application | 01c0a623-fc9b-48e9-b794-0756f8e8f067 |
| Policy.ReadWrite.ConsentRequest                         | Delegated   | 4d135e65-66b8-41a8-9f8b-081452c91774 |
| Policy.ReadWrite.ConsentRequest                         | Application | 999f8c63-0a38-4f1b-91fd-ed1947bdd1a9 |
| Policy.ReadWrite.CrossTenantAccess                      | Delegated   | 014b43d0-6ed4-4fc6-84dc-4b6f7bae7d85 |
| Policy.ReadWrite.CrossTenantAccess                      | Application | 338163d7-f101-4c92-94ba-ca46fe52447c |
| Policy.ReadWrite.DeviceConfiguration                    | Delegated   | 40b534c3-9552-4550-901b-23879c90bcf9 |
| Policy.ReadWrite.FeatureRollout                         | Delegated   | 92a38652-f13b-4875-bc77-6e1dbb63e1b2 |
| Policy.ReadWrite.FeatureRollout                         | Application | 2044e4f1-e56c-435b-925c-44cd8f6ba89a |
| Policy.ReadWrite.MobilityManagement                     | Delegated   | a8ead177-1889-4546-9387-f25e658e2a79 |
| Policy.ReadWrite.PermissionGrant                        | Delegated   | 2672f8bb-fd5e-42e0-85e1-ec764dd2614e |
| Policy.ReadWrite.PermissionGrant                        | Application | a402ca1c-2696-4531-972d-6e5ee4aa11ea |
| Policy.ReadWrite.TrustFramework                         | Delegated   | cefba324-1a70-4a6e-9c1d-fd670b7ae392 |
| Policy.ReadWrite.TrustFramework                         | Application | 79a677f7-b79d-40d0-a36a-3e6f8688dd7a |
| POP.AccessAsUser.All                                    | Delegated   | d7b7f2d9-0f45-4ea1-9d42-e50810c06991 |
| Presence.Read                                           | Delegated   | 76bc735e-aecd-4a1d-8b4c-2b915deabb79 |
| Presence.Read.All                                       | Delegated   | 9c7a330d-35b3-4aa1-963d-cb2b9f927841 |
| Presence.ReadWrite                                      | Delegated   | 8d3c54a7-cf58-4773-bf81-c0cd6ad522bb |
| Presence.ReadWrite.All                                  | Application | 83cded22-8297-4ff6-a7fa-e97e9545a259 |
| PrintConnector.Read.All                                 | Delegated   | d69c2d6d-4f72-4f99-a6b9-663e32f8cf68 |
| PrintConnector.ReadWrite.All                            | Delegated   | 79ef9967-7d59-4213-9c64-4b10687637d8 |
| Printer.Create                                          | Delegated   | 90c30bed-6fd1-4279-bf39-714069619721 |
| Printer.FullControl.All                                 | Delegated   | 93dae4bd-43a1-4a23-9a1a-92957e1d9121 |
| Printer.Read.All                                        | Delegated   | 3a736c8a-018e-460a-b60c-863b2683e8bf |
| Printer.Read.All                                        | Application | 9709bb33-4549-49d4-8ed9-a8f65e45bb0f |
| Printer.ReadWrite.All                                   | Delegated   | 89f66824-725f-4b8f-928e-e1c5258dc565 |
| Printer.ReadWrite.All                                   | Application | f5b3f73d-6247-44df-a74c-866173fddab0 |
| PrinterShare.Read.All                                   | Delegated   | ed11134d-2f3f-440d-a2e1-411efada2502 |
| PrinterShare.ReadBasic.All                              | Delegated   | 5fa075e9-b951-4165-947b-c63396ff0a37 |
| PrinterShare.ReadWrite.All                              | Delegated   | 06ceea37-85e2-40d7-bec3-91337a46038f |
| PrintJob.Create                                         | Delegated   | 21f0d9c0-9f13-48b3-94e0-b6b231c7d320 |
| PrintJob.Manage.All                                     | Application | 58a52f47-9e36-4b17-9ebe-ce4ef7f3e6c8 |
| PrintJob.Read                                           | Delegated   | 248f5528-65c0-4c88-8326-876c7236df5e |
| PrintJob.Read.All                                       | Delegated   | afdd6933-a0d8-40f7-bd1a-b5d778e8624b |
| PrintJob.Read.All                                       | Application | ac6f956c-edea-44e4-bd06-64b1b4b9aec9 |
| PrintJob.ReadBasic                                      | Delegated   | 6a71a747-280f-4670-9ca0-a9cbf882b274 |
| PrintJob.ReadBasic.All                                  | Delegated   | 04ce8d60-72ce-4867-85cf-6d82f36922f3 |
| PrintJob.ReadBasic.All                                  | Application | fbf67eee-e074-4ef7-b965-ab5ce1c1f689 |
| PrintJob.ReadWrite                                      | Delegated   | b81dd597-8abb-4b3f-a07a-820b0316ed04 |
| PrintJob.ReadWrite.All                                  | Delegated   | 036b9544-e8c5-46ef-900a-0646cc42b271 |
| PrintJob.ReadWrite.All                                  | Application | 5114b07b-2898-4de7-a541-53b0004e2e13 |
| PrintJob.ReadWriteBasic                                 | Delegated   | 6f2d22f2-1cb6-412c-a17c-3336817eaa82 |
| PrintJob.ReadWriteBasic.All                             | Delegated   | 3a0db2f6-0d2a-4c19-971b-49109b19ad3d |
| PrintJob.ReadWriteBasic.All                             | Application | 57878358-37f4-4d3a-8c20-4816e0d457b1 |
| PrintSettings.Read.All                                  | Delegated   | 490f32fd-d90f-4dd7-a601-ff6cdc1a3f6c |
| PrintSettings.Read.All                                  | Application | b5991872-94cf-4652-9765-29535087c6d8 |
| PrintSettings.ReadWrite.All                             | Delegated   | 9ccc526a-c51c-4e5c-a1fd-74726ef50b8f |
| PrintTaskDefinition.ReadWrite.All                       | Application | 456b71a7-0ee0-4588-9842-c123fcc8f664 |
| PrivilegedAccess.Read.AzureAD                           | Delegated   | b3a539c9-59cb-4ad5-825a-041ddbdc2bdb |
| PrivilegedAccess.Read.AzureAD                           | Application | 4cdc2547-9148-4295-8d11-be0db1391d6b |
| PrivilegedAccess.Read.AzureADGroup                      | Delegated   | d329c81c-20ad-4772-abf9-3f6fdb7e5988 |
| PrivilegedAccess.Read.AzureADGroup                      | Application | 01e37dc9-c035-40bd-b438-b2879c4870a6 |
| PrivilegedAccess.Read.AzureResources                    | Delegated   | 1d89d70c-dcac-4248-b214-903c457af83a |
| PrivilegedAccess.Read.AzureResources                    | Application | 5df6fe86-1be0-44eb-b916-7bd443a71236 |
| PrivilegedAccess.ReadWrite.AzureAD                      | Delegated   | 3c3c74f5-cdaa-4a97-b7e0-4e788bfcfb37 |
| PrivilegedAccess.ReadWrite.AzureAD                      | Application | 854d9ab1-6657-4ec8-be45-823027bcd009 |
| PrivilegedAccess.ReadWrite.AzureADGroup                 | Delegated   | 32531c59-1f32-461f-b8df-6f8a3b89f73b |
| PrivilegedAccess.ReadWrite.AzureADGroup                 | Application | 2f6817f8-7b12-4f0f-bc18-eeaf60705a9e |
| PrivilegedAccess.ReadWrite.AzureResources               | Delegated   | a84a9652-ffd3-496e-a991-22ba5529156a |
| PrivilegedAccess.ReadWrite.AzureResources               | Application | 6f9d5abc-2db6-400b-a267-7de22a40fb87 |
| profile                                                 | Delegated   | 14dad69e-099b-42c9-810b-d002981feec1 |
| ProgramControl.Read.All                                 | Delegated   | c492a2e1-2f8f-4caa-b076-99bbf6e40fe4 |
| ProgramControl.Read.All                                 | Application | eedb7fdd-7539-4345-a38b-4839e4a84cbd |
| ProgramControl.ReadWrite.All                            | Delegated   | 50fd364f-9d93-4ae1-b170-300e87cccf84 |
| ProgramControl.ReadWrite.All                            | Application | 60a901ed-09f7-4aa5-a16e-7dd3d6f9de36 |
| RecordsManagement.Read.All                              | Delegated   | 07f995eb-fc67-4522-ad66-2b8ca8ea3efd |
| RecordsManagement.Read.All                              | Application | ac3a2b8e-03a3-4da9-9ce0-cbe28bf1accd |
| RecordsManagement.ReadWrite.All                         | Delegated   | f2833d75-a4e6-40ab-86d4-6dfe73c97605 |
| RecordsManagement.ReadWrite.All                         | Application | eb158f57-df43-4751-8b21-b8932adb3d34 |
| Reports.Read.All                                        | Delegated   | 02e97553-ed7b-43d0-ab3c-f8bace0d040c |
| Reports.Read.All                                        | Application | 230c1aed-a721-4c5d-9cb4-a90514e508ef |
| RoleAssignmentSchedule.Read.Directory                   | Delegated   | 344a729c-0285-42c6-9014-f12b9b8d6129 |
| RoleAssignmentSchedule.ReadWrite.Directory              | Delegated   | 8c026be3-8e26-4774-9372-8d5d6f21daff |
| RoleEligibilitySchedule.Read.Directory                  | Delegated   | eb0788c2-6d4e-4658-8c9e-c0fb8053f03d |
| RoleEligibilitySchedule.ReadWrite.Directory             | Delegated   | 62ade113-f8e0-4bf9-a6ba-5acb31db32fd |
| RoleManagement.Read.All                                 | Delegated   | 48fec646-b2ba-4019-8681-8eb31435aded |
| RoleManagement.Read.All                                 | Application | c7fbd983-d9aa-4fa7-84b8-17382c103bc4 |
| RoleManagement.Read.CloudPC                             | Delegated   | 9619b88a-8a25-48a7-9571-d23be0337a79 |
| RoleManagement.Read.CloudPC                             | Application | 031a549a-bb80-49b6-8032-2068448c6a3c |
| RoleManagement.Read.Directory                           | Delegated   | 741c54c3-0c1e-44a1-818b-3f97ab4e8c83 |
| RoleManagement.Read.Directory                           | Application | 483bed4a-2ad3-4361-a73b-c83ccdbdc53c |
| RoleManagement.ReadWrite.CloudPC                        | Delegated   | 501d06f8-07b8-4f18-b5c6-c191a4af7a82 |
| RoleManagement.ReadWrite.CloudPC                        | Application | 274d0592-d1b6-44bd-af1d-26d259bcb43a |
| RoleManagement.ReadWrite.Directory                      | Delegated   | d01b97e9-cbc0-49fe-810a-750afd5527a3 |
| RoleManagement.ReadWrite.Directory                      | Application | 9e3f62cf-ca93-4989-b6ce-bf83c28f9fe8 |
| RoleManagementPolicy.Read.Directory                     | Delegated   | 3de2cdbe-0ff5-47d5-bdee-7f45b4749ead |
| RoleManagementPolicy.ReadWrite.Directory                | Delegated   | 1ff1be21-34eb-448c-9ac9-ce1f506b2a68 |
| Schedule.Read.All                                       | Delegated   | fccf6dd8-5706-49fa-811f-69e2e1b585d0 |
| Schedule.Read.All                                       | Application | 7b2ebf90-d836-437f-b90d-7b62722c4456 |
| Schedule.ReadWrite.All                                  | Delegated   | 63f27281-c9d9-4f29-94dd-6942f7f1feb0 |
| Schedule.ReadWrite.All                                  | Application | b7760610-0545-4e8a-9ec3-cce9e63db01c |
| SearchConfiguration.Read.All                            | Delegated   | 7d307522-aa38-4cd0-bd60-90c6f0ac50bd |
| SearchConfiguration.Read.All                            | Application | ada977a5-b8b1-493b-9a91-66c206d76ecf |
| SearchConfiguration.ReadWrite.All                       | Delegated   | b1a7d408-cab0-47d2-a2a5-a74a3733600d |
| SearchConfiguration.ReadWrite.All                       | Application | 0e778b85-fefa-466d-9eec-750569d92122 |
| SecurityActions.Read.All                                | Delegated   | 1638cddf-07a4-4de2-8645-69c96cacad73 |
| SecurityActions.Read.All                                | Application | 5e0edab9-c148-49d0-b423-ac253e121825 |
| SecurityActions.ReadWrite.All                           | Delegated   | dc38509c-b87d-4da0-bd92-6bec988bac4a |
| SecurityActions.ReadWrite.All                           | Application | f2bf083f-0179-402a-bedb-b2784de8a49b |
| SecurityAlert.Read.All                                  | Delegated   | bc257fb8-46b4-4b15-8713-01e91bfbe4ea |
| SecurityAlert.Read.All                                  | Application | 472e4a4d-bb4a-4026-98d1-0b0d74cb74a5 |
| SecurityAlert.ReadWrite.All                             | Delegated   | 471f2a7f-2a42-4d45-a2bf-594d0838070d |
| SecurityAlert.ReadWrite.All                             | Application | ed4fca05-be46-441f-9803-1873825f8fdb |
| SecurityEvents.Read.All                                 | Delegated   | 64733abd-851e-478a-bffb-e47a14b18235 |
| SecurityEvents.Read.All                                 | Application | bf394140-e372-4bf9-a898-299cfc7564e5 |
| SecurityEvents.ReadWrite.All                            | Delegated   | 6aedf524-7e1c-45a7-bd76-ded8cab8d0fc |
| SecurityEvents.ReadWrite.All                            | Application | d903a879-88e0-4c09-b0c9-82f6a1333f84 |
| SecurityIncident.Read.All                               | Delegated   | b9abcc4f-94fc-4457-9141-d20ce80ec952 |
| SecurityIncident.Read.All                               | Application | 45cc0394-e837-488b-a098-1918f48d186c |
| SecurityIncident.ReadWrite.All                          | Delegated   | 128ca929-1a19-45e6-a3b8-435ec44a36ba |
| SecurityIncident.ReadWrite.All                          | Application | 34bf0e97-1971-4929-b999-9e2442d941d7 |
| ServiceHealth.Read.All                                  | Delegated   | 55896846-df78-47a7-aa94-8d3d4442ca7f |
| ServiceHealth.Read.All                                  | Application | 79c261e0-fe76-4144-aad5-bdc68fbe4037 |
| ServiceMessage.Read.All                                 | Delegated   | eda39fa6-f8cf-4c3c-a909-432c683e4c9b |
| ServiceMessage.Read.All                                 | Application | 1b620472-6534-4fe6-9df2-4680e8aa28ec |
| ServiceMessageViewpoint.Write                           | Delegated   | 636e1b0b-1cc2-4b1c-9aa9-4eeed9b9761b |
| ServicePrincipalEndpoint.Read.All                       | Delegated   | 9f9ce928-e038-4e3b-8faf-7b59049a8ddc |
| ServicePrincipalEndpoint.Read.All                       | Application | 5256681e-b7f6-40c0-8447-2d9db68797a0 |
| ServicePrincipalEndpoint.ReadWrite.All                  | Delegated   | 7297d82c-9546-4aed-91df-3d4f0a9b3ff0 |
| ServicePrincipalEndpoint.ReadWrite.All                  | Application | 89c8469c-83ad-45f7-8ff2-6e3d4285709e |
| SharePointTenantSettings.Read.All                       | Delegated   | 2ef70e10-5bfd-4ede-a5f6-67720500b258 |
| SharePointTenantSettings.Read.All                       | Application | 83d4163d-a2d8-4d3b-9695-4ae3ca98f888 |
| SharePointTenantSettings.ReadWrite.All                  | Delegated   | aa07f155-3612-49b8-a147-6c590df35536 |
| SharePointTenantSettings.ReadWrite.All                  | Application | 19b94e34-907c-4f43-bde9-38b1909ed408 |
| ShortNotes.Read                                         | Delegated   | 50f66e47-eb56-45b7-aaa2-75057d9afe08 |
| ShortNotes.Read.All                                     | Application | 0c7d31ec-31ca-4f58-b6ec-9950b6b0de69 |
| ShortNotes.ReadWrite                                    | Delegated   | 328438b7-4c01-4c07-a840-e625a749bb89 |
| ShortNotes.ReadWrite.All                                | Application | 842c284c-763d-4a97-838d-79787d129bab |
| Sites.FullControl.All                                   | Delegated   | 5a54b8b3-347c-476d-8f8e-42d5c7424d29 |
| Sites.FullControl.All                                   | Application | a82116e5-55eb-4c41-a434-62fe8a61c773 |
| Sites.Manage.All                                        | Delegated   | 65e50fdc-43b7-4915-933e-e8138f11f40a |
| Sites.Manage.All                                        | Application | 0c0bf378-bf22-4481-8f81-9e89a9b4960a |
| Sites.Read.All                                          | Delegated   | 205e70e5-aba6-4c52-a976-6d2d46c48043 |
| Sites.Read.All                                          | Application | 332a536c-c7ef-4017-ab91-336970924f0d |
| Sites.ReadWrite.All                                     | Delegated   | 89fe6a52-be36-487e-b7d8-d061c450a026 |
| Sites.ReadWrite.All                                     | Application | 9492366f-7969-46a4-8d15-ed1a20078fff |
| Sites.Selected                                          | Application | 883ea226-0bf2-4a8f-9f9d-92c9162a727d |
| SMTP.Send                                               | Delegated   | 258f6531-6087-4cc4-bb90-092c5fb3ed3f |
| SubjectRightsRequest.Read.All                           | Delegated   | 9c3af74c-fd0f-4db4-b17a-71939e2a9d77 |
| SubjectRightsRequest.ReadWrite.All                      | Delegated   | 2b8fcc74-bce1-4ae3-a0e8-60c53739299d |
| Subscription.Read.All                                   | Delegated   | 5f88184c-80bb-4d52-9ff2-757288b2e9b7 |
| Tasks.Read                                              | Delegated   | f45671fb-e0fe-4b4b-be20-3d3ce43f1bcb |
| Tasks.Read.All                                          | Application | f10e1f91-74ed-437f-a6fd-d6ae88e26c1f |
| Tasks.Read.Shared                                       | Delegated   | 88d21fd4-8e5a-4c32-b5e2-4a1c95f34f72 |
| Tasks.ReadWrite                                         | Delegated   | 2219042f-cab5-40cc-b0d2-16b1540b4c5f |
| Tasks.ReadWrite.All                                     | Application | 44e666d1-d276-445b-a5fc-8815eeb81d55 |
| Tasks.ReadWrite.Shared                                  | Delegated   | c5ddf11b-c114-4886-8558-8a4e557cd52b |
| Team.Create                                             | Delegated   | 7825d5d6-6049-4ce7-bdf6-3b8d53f4bcd0 |
| Team.Create                                             | Application | 23fc2474-f741-46ce-8465-674744c5c361 |
| Team.ReadBasic.All                                      | Delegated   | 485be79e-c497-4b35-9400-0e3fa7f2a5d4 |
| Team.ReadBasic.All                                      | Application | 2280dda6-0bfd-44ee-a2f4-cb867cfc4c1e |
| TeamMember.Read.All                                     | Delegated   | 2497278c-d82d-46a2-b1ce-39d4cdde5570 |
| TeamMember.Read.All                                     | Application | 660b7406-55f1-41ca-a0ed-0b035e182f3e |
| TeamMember.ReadWrite.All                                | Delegated   | 4a06efd2-f825-4e34-813e-82a57b03d1ee |
| TeamMember.ReadWrite.All                                | Application | 0121dc95-1b9f-4aed-8bac-58c5ac466691 |
| TeamMember.ReadWriteNonOwnerRole.All                    | Delegated   | 2104a4db-3a2f-4ea0-9dba-143d457dc666 |
| TeamMember.ReadWriteNonOwnerRole.All                    | Application | 4437522e-9a86-4a41-a7da-e380edd4a97d |
| TeamsActivity.Read                                      | Delegated   | 0e755559-83fb-4b44-91d0-4cc721b9323e |
| TeamsActivity.Read.All                                  | Application | 70dec828-f620-4914-aa83-a29117306807 |
| TeamsActivity.Send                                      | Delegated   | 7ab1d787-bae7-4d5d-8db6-37ea32df9186 |
| TeamsActivity.Send                                      | Application | a267235f-af13-44dc-8385-c1dc93023186 |
| TeamsAppInstallation.ReadForChat                        | Delegated   | bf3fbf03-f35f-4e93-963e-47e4d874c37a |
| TeamsAppInstallation.ReadForChat.All                    | Application | cc7e7635-2586-41d6-adaa-a8d3bcad5ee5 |
| TeamsAppInstallation.ReadForTeam                        | Delegated   | 5248dcb1-f83b-4ec3-9f4d-a4428a961a72 |
| TeamsAppInstallation.ReadForTeam.All                    | Application | 1f615aea-6bf9-4b05-84bd-46388e138537 |
| TeamsAppInstallation.ReadForUser                        | Delegated   | c395395c-ff9a-4dba-bc1f-8372ba9dca84 |
| TeamsAppInstallation.ReadForUser.All                    | Application | 9ce09611-f4f7-4abd-a629-a05450422a97 |
| TeamsAppInstallation.ReadWriteForChat                   | Delegated   | aa85bf13-d771-4d5d-a9e6-bca04ce44edf |
| TeamsAppInstallation.ReadWriteForChat.All               | Application | 9e19bae1-2623-4c4f-ab6e-2664615ff9a0 |
| TeamsAppInstallation.ReadWriteForTeam                   | Delegated   | 2e25a044-2580-450d-8859-42eeb6e996c0 |
| TeamsAppInstallation.ReadWriteForTeam.All               | Application | 5dad17ba-f6cc-4954-a5a2-a0dcc95154f0 |
| TeamsAppInstallation.ReadWriteForUser                   | Delegated   | 093f8818-d05f-49b8-95bc-9d2a73e9a43c |
| TeamsAppInstallation.ReadWriteForUser.All               | Application | 74ef0291-ca83-4d02-8c7e-d2391e6a444f |
| TeamsAppInstallation.ReadWriteSelfForChat               | Delegated   | 0ce33576-30e8-43b7-99e5-62f8569a4002 |
| TeamsAppInstallation.ReadWriteSelfForChat.All           | Application | 73a45059-f39c-4baf-9182-4954ac0e55cf |
| TeamsAppInstallation.ReadWriteSelfForTeam               | Delegated   | 0f4595f7-64b1-4e13-81bc-11a249df07a9 |
| TeamsAppInstallation.ReadWriteSelfForTeam.All           | Application | 9f67436c-5415-4e7f-8ac1-3014a7132630 |
| TeamsAppInstallation.ReadWriteSelfForUser               | Delegated   | 207e0cb1-3ce7-4922-b991-5a760c346ebc |
| TeamsAppInstallation.ReadWriteSelfForUser.All           | Application | 908de74d-f8b2-4d6b-a9ed-2a17b3b78179 |
| TeamSettings.Read.All                                   | Delegated   | 48638b3c-ad68-4383-8ac4-e6880ee6ca57 |
| TeamSettings.Read.All                                   | Application | 242607bd-1d2c-432c-82eb-bdb27baa23ab |
| TeamSettings.ReadWrite.All                              | Delegated   | 39d65650-9d3e-4223-80db-a335590d027e |
| TeamSettings.ReadWrite.All                              | Application | bdd80a03-d9bc-451d-b7c4-ce7c63fe3c8f |
| TeamsTab.Create                                         | Delegated   | a9ff19c2-f369-4a95-9a25-ba9d460efc8e |
| TeamsTab.Create                                         | Application | 49981c42-fd7b-4530-be03-e77b21aed25e |
| TeamsTab.Read.All                                       | Delegated   | 59dacb05-e88d-4c13-a684-59f1afc8cc98 |
| TeamsTab.Read.All                                       | Application | 46890524-499a-4bb2-ad64-1476b4f3e1cf |
| TeamsTab.ReadWrite.All                                  | Delegated   | b98bfd41-87c6-45cc-b104-e2de4f0dafb9 |
| TeamsTab.ReadWrite.All                                  | Application | a96d855f-016b-47d7-b51c-1218a98d791c |
| TeamsTab.ReadWriteForChat                               | Delegated   | ee928332-e9c2-4747-b4a0-f8c164b68de6 |
| TeamsTab.ReadWriteForChat.All                           | Application | fd9ce730-a250-40dc-bd44-8dc8d20f39ea |
| TeamsTab.ReadWriteForTeam                               | Delegated   | c975dd04-a06e-4fbb-9704-62daad77bb49 |
| TeamsTab.ReadWriteForTeam.All                           | Application | 6163d4f4-fbf8-43da-a7b4-060fe85ed148 |
| TeamsTab.ReadWriteForUser                               | Delegated   | c37c9b61-7762-4bff-a156-afc0005847a0 |
| TeamsTab.ReadWriteForUser.All                           | Application | 425b4b59-d5af-45c8-832f-bb0b7402348a |
| TeamsTab.ReadWriteSelfForChat                           | Delegated   | 0c219d04-3abf-47f7-912d-5cca239e90e6 |
| TeamsTab.ReadWriteSelfForChat.All                       | Application | 9f62e4a2-a2d6-4350-b28b-d244728c4f86 |
| TeamsTab.ReadWriteSelfForTeam                           | Delegated   | f266662f-120a-4314-b26a-99b08617c7ef |
| TeamsTab.ReadWriteSelfForTeam.All                       | Application | 91c32b81-0ef0-453f-a5c7-4ce2e562f449 |
| TeamsTab.ReadWriteSelfForUser                           | Delegated   | 395dfec1-a0b9-465f-a783-8250a430cb8c |
| TeamsTab.ReadWriteSelfForUser.All                       | Application | 3c42dec6-49e8-4a0a-b469-36cff0d9da93 |
| Teamwork.Migrate.All                                    | Application | dfb0dd15-61de-45b2-be36-d6a69fba3c79 |
| TeamworkDevice.Read.All                                 | Delegated   | b659488b-9d28-4208-b2be-1c6652b3c970 |
| TeamworkDevice.Read.All                                 | Application | 0591bafd-7c1c-4c30-a2a5-2b9aacb1dfe8 |
| TeamworkDevice.ReadWrite.All                            | Delegated   | ddd97ecb-5c31-43db-a235-0ee20e635c40 |
| TeamworkDevice.ReadWrite.All                            | Application | 79c02f5b-bd4f-4713-bc2c-a8a4a66e127b |
| TeamworkTag.Read                                        | Delegated   | 57587d0b-8399-45be-b207-8050cec54575 |
| TeamworkTag.Read.All                                    | Application | b74fd6c4-4bde-488e-9695-eeb100e4907f |
| TeamworkTag.ReadWrite                                   | Delegated   | 539dabd7-b5b6-4117-b164-d60cd15a8671 |
| TeamworkTag.ReadWrite.All                               | Application | a3371ca5-911d-46d6-901c-42c8c7a937d8 |
| TermStore.Read.All                                      | Delegated   | 297f747b-0005-475b-8fef-c890f5152b38 |
| TermStore.Read.All                                      | Application | ea047cc2-df29-4f3e-83a3-205de61501ca |
| TermStore.ReadWrite.All                                 | Delegated   | 6c37c71d-f50f-4bff-8fd3-8a41da390140 |
| TermStore.ReadWrite.All                                 | Application | f12eb8d6-28e3-46e6-b2c0-b7e4dc69fc95 |
| ThreatAssessment.Read.All                               | Application | f8f035bb-2cce-47fb-8bf5-7baf3ecbee48 |
| ThreatAssessment.ReadWrite.All                          | Delegated   | cac97e40-6730-457d-ad8d-4852fddab7ad |
| ThreatHunting.Read.All                                  | Delegated   | b152eca8-ea73-4a48-8c98-1a6742673d99 |
| ThreatHunting.Read.All                                  | Application | dd98c7f5-2d42-42d3-a0e4-633161547251 |
| ThreatIndicators.Read.All                               | Delegated   | 9cc427b4-2004-41c5-aa22-757b755e9796 |
| ThreatIndicators.Read.All                               | Application | 197ee4e9-b993-4066-898f-d6aecc55125b |
| ThreatIndicators.ReadWrite.OwnedBy                      | Delegated   | 91e7d36d-022a-490f-a748-f8e011357b42 |
| ThreatIndicators.ReadWrite.OwnedBy                      | Application | 21792b6c-c986-4ffc-85de-df9da54b52fa |
| TrustFrameworkKeySet.Read.All                           | Delegated   | 7ad34336-f5b1-44ce-8682-31d7dfcd9ab9 |
| TrustFrameworkKeySet.Read.All                           | Application | fff194f1-7dce-4428-8301-1badb5518201 |
| TrustFrameworkKeySet.ReadWrite.All                      | Delegated   | 39244520-1e7d-4b4a-aee0-57c65826e427 |
| TrustFrameworkKeySet.ReadWrite.All                      | Application | 4a771c9a-1cf2-4609-b88e-3d3e02d539cd |
| UnifiedGroupMember.Read.AsGuest                         | Delegated   | 73e75199-7c3e-41bb-9357-167164dbb415 |
| User.Export.All                                         | Delegated   | 405a51b5-8d8d-430b-9842-8be4b0e9f324 |
| User.Export.All                                         | Application | 405a51b5-8d8d-430b-9842-8be4b0e9f324 |
| User.Invite.All                                         | Delegated   | 63dd7cd9-b489-4adf-a28c-ac38b9a0f962 |
| User.Invite.All                                         | Application | 09850681-111b-4a89-9bed-3f2cae46d706 |
| User.ManageIdentities.All                               | Delegated   | 637d7bec-b31e-4deb-acc9-24275642a2c9 |
| User.ManageIdentities.All                               | Application | c529cfca-c91b-489c-af2b-d92990b66ce6 |
| User.Read                                               | Delegated   | e1fe6dd8-ba31-4d61-89e7-88639da4683d |
| User.Read.All                                           | Delegated   | a154be20-db9c-4678-8ab7-66f6cc099a59 |
| User.Read.All                                           | Application | df021288-bdef-4463-88db-98f22de89214 |
| User.ReadBasic.All                                      | Delegated   | b340eb25-3456-403f-be2f-af7a0d370277 |
| User.ReadWrite                                          | Delegated   | b4e74841-8e56-480b-be8b-910348b18b4c |
| User.ReadWrite.All                                      | Delegated   | 204e0828-b5ca-4ad8-b9f3-f32a958e7cc4 |
| User.ReadWrite.All                                      | Application | 741f803b-c850-494e-b5df-cde7c675a1ca |
| UserActivity.ReadWrite.CreatedByApp                     | Delegated   | 47607519-5fb1-47d9-99c7-da4b48f369b1 |
| UserAuthenticationMethod.Read                           | Delegated   | 1f6b61c5-2f65-4135-9c9f-31c0f8d32b52 |
| UserAuthenticationMethod.Read.All                       | Delegated   | aec28ec7-4d02-4e8c-b864-50163aea77eb |
| UserAuthenticationMethod.Read.All                       | Application | 38d9df27-64da-44fd-b7c5-a6fbac20248f |
| UserAuthenticationMethod.ReadWrite                      | Delegated   | 48971fc1-70d7-4245-af77-0beb29b53ee2 |
| UserAuthenticationMethod.ReadWrite.All                  | Delegated   | b7887744-6746-4312-813d-72daeaee7e2d |
| UserAuthenticationMethod.ReadWrite.All                  | Application | 50483e42-d915-4231-9639-7fdb7fd190e5 |
| UserNotification.ReadWrite.CreatedByApp                 | Delegated   | 26e2f3e8-b2a1-47fc-9620-89bb5b042024 |
| UserNotification.ReadWrite.CreatedByApp                 | Application | 4e774092-a092-48d1-90bd-baad67c7eb47 |
| UserShiftPreferences.Read.All                           | Application | de023814-96df-4f53-9376-1e2891ef5a18 |
| UserShiftPreferences.ReadWrite.All                      | Application | d1eec298-80f3-49b0-9efb-d90e224798ac |
| UserTimelineActivity.Write.CreatedByApp                 | Delegated   | 367492fc-594d-4972-a9b5-0d58c622c91c |
| WindowsUpdates.ReadWrite.All                            | Delegated   | 11776c0c-6138-4db3-a668-ee621bea2555 |
| WindowsUpdates.ReadWrite.All                            | Application | 7dd1be58-6e76-4401-bf8d-31d1e8180d5b |
| WorkforceIntegration.Read.All                           | Delegated   | f1ccd5a7-6383-466a-8db8-1a656f7d06fa |
| WorkforceIntegration.ReadWrite.All                      | Delegated   | 08c4b377-0d23-4a8b-be2a-23c1c1d88545 |
| WorkforceIntegration.ReadWrite.All                      | Application | 202bf709-e8e6-478e-bcfd-5d63c50b68e3 |

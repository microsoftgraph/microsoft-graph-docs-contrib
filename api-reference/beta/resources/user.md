---
title: "user resource type"
description: "Represents a Microsoft Entra user account. Inherits from directoryObject."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: high
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 01/10/2025
ms.custom: sfi-ga-blocked
---

# user resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra user account. This resource is an open type that allows other properties to be passed in. Inherits from [directoryObject](directoryobject.md).

The **user** resource lets apps specify user preferences for languages and date/time formats for the user's primary Exchange mailboxes and Microsoft Entra profile. For more information, see [user preferences for languages and regional formats](#user-preferences-for-languages-and-regional-formats).

For performance reasons, the [create](../api/user-post-users.md), [get](../api/user-get.md), and [list](../api/user-list.md) operations return only a subset of more commonly used properties by default. These default properties are noted in the [Properties](#properties) section. To get any of the properties not returned by default, specify them in a `$select` OData query option.

This resource supports:

- Adding your data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.

## Methods

| Method | Return Type | Description |
|:------ |:----------- |:----------- |
| [List](../api/user-list.md) | [user](user.md) collection | Get a list of user objects. |
| [Create](../api/user-post-users.md) | [user](user.md) | Create a new user object. |
| [Get](../api/user-get.md) | [user](user.md) | Read properties and relationships of user object. |
| [Update](../api/user-update.md) | [user](user.md) | Update user object. |
| [Delete](../api/user-delete.md) | None | Delete user object. |
| [Get delta](../api/user-delta.md) | [user](user.md) collection | Get incremental changes for users. |
| [Change password](../api/user-changepassword.md) | None | Update your own password. |
| [Validate password](../api/user-validatepassword.md)|[passwordValidationInformation](../resources/passwordvalidationinformation.md)|Validate a user's password against the organization's password validation policy and report whether the password is valid. |
| [Retry service provisioning](../api/user-retryserviceprovisioning.md) | None | Retry the user service provisioning. |
| [Convert external user to internal member user](../api/user-convertexternaltointernalmemberuser.md) | [user](user.md) | Convert an externally authenticated user into an internal member user. |
| [Invalidate all refresh tokens](../api/user-invalidateallrefreshtokens.md) | [user](user.md) | Invalidate all of the user's refresh tokens issued to applications. **DO NOT USE. Use user: revokeSignInSessions method instead.**  |
| [Revoke sign-in sessions](../api/user-revokesigninsessions.md) | None | Revokes all the user's refresh and session tokens issued to applications by resetting the **signInSessionsValidFromDateTime** user property to the current date-time. This operation forces the user to sign in to those applications again. This method replaces **invalidateAllRefreshTokens**. |
| [Export personal data](../api/user-exportpersonaldata.md) | None | Submits a data policy operation request made by a company administrator to export an organizational user's data. |
| **AI interaction**|||
| [Get all enterprise interactions](../api/aiinteractionhistory-getallenterpriseinteractions.md) |[aiInteraction](../resources/aiinteraction.md) collection|Get all Microsoft 365 Copilot interaction data, including user prompts to Copilot and Copilot responses. |
| **App role assignments**|||
| [List](../api/user-list-approleassignments.md) | [appRoleAssignment](approleassignment.md) collection | Get the apps and app roles that a user has been assigned. |
| [Add](../api/user-post-approleassignments.md) | [appRoleAssignment](approleassignment.md) | Assign an app role to a user. |
| [Remove](../api/user-delete-approleassignments.md) | None | Remove an app role assignment from a user. |
| [List appRoleAssignedResources](../api/user-list-approleassignedresources.md) | [servicePrincipal](serviceprincipal.md) collection | Get the apps that a user has an app role assignment either directly or through group membership. |
| **Calendar** |||
| [List calendars](../api/user-list-calendars.md) | [Calendar](calendar.md) collection | Get a Calendar object collection. |
| [Create calendar](../api/user-post-calendars.md) | [Calendar](calendar.md) | Create a new Calendar by posting to the calendars collection. |
| [List calendar groups](../api/user-list-calendargroups.md) | [CalendarGroup](calendargroup.md) collection | Get a CalendarGroup object collection. |
| [Create calendar group](../api/user-post-calendargroups.md) | [CalendarGroup](calendargroup.md) | Create a new CalendarGroup by posting to the calendarGroups collection. |
| [List events](../api/user-list-events.md) | [event](event.md) collection | Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters. |
| [Create event](../api/user-post-events.md) | [event](event.md) | Create a new event by posting to the events collection. |
| [Find meeting times](../api/user-findmeetingtimes.md) | [meetingTimeSuggestionsResult](meetingtimesuggestionsresult.md) | Find time and locations to meet based on attendee availability, location, or time constraints. |
| [Find rooms](../api/user-findrooms.md) | [emailaddress.md](emailaddress.md) collection | Get all the meeting rooms in the user's tenant or a specific room list. |
| [Find room lists](../api/user-findroomlists.md) | [emailaddress.md](emailaddress.md) collection | Get the room lists defined in a tenant. |
| [Get free/busy schedule](../api/calendar-getschedule.md) | [scheduleInformation](scheduleinformation.md) | Get the free/busy availability information for a collection of users, distributions lists, or resources (rooms or equipment) for a specified period. |
| [List calendar view](../api/user-list-calendarview.md) | [event](event.md) collection | Get an event object collection. |
| [Reminder view](../api/user-reminderview.md) | [Reminder](reminder.md) collection | Return a list of calendar reminders within the start and end times specified.|
| **Call delegation**|||
|[Get delegation settings](../api/delegationsettings-get.md)|[delegationSettings](../resources/delegationsettings.md)|Read the properties and relationships of a [delegationSettings](../resources/delegationsettings.md) object.|
|[List delegates](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegates for a user.    |
|[List delegators](../api/callsettings-list-delegators.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegators for a user. |
| **Cloud licensing**|||
|[List usage rights](../api/cloudlicensing-usercloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a user.|
|[Get usage right](../api/cloudlicensing-usageright-get.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Get the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) object granted to a user.|
| **Cloud PC**|||
|[List cloud PCs](../api/user-list-cloudpcs.md)|[cloudPC](../resources/cloudpc.md) collection|List the [cloudPC](../resources/cloudpc.md) devices that are attributed to the signed-in user.|
|[Get launch info](../api/cloudpc-getcloudpclaunchinfo.md)|[cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md)|Get the [cloudPCLaunchInfo](../resources/cloudpclaunchinfo.md) for the signed-in user.|
| **Data security and governance** | | |
|[Compute protection scopes](../api/userprotectionscopecontainer-compute.md)|[policyUserScope](../resources/policyuserscope.md) collection|Compute the protection scopes for the signed-in user. |
|[Create content activity](../api/activitiescontainer-post-contentactivities.md)|[contentActivity](../resources/contentactivity.md)|Create a content activity for the signed-in user. |
|[Process content](../api/userdatasecurityandgovernance-processcontent.md)|[processContentResponse](../resources/processcontentresponse.md)|Process content against data protection policies in the context of the signed-in user. |
| **Delegated permission grants** | | |
| [List delegated permission grants](../api/user-list-oauth2permissiongrants.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) collection | Retrieve a list of delegated permissions granted to enable a client application to access an API on behalf of the user. |
| **Directory objects**|||
| [Get by IDs](../api/directoryobject-getbyids.md) | String collection | Returns the directory objects specified in a list of IDs. |
|[Get delta for directory object](../api/directoryobject-delta.md)|[directoryObject](directoryObject.md) collection| Get incremental changes for directory objects such as [users](../api/user-delta.md), [groups](../api/group-delta.md), [applications](../api/application-delta.md), and [service principals](../api/serviceprincipal-delta.md). Filtering is required on either the **id** of the derived type or the derived type itself. For more information on delta queries, see the [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).|
| [Check member groups](../api/directoryobject-checkmembergroups.md) | String collection | Check for membership in a list of groups. The check is transitive. |
| [Get member groups](../api/directoryobject-getmembergroups.md) | String collection | Return all the groups the user is a member of. The check is transitive. |
| [Check member objects](../api/directoryobject-checkmemberobjects.md) | String collection | Check for membership in a list of group, directory role, or administrative unit objects. The check is transitive. |
| [Get member objects](../api/directoryobject-getmemberobjects.md) | String collection | Return all the groups, directory roles, and administrative units the user is a member of. The check is transitive. |
| [Get transitive reports](../api/user-get-transitivereports.md) | Integer | Get the count of transitive reports for a user from the transitiveReports navigation property. |
| [List created objects](../api/user-list-createdobjects.md) | [directoryObject](directoryobject.md) collection | Get the directory objects created by the user from the createdObjects navigation property. |
| [List owned devices](../api/user-list-owneddevices.md) | [directoryObject](directoryobject.md) collection | Get the devices that the user owns from the ownedDevices navigation property. |
| [List owned objects](../api/user-list-ownedobjects.md) | [directoryObject](directoryobject.md) collection | Get the directory objects owned by the user from the ownedObjects navigation property. |
| [List deleted groups owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Retrieve the groups deleted in the tenant in the last 30 days and that owned by a user. |
| [List registered devices](../api/user-list-registereddevices.md) | [directoryObject](directoryobject.md) collection | Get the devices that are registered for the user from the registeredDevices navigation property. |
| [List scoped-role memberships](../api/user-list-scopedrolememberof.md) | [scopedRoleMembership](scopedrolemembership.md) collection | Get the scoped-role administrative units memberships for this user. |
| [List usage rights](../api/user-list-usagerights.md) | [usageRight](usageright.md) collection | Get a collection of usage rights granted to the user. |
| [List deleted items](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve the users deleted in the tenant in the last 30 days. |
| [Get deleted item](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) collection | Retrieve a deleted user by ID. |
| [Restore deleted item](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) collection | Restore a user deleted in the tenant in the last 30 days. |
| [Permanently delete item](../api/directory-deleteditems-delete.md) | [directoryObject](directoryobject.md) collection | Permanently delete a deleted user from the tenant. |
| **Drive** |||
| [Get drive](../api/drive-get.md) | [drive](drive.md) | Retrieve the properties and relationships of a Drive resource. |
| [List children](../api/driveitem-list-children.md) | [DriveItems](driveitem.md) | Return a collection of DriveItems in the children relationship of a DriveItem. |
| **Groups** |||
| [List joined teams](../api/user-list-joinedteams.md) | [team](team.md) collection | Get the Microsoft Teams teams that the user is a direct member of from the joinedTeams navigation property. |
| [List member of](../api/user-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups, directory roles, and administrative units that the user is a direct member of. This operation is not transitive. |
| [List transitive member of](../api/user-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | Get the groups, directory roles, and administrative units that the user is a member of through either direct or transitive membership. |
| **Insights** |||
| [List shared](../api/insights-list-shared.md) | [sharedInsight](insights-shared.md) collection | Calculated insight that returns the list of files shared with a user. |
| [List trending](../api/insights-list-trending.md) | [trending](insights-trending.md) collection | Calculated insight that returns the list of items trending around the user. |
| [List used](../api/insights-list-used.md) | [usedInsight](insights-used.md) collection | Calculated insight that returns the list of files used with a user. |
| **License management** |||
| [Assign license](../api/user-assignlicense.md) | [user](user.md) | Add or remove subscriptions for the user. You can also enable and disable specific plans associated with a subscription. |
| [List license details](../api/user-list-licensedetails.md) | [licenseDetails](licensedetails.md) collection | Get a licenseDetails object collection. |
| [Reprocess license assignment](../api/user-reprocesslicenseassignment.md) | [user](user.md) | Reprocess subscription assignments for the user. |
| **Mail** |||
| [List mail folders](../api/user-list-mailfolders.md) | [mailFolder](mailfolder.md) collection | Get the mail folder collection under the root folder of the signed-in user. |
| [Create mail folder](../api/user-post-mailfolders.md) | [mailFolder](mailfolder.md) | Create a new mailFolder by posting to the mailFolders collection |
| [List messages](../api/user-list-messages.md) | [message](message.md) collection | Get all the messages in the signed-in user's mailbox. |
| [Create message](../api/user-post-messages.md) | [message](message.md) | Create a message by posting to the messages collection. |
| [List overrides](../api/inferenceclassification-list-overrides.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md) collection | Get the focused inbox overrides that a user sets up to classify messages from certain senders in specific ways. |
| [Create override](../api/inferenceclassification-post-overrides.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md) | Create a Focused Inbox override for a sender identified by an SMTP address. |
| [List rules](../api/mailfolder-list-messagerules.md) | [messageRule](messagerule.md) collection | Get all the messageRule objects defined for the user's inbox. |
| [Create rule](../api/mailfolder-post-messagerules.md) | [messageRule](messagerule.md) | Create a messageRule object by specifying a set of conditions and actions. |
| [Send mail](../api/user-sendmail.md) | None | Send the message specified in the request body. |
| [Get mail tips](../api/user-getmailtips.md) | [mailTips](mailtips.md) collection | Return the MailTips of one or more recipients as available to the signed-in user. |
| **Notes** |||
| [List notebooks](../api/onenote-list-notebooks.md) | [notebook](notebook.md) collection | Retrieve a list of notebook objects. |
| [Create notebook](../api/onenote-post-notebooks.md) | [notebook](notebook.md) | Create a new OneNote notebook. |
| **Org hierarchy** |||
| [Assign manager](../api/user-post-manager.md) | None | Assign a user's manager. |
| [Get manager](../api/user-list-manager.md) | [directoryObject](directoryobject.md) | Get the user or contact that is this user's manager from the manager navigation property. |
| [Remove manager](../api/user-delete-manager.md) | None | Remove the manager of a user. |
| [List direct reports](../api/user-list-directreports.md) | [directoryObject](directoryobject.md) collection | Get the users and contacts that report to the user from the directReports navigation property. |
| **Outlook settings** |||
| [Get user mailbox settings](../api/user-get-mailboxsettings.md) | [mailboxSettings](mailboxsettings.md) | Get the user's mailboxSettings. |
| [Update user mailbox settings](../api/user-update-mailboxsettings.md) | [mailboxSettings](mailboxsettings.md) | Enable, configure, or disable one or more mailboxSettings for a user. |
| [List Outlook categories](../api/outlookuser-list-mastercategories.md) | [outlookCategory](outlookcategory.md) collection                                 | Get all the categories defined for the user. |
| [Create Outlook category](../api/outlookuser-post-mastercategories.md) | [outlookCategory](outlookcategory.md) | Create an outlookCategory object in the user's master list of categories. |
| [Get supported languages](../api/outlookuser-supportedlanguages.md) | [localeInfo](localeinfo.md) collection | Get the list of locales and languages that are supported for the user, as configured on the user's mailbox server. |
| [Get supported time zones](../api/outlookuser-supportedtimezones.md) | [timeZoneInformation](timezoneinformation.md) collection | Get the list of time zones that are supported for the user, as configured on the user's mailbox server. |
| [Translate Exchange IDs](../api/user-translateexchangeids.md) | [convertIdResult](convertidresult.md) collection | Translate identifiers of Outlook-related resources between formats. |
| **Password-based single sign-on credentials** |||
| [Get](../api/user-getpasswordsinglesignoncredentials.md)|[passwordSingleSignOnCredentialSet](passwordsinglesignoncredentialset.md) collection|Get the list of password-based single sign-on credentials for given user. Passwords are never returned, and instead are always returned as null or empty strings.|
| [Delete](../api/user-deletepasswordsinglesignoncredentials.md)|None|Delete password-based single sign-on credential for a given service principal that is associated to a given user.|
| **People** |||
| [List](../api/user-list-people.md) | [person](person.md) | Retrieve a list of person objects ordered by their relevance to the user, which is determined by the user's communication and collaboration patterns, and business relationships. |
| **Personal contacts**|||
| [List contacts](../api/user-list-contacts.md) | [contact](contact.md) collection | Get a contact collection from the default contacts folder of the signed-in user. |
| [Create contact](../api/user-post-contacts.md)| [contact](contact.md) | Create a new contact by posting to the contacts collection. |
| [List contact folders](../api/user-list-contactfolders.md) | [contactFolder](contactfolder.md) collection | Get the contact folder collection in the default contacts folder of the signed-in user. |
| [Create contact folder](../api/user-post-contactfolders.md) | [contactFolder](contactfolder.md) | Create a new contactFolder by posting to the contactFolders collection. |
| **Profile photo** |||
| [Get](../api/profilephoto-get.md) | [profilePhoto](profilephoto.md) | Get the specified profilePhoto or its metadata (profilePhoto properties). |
| [Update](../api/profilephoto-update.md) | None | Update the photo for any user in the tenant, including the signed-in user or the specified group or contact. |
| [Delete](../api/profilephoto-delete.md) | None | Delete the photo for any user in the tenant, including the signed-in user or the specified group. |
| **Planner** |||
| [List favorite plans](../api/planneruser-list-favoriteplans.md) | [plannerPlan](plannerplan.md) collection | Retrieve a list of plannerPlans that are marked as favorite by a user. |
| [List recent plans](../api/planneruser-list-recentplans.md) | [plannerPlan](plannerplan.md) collection | Retrieve a list of plannerPlans recently viewed by a user. |
| [List tasks](../api/planneruser-list-tasks.md) | [plannerTask](plannertask.md) collection | Get plannerTasks assigned to the user.|
| [Update settings](../api/planneruser-update.md) | None | Update the properties of a plannerUser object. |
| **Profile** |||
| [Get](../api/profile-get.md) | [profile](profile.md) | Retrieve the properties and relationships of a profile object for a given user. |
| [Delete](../api/profile-delete.md) | None | Delete profile object from a user's account. |
| **Sponsors** |||
| [Assign](../api/user-post-sponsors.md) | None | Assign a user a sponsor. |
| [List](../api/user-list-sponsors.md) | [directoryObject](../resources/directoryobject.md) collection | Get the users and groups who are this user's sponsors. |
| [Remove](../api/user-delete-sponsors.md) | None | Remove a user's sponsor. |
| [List invited by](../api/user-list-invitedby.md)|[directoryObject](../resources/directoryobject.md)|Get the user or service principal that invited the specified user into the tenant.|
| **Teamwork** |||
|[List apps installed for user](../api/userteamwork-list-installedapps.md) | [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) collection | Lists apps installed in the personal scope of a user.|
|[Get the installed app for user](../api/userteamwork-get-installedapps.md)| [userScopeTeamsAppInstallation](userscopeteamsappinstallation.md) | Lists the specified app installed in the personal scope of a user. |
|[Add app for user](../api/userteamwork-post-installedapps.md) | None | Adds (installs) an app in the personal scope of a user.|
|[Remove app for user](../api/userteamwork-delete-installedapps.md) | None | Removes (uninstalls) an app in the personal scope of a user.|
|[Upgrade app installed for user](../api/userteamwork-teamsappinstallation-upgrade.md) | None | Upgrades to the latest version of the app installed in the personal scope of a user.|
|[Get chat between user and app](../api/userscopeteamsappinstallation-get-chat.md)| [Chat](chat.md)| Lists one-on-one chat between the user and the app. |
|[List permission grants](../api/user-list-permissiongrants.md)| [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection| List all [resource-specific permission grants](../resources/resourcespecificpermissiongrant.md) of a [user](../resources/user.md). |
| **Terms of use agreements** |||
| [Agreement acceptances for a user](../api/user-list-agreementacceptances.md) | [agreementAcceptance](agreementacceptance.md) | Retrieve a user's agreementAcceptance objects. |
| **To-do tasks** |||
|[List tasks](../api/todotasklist-list-tasks.md)|[todoTask](todotask.md) collection|Get all the [todoTask](todotask.md) resources in the specified list.|
|[Create task](../api/todotasklist-post-tasks.md)|[todoTask](todotask.md)| Create a [todoTask](todotask.md) in the specified task list.|
|[List task lists](../api/todo-list-lists.md) | [todoTaskList](todotasklist.md) collection | Get all the task lists in the user's mailbox. |
|[Create task list](../api/todo-post-lists.md) | [todoTaskList](todotasklist.md) | Create a To Do task list in the user's mailbox. |
| **User settings** |||
| [Get](../api/usersettings-get.md) | [userSettings](usersettings.md) | Read the user and organization settings object. |
| [Update](../api/usersettings-update.md) | [userSettings](usersettings.md) | Update the properties of the settings object. |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#user-properties).

| Property       | Type    | Description |
|:---------------|:--------|:------------|
| aboutMe | String | A freeform text entry field for users to describe themselves. <br><br>Returned only on `$select`. |
| accountEnabled | Boolean | `true` if the account is enabled; otherwise, `false`. This property is required when a user is created. <br><br>Supports `$filter` (`eq`, `ne`, `not`, and `in`). |
| ageGroup | [ageGroup](#agegroup-values) | Sets the age group of the user. Allowed values: `null`, `Minor`, `NotAdult`, and `Adult`. For more information, see [legal age group property definitions](#legal-age-group-property-definitions). <br><br>Supports `$filter` (`eq`, `ne`, `not`, and `in`). |
| assignedLicenses | [assignedLicense](assignedlicense.md) collection | The licenses that are assigned to the user, including inherited (group-based) licenses. This property doesn't differentiate between directly assigned and inherited licenses. Use the **licenseAssignmentStates** property to identify the directly assigned and inherited licenses. <br><br>Not nullable. Supports `$filter` (`eq`, `not`, `/$count eq 0`, `/$count ne 0`). |
| assignedPlans | [assignedPlan](assignedplan.md) collection | The plans that are assigned to the user. Read-only. Not nullable.<br><br>Supports `$filter` (`eq` and `not`). |
| authorizationInfo | [authorizationInfo](../resources/authorizationinfo.md) | Identifiers that can be used to identify and authenticate a user in non-Azure AD environments. This property can store identifiers for smartcard-based certificates that users use to access on-premises Active Directory deployments or federated access. It can also be used to store the Subject Alternate Name (SAN) that's associated with a Common Access Card (CAC). Nullable.<br><br>Supports `$filter` (`eq` and `startsWith`). |
| birthday | DateTimeOffset | The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z` <br><br>Returned only on `$select`. |
| businessPhones | String collection | The telephone numbers for the user. Only one number can be set for this property. <br><br>Read-only for users synced from on-premises directory. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
| city | String | The city where the user is located. Maximum length is 128 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| cloudLicensing | [microsoft.graph.cloudLicensing.userCloudLicensing](../resources/cloudlicensing-usercloudlicensing.md) | The relationships of a user to cloud licensing resources. |
| cloudRealtimeCommunicationInfo | [cloudRealtimeCommunicationInfo](cloudrealtimecommunicationinfo.md) | Microsoft realtime communication information related to the user. <br> Supports `$filter` (`eq`, `ne`,`not`).|
| companyName | String | The name of the company the user is associated with. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters.<br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| consentProvidedForMinor | [consentProvidedForMinor](#consentprovidedforminor-values) | Sets whether consent has been obtained for minors. Allowed values: `null`, `Granted`, `Denied` and `NotRequired`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information. <br><br>Supports `$filter` (`eq`, `ne`, `not`, and `in`).|
| country | String | The country or region where the user is located; for example, `US` or `UK`. Maximum length is 128 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| createdDateTime | DateTimeOffset | The date and time the user was created in ISO 8601 format and UTC. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Microsoft Entra ID. Property is `null` for some users created before June 2018 and on-premises users synced to Microsoft Entra ID before June 2018. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`). |
| creationType | String | Indicates whether the user account was created through one of the following methods: <br/> <ul><li>As a regular school or work account (`null`). <li>As an external account (`Invitation`). <li>As a local account for an Azure Active Directory B2C tenant (`LocalAccount`). <li>Through self-service sign-up by an internal user using email verification (`EmailVerified`). <li>Through self-service sign-up by an external user signing up through a link that is part of a user flow (`SelfServiceSignUp`). </ul> <br>Read-only.<br>Supports `$filter` (`eq`, `ne`, `not`, and `in`). |
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. <br><br>Returned only on `$select`. Supports `$filter` (`eq`, `ne`, `not`, `startsWith`). The filter value is case-sensitive. <br><li>To read this property, the calling app must be assigned the *CustomSecAttributeAssignment.Read.All* permission. To write this property, the calling app must be assigned the *CustomSecAttributeAssignment.ReadWrite.All* permissions. <li>To read or write this property in delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`). |
| deletedDateTime | DateTimeOffset | The date and time the user was deleted. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, and `in`). |
| department | String | The name of the department where the user works. Maximum length is 64 characters.<br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, and `eq` on `null` values). |
| displayName | String | The name displayed in the address book for the user. This value is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created, and it cannot be cleared during updates. Maximum length is 256 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$orderby`, and `$search`.|
| employeeHireDate | DateTimeOffset | The date and time when the user was hired or will start work if there is a future hire. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`).|
| employeeLeaveDateTime | DateTimeOffset | The date and time when the user left or will leave the organization. <br><li>To read this property, the calling app must be assigned the *User-LifeCycleInfo.Read.All* permission. To write this property, the calling app must be assigned the *User.Read.All* and *User-LifeCycleInfo.ReadWrite.All* permissions. <li>To read this property in delegated scenarios, the admin needs at least one of the following Microsoft Entra roles: *Lifecycle Workflows Administrator* (least privilege), *Global Reader*. To write this property in delegated scenarios, the admin needs the *Global Administrator* role. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`). <br><br>For more information, see [Configure the employeeLeaveDateTime property for a user](/graph/tutorial-lifecycle-workflows-set-employeeleavedatetime).|
| employeeId | String | The employee identifier assigned to the user by the organization. The maximum length is 16 characters.<br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
|employeeOrgData|[employeeOrgData](employeeorgdata.md) |Represents organization data (for example, division and costCenter) associated with a user. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`).|
| employeeType | String | Captures enterprise worker type. For example, `Employee`, `Contractor`, `Consultant`, or `Vendor`. Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`).|
| externalUserConvertedOn | DateTimeOffset | The date and time when the user was converted from external to internal.
| externalUserState | String | For an external user invited to the tenant using the [invitation API](../api/invitation-post.md), this property represents the invited user's invitation status. For invited users, the state can be `PendingAcceptance` or `Accepted`, or `null` for all other users. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `in`). |
| externalUserStateChangeDateTime | String | Shows the timestamp for the latest change to the externalUserState property. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `in`). |
| faxNumber | String | The fax number of the user. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| givenName | String | The given name (first name) of the user. Maximum length is 64 characters. Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| hireDate | DateTimeOffset | The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br> Returned only on `$select`. <br> **Note:** This property is specific to SharePoint Online. We recommend using the native **employeeHireDate** property to set and update hire date values using Microsoft Graph APIs. |
| id | String | The unique identifier for the user. It should be treated as an opaque identifier. Inherited from [directoryObject](directoryobject.md). Not nullable. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| identities | [objectIdentity](objectIdentity.md) collection | Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft and tied to a user account. It may contain multiple items with the same **signInType** value. <br><br> Supports `$filter` (`eq`) with limitations. <!--Supports `$filter` (`eq`) including on `null` values, only where the **signInType** is not `userPrincipalName`.--> |
| imAddresses | String collection | The instant message voice-over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`).|
| infoCatalogs | String collection | Identifies the info segments assigned to the user.  Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`). |
| interests | String collection | A list for users to describe their interests. <br><br>Returned only on `$select`. |
| isLicenseReconciliationNeeded | Boolean | Indicates whether the user is pending an exchange mailbox license assignment. <br><br> Read-only. <br><br> Supports `$filter` (`eq` where `true` only).  |
| isManagementRestricted| Boolean | `true` if the user is a member of a restricted management administrative unit. If not set, the default value is `null` and the default behavior is false. Read-only. <br/><br/> To manage a user who is a member of a restricted management administrative unit, the administrator or calling app must be assigned a Microsoft Entra role at the scope of the restricted management administrative unit.|
| isResourceAccount | Boolean | Do not use – reserved for future use. |
| jobTitle | String | The user's job title. Maximum length is 128 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not` , `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| lastPasswordChangeDateTime | DateTimeOffset | When this Microsoft Entra user last changed their password or when their password was created, whichever date the latest action was performed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. <br><br>Returned only on `$select`.  |
| legalAgeGroupClassification | [legalAgeGroupClassification](#legalagegroupclassification-values) | Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on **ageGroup** and **consentProvidedForMinor** properties. Allowed values: `null`, `Undefined`, `MinorWithOutParentalConsent`, `MinorWithParentalConsent`, `MinorNoParentalConsentRequired`, `NotAdult`, and `Adult`. For more information, see [legal age group property definitions](#legal-age-group-property-definitions). <br><br>Returned only on `$select`. |
| licenseAssignmentStates | [licenseAssignmentState](licenseassignmentstate.md) collection | State of license assignments for this user. It also indicates licenses that are directly assigned and the ones the user inherited through group memberships. Read-only. <br><br>Returned only on `$select`. |
| mail | String | The SMTP address for the user, for example, `admin@contoso.com`. Changes to this property also update the user's **proxyAddresses** collection to include the value as an SMTP address. This property can't contain accent characters. <br/> **NOTE:** We don't recommend updating this property for Azure AD B2C user profiles. Use the **otherMails** property instead. <br><br> Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, `endsWith`, and `eq` on `null` values). |
| mailboxSettings | [mailboxSettings](mailboxsettings.md) | Settings for the primary mailbox of the signed-in user. You can [get](../api/user-get-mailboxsettings.md) or [update](../api/user-update-mailboxsettings.md) settings for sending automatic replies to incoming messages, locale, and time zone. For more information, see [User preferences for languages and regional formats](#user-preferences-for-languages-and-regional-formats). <br><br>Returned only on `$select`. |
| mailNickname | String | The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| mobilePhone | String | The primary cellular telephone number for the user. Read-only for users synced from the on-premises directory. <br><br> Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values) and `$search`.|
| mySite | String | The URL for the user's site. <br><br>Returned only on `$select`. |
| officeLocation | String | The office location in the user's place of business. Maximum length is 128 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| onPremisesDistinguishedName | String | Contains the on-premises Active Directory `distinguished name` or `DN`. |
| onPremisesDomainName | String | Contains the on-premises `domainFQDN`, also called dnsDomainName synchronized from the on-premises directory. |
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](onpremisesextensionattributes.md)|Contains extensionAttributes1-15 for the user. These extension attributes are also known as Exchange custom attributes 1-15. Each attribute can store up to 1024 characters. <br><li>For an **onPremisesSyncEnabled** user, the source of authority for this set of properties is the on-premises and is read-only. </li><li>For a cloud-only user (where **onPremisesSyncEnabled** is `false`), these properties can be set during the creation or update of a user object.  </li><li>For a cloud-only user previously synced from on-premises Active Directory, these properties are read-only in Microsoft Graph but can be fully managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell.</li><br> Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| onPremisesImmutableId | String | This property associates an on-premises Active Directory user account to their Microsoft Entra user object. This property must be specified when creating a new user account in the Graph if you're using a federated domain for the user's `userPrincipalName` (UPN) property. **Note:** The **$** and **\_** characters can't be used when specifying this property. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). |
| onPremisesLastSyncDateTime | DateTimeOffset | Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). |
| onPremisesProvisioningErrors | [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection | Errors when using Microsoft synchronization product during provisioning. <br> Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| onPremisesSamAccountName | String | Contains the on-premises `sAMAccountName` synchronized from the on-premises directory. <br><br> Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`).|
| onPremisesSecurityIdentifier | String | Contains the on-premises security identifier (SID) for the user synchronized from on-premises to the cloud. Must be in the format of SID, such as "S-1-5-21-1180699209-877415012-3182824384-1006". Supports `$filter` (`eq` including on `null` values).  |
|onPremisesSipInfo|[onPremisesSipInfo](../resources/onpremisessipinfo.md)|Contains all on-premises Session Initiation Protocol (SIP) information related to the user. Read-only.|
| onPremisesSyncEnabled | Boolean | `true` if this user object is currently being synced from an on-premises Active Directory (AD); otherwise, the user isn't being synced and can be managed in Microsoft Entra ID. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). |
| onPremisesUserPrincipalName | String | Contains the on-premises `userPrincipalName` synchronized from the on-premises directory. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`). |
| otherMails | String collection | A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. Can store up to 250 values, each with a limit of 250 characters. <br>NOTE: This property can't contain accent characters.<br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `in`, `startsWith`, `endsWith`, `/$count eq 0`, `/$count ne 0`). |
| passwordPolicies | String | Specifies password policies for the user. This value is an enumeration with one possible value being `DisableStrongPassword`, which allows weaker passwords than the default policy to be specified. `DisablePasswordExpiration` can also be specified. The two may be specified together; for example: `DisablePasswordExpiration, DisableStrongPassword`. For more information on the default password policies, see [Microsoft Entra password policies](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts). <br><br>Supports `$filter` (`ne`, `not`, and `eq` on `null` values).|
| passwordProfile | [passwordProfile](passwordprofile.md) | Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). <br><br><li> *User-PasswordProfile.ReadWrite.All* is the least privileged permission to update this property. <li> In delegated scenarios, the *User Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) is the least privileged admin role supported to update this property for nonadmin users. *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can reset passwords](../resources/users.md#who-can-reset-passwords). <li> In app-only scenarios, the calling app must be assigned a supported permission *and* at least the *User Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).|
| pastProjects | String collection | A list for users to enumerate their past projects. <br><br>Returned only on `$select`. |
| postalCode | String | The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| preferredDataLocation | String | The preferred data location for the user. For more information, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction).|
| preferredLanguage | String | The preferred language for the user. The preferred language format is based on RFC 4646. The name combines an ISO 639 two-letter lowercase culture code associated with the language and an ISO 3166 two-letter uppercase subculture code associated with the country or region. Example: "en-US", or "es-ES". <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| preferredName | String | The preferred name for the user. **Not Supported. This attribute returns an empty string.**<br><br>Returned only on `$select`. |
| provisionedPlans | [provisionedPlan](provisionedplan.md) collection | The plans that are provisioned for the user. Read-only. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`).|
| proxyAddresses | String collection | For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. Changes to the **mail** property also update this collection to include the value as an SMTP address. For more information, see [mail and proxyAddresses properties](#mail-and-proxyaddresses-properties). The proxy address prefixed with `SMTP` (capitalized) is the primary proxy address, while the ones prefixed with `smtp` are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of 10 unique addresses. Read-only in Microsoft Graph; you can update this property only through the [Microsoft 365 admin center](/exchange/recipients-in-exchange-online/manage-user-mailboxes/add-or-remove-email-addresses). Not nullable. <br><br>Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`, `endsWith`, `/$count eq 0`, `/$count ne 0`). |
| refreshTokensValidFromDateTime | DateTimeOffset | Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If it happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [invalidateAllRefreshTokens](../api/user-invalidateallrefreshtokens.md) to reset.|
| responsibilities | String collection | A list for the user to enumerate their responsibilities. <br><br>Returned only on `$select`. |
| schools | String collection | A list for the user to enumerate the schools they have attended. <br><br>Returned only on `$select`. |
|securityIdentifier| String | Security identifier (SID) of the user, used in Windows scenarios. <br><br>Read-only. Returned by default. <br>Supports `$select` and `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`). |
| serviceProvisioningErrors | [serviceProvisioningError](serviceprovisioningerror.md) collection | Errors published by a federated service describing a nontransient, service-specific error regarding the properties or link from a user object.|
| showInAddressList | Boolean | **Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead.** Represents whether the user should be included in the Outlook global address list. See [Known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=14972).|
| signInSessionsValidFromDateTime | DateTimeOffset | Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [revokeSignInSessions](../api/user-revokesigninsessions.md) to reset.|
| skills | String collection | A list for the user to enumerate their skills. <br><br>Returned only on `$select`. |
| signInActivity | [signInActivity](signinactivity.md) | Get the last signed-in date and request ID of the sign-in for a given user. Read-only.<br><br>Returned only on `$select`. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`) *but* not with any other filterable properties. <br><br>**Note:** <br/><li> Details for this property require a Microsoft Entra ID P1 or P2 license and the **AuditLog.Read.All** permission.<li>This property is not returned for a user who has never signed in or last signed in before April 2020.|
| state | String | The state or province in the user's address. Maximum length is 128 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| streetAddress | String | The street address of the user's place of business. Maximum length is 1024 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| surname | String | The user's surname (family name or last name). Maximum length is 64 characters. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| usageLocation | String | A two-letter country code (ISO standard 3166). Required for users that are assigned licenses due to legal requirements to check for availability of services in countries.  Examples include: `US`, `JP`, and `GB`. Not nullable. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values).|
| userPrincipalName | String | The user principal name (UPN) of the user. The UPN is an Internet-style sign-in name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where the domain must be present in the tenant's verified domain collection. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md).<br>NOTE: This property can't contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, `' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts). <br><br>Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, `endsWith`) and `$orderby`.
| userType | String | A String value that can be used to classify user types in your directory. The possible values are `Member` and `Guest`. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). **NOTE:** For more information about the permissions for member and guest users, see [What are the default user permissions in Microsoft Entra ID?](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#member-and-guest-users) |

> [!TIP]
> Directory extensions and associated data are returned by default; schema extensions and associated data are returned only on `$select`; and open extensions and associated data are returned only on `$expand`.

### mail and proxyAddresses properties

**mail** and **proxyAddresses** are both email-related properties. **proxyAddresses** is a collection of addresses only relevant to the Microsoft Exchange server. It's used to store a list of mail addresses for a user that are tied to a single mailbox. **mail** property is used as the user's email address for various purposes, including user sign-in, and defines the primary proxy address.

**mail** and **proxyAddresses** can be retrieved through the [GET user](../api/user-get.md) API. You can update the **mail** via the [Update user](../api/user-update.md) API, but you can't update **proxyAddresses** through Microsoft Graph. When a user's **mail** property is updated, it triggers a recalculation of **proxyAddresses**, and the newly updated mail is set to be the primary proxy address, except in the following scenarios:

1. If a user has a license that includes Microsoft Exchange, all their proxy addresses must belong to a verified domain on the tenant. Any that don't belong to verified domains are silently removed.
2. A user's mail will NOT be set to the primary proxy address if the user is a guest and the primary proxy address contains the guest user UPN string with `#EXT#`.
3. A user's mail will NOT be removed, even if they no longer have proxy addresses if the user is a guest.

**proxyAddresses** are unique across directory objects (users, groups, and organizational contacts). If a user's **mail** property conflicts with one of the **proxyAddresses** of another object, an attempt to update the **mail** fails, and the **proxyAddresses** property won't be updated either.

### User preferences for languages and regional formats

The **user** resource contains a [mailboxSettings](../resources/mailboxsettings.md) property that includes the user's preferred language, date and time formatting, default time zone, and other settings specifically for their primary Exchange mailbox. These preferences are targeted at mail clients and are only available if the user has a mailbox provisioned. You can use **mailboxSettings** if your scenario focuses only on Outlook mail, calendar, contacts, or to-do tasks.

In addition to **mailboxSettings**, **user** includes a relationship via [userSettings](../resources/usersettings.md) to [regionalAndLanguageSettings](../resources/regionalandlanguagesettings.md), the superset of language and regional formatting preferences that can be used by any application to provide the user with the best language and regional formatting experience. Use **userSettings** for a consistent experience across apps that tap into the Microsoft Entra user profile to reflect the same user preferences.

### Legal age group property definitions

This section explains how the three age group properties (**legalAgeGroupClassification**, **ageGroup** and **consentProvidedForMinor**) are used by Microsoft Entra administrators and enterprise application developers to meet age-related regulations:

- The **legalAgeGroupClassification** property is read-only. Enterprise application developers use it to ensure the correct handling of a user based on their legal age group. It's calculated based on the user's **ageGroup** and **consentProvidedForMinor** properties.
- **ageGroup** and **consentProvidedForMinor** are optional properties used by Microsoft Entra administrators to help ensure the use of an account is handled correctly based on the age-related regulatory rules governing the user's country or region.

For example, Cameron is an administrator of a directory for an elementary school in Holyport in the United Kingdom. At the beginning of the school year, he uses the admissions paperwork to obtain consent from the minor's parents based on the age-related regulations of the United Kingdom. The consent obtained from the parent allows the minor's account to be used by Holyport School and Microsoft apps. Cameron then creates all the accounts and sets ageGroup to "minor" and consentProvidedForMinor to "granted". Applications used by his students are then able to suppress features that aren't suitable for minors.

<!-- Note that the following 3 sub-sections are only documented like enums for a consistent user experience, but they are String types.-->

#### legalAgeGroupClassification values

| Member    | Description|
|:---------------|:----------|
|null|Default value, no **ageGroup** has been set for the user.|
|Undefined|No **ageGroup** is set for the user but **consentProvidedForMinor** is either `Granted`, `Denied`, or `NotRequired`.|
|MinorWithoutParentalConsent |(Reserved for future use)|
|MinorWithParentalConsent| The user is considered a minor based on the age-related regulations of their country or region, and the administrator of the account has obtained appropriate consent from a parent or guardian.|
|Adult|The user is considered an adult based on the age-related regulations of their country or region.|
|NotAdult|The user is from a country or region that has additional age-related regulations (such as the United States, United Kingdom, European Union, or South Korea), and the user's age is between a minor and an adult age (as stipulated based on country or region). Generally, this means that teenagers are considered as `notAdult` in regulated countries/regions.|
|MinorNoParentalConsentRequired|The user is a minor but is from a country or region that has no age-related regulations.|

#### ageGroup values

| Member    | Description|
|:---------------|:--------|
|null|Default value, no **ageGroup** has been set for the user.|
|Minor|The user is considered a minor.|
|NotAdult|The user is from a country that has statutory regulations  United States, United Kingdom, European Union or South Korea) and user's age is more than the upper limit of kid age (as per country) and less than lower limit of adult age (as stipulated based on country or region). So basically, teenagers are considered as `notAdult` in regulated countries.|
|Adult|The user should be a treated as an adult.|

#### consentProvidedForMinor values

| Member    | Description|
|:---------------|:----------|
|null|Default value, no **consentProvidedForMinor** has been set for the user.|
|Granted|Consent has been obtained for the user to have an account.|
|Denied|Consent hasn't been obtained for the user to have an account.|
|NotRequired|The user is from a location that doesn't require consent.|

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|activities|[userActivity](projectrome-activity.md) collection|The user's activities across devices. Read-only. Nullable.|
|agreementAcceptances|[agreementAcceptance](agreementacceptance.md) collection| The user's terms of use acceptance statuses. Read-only. Nullable.|
|appRoleAssignments|[appRoleAssignment](approleassignment.md) collection|Represents the app roles a user has been granted for an application. Supports `$expand`. |
|authentication|[authentication](../resources/authentication.md)|The authentication methods that are supported for the user.|
|calendar|[calendar](calendar.md)|The user's primary calendar. Read-only.|
|calendarGroups|[calendarGroup](calendargroup.md) collection|The user's calendar groups. Read-only. Nullable.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only. Nullable.|
|calendars|[calendar](calendar.md) collection|The user's calendars. Read-only. Nullable.|
|communications|[userCloudCommunication](../resources/usercloudcommunication.md)|The user's communications settings on Teams.|
|contactFolders|[contactFolder](contactfolder.md) collection|The user's contacts folders. Read-only. Nullable.|
|contacts|[contact](contact.md) collection|The user's contacts. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects that the user created. Read-only. Nullable.|
|dataSecurityAndGovernance|[userDataSecurityAndGovernance](../resources/userDatasecurityandgovernance.md)| The data security and governance settings for the user. Read-only. Nullable.|
|directReports|[directoryObject](directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts with their manager property set to this user.) Read-only. Nullable. Supports `$expand`. |
|drive|[drive](drive.md)|The user's OneDrive. Read-only.|
|drives|[drive](drive.md) collection| A collection of drives available for this user. Read-only. |
|events|[event](event.md) collection|The user's events. The default is to show events under the Default Calendar. Read-only. Nullable.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the user. Supports `$expand`. Nullable.|
|inferenceClassification|[inferenceClassification](inferenceclassification.md)| Relevance classification of the user's messages based on explicit designations that override inferred relevance or importance. |
|insights|[itemInsights](iteminsights.md) | Represents relationships between a user and items such as OneDrive for work or school documents, calculated using advanced analytics and machine learning techniques. Read-only. Nullable.|
|invitedBy|[directoryObject](directoryobject.md) | The user or service principal that invited the user.|
|joinedGroups|[group](group.md) collection| Read-only. Nullable.|
|mailFolders|[mailFolder](mailfolder.md) collection| The user's mail folders. Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)|The user or contact that is this user's manager. Read-only. Supports `$expand`.|
|memberOf|[directoryObject](directoryobject.md) collection|The groups, directory roles, and administrative units that the user is a member of. Read-only. Nullable. Supports `$expand`. |
|joinedTeams|[team](team.md) collection|The Microsoft Teams teams the user is a member of. Read-only. Nullable.|
|messages|[message](message.md) collection|The messages in a mailbox or folder. Read-only. Nullable.|
|onenote|[onenote](onenote.md)| Read-only.|
|onlineMeetings|[onlineMeeting](onlinemeeting.md) collection| Information about a meeting, including the URL used to join a meeting, the attendees list, and the description. |
|outlook|[outlookUser](outlookuser.md)| Selective Outlook services available to the user. Read-only. Nullable.|
|ownedDevices|[directoryObject](directoryobject.md) collection|Devices owned by the user. Read-only. Nullable. Supports `$expand`.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects owned by the user. Read-only. Nullable. Supports `$expand`, `$select` nested in `$expand`, and `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`).|
|pendingAccessReviewInstances|[accessReviewInstance](accessreviewinstance.md) collection| Navigation property to get a list of access reviews pending approval by the reviewer. |
|people|[person](person.md) collection| Read-only. The most relevant people to the user. The collection is ordered by their relevance to the user, which is determined by the user's communication, collaboration, and business relationships. A person aggregates information from mail, contacts, and social networks.|
|permissionGrants|[resourceSpecificPermissionGrant](../resources/resourcespecificpermissiongrant.md) collection| List all resource-specific permission grants of a user. |
|photo|[profilePhoto](profilephoto.md)| The user's profile photo. Read-only.|
|photos|[profilePhoto](profilephoto.md) collection| The collection of the user's profile photos in different sizes. Read-only.|
|planner|[plannerUser](planneruser.md)| Selective Planner services available to the user. Read-only. Nullable. |
|profile |[profile](profile.md) | Represents properties that are descriptive of a user in a tenant. |
|registeredDevices|[directoryObject](directoryobject.md) collection|Devices that are registered for the user. Read-only. Nullable. Supports `$expand` and returns up to 100 objects.|
|scopedRoleMemberOf|[scopedRoleMembership](scopedrolemembership.md) collection| The scoped-role administrative unit memberships for this user. Read-only. Nullable.|
|security|[security](security.md) |Nullable.|
|settings|[userSettings](usersettings.md) | Read-only. Nullable.|
|solutions|[userSolutionRoot](../resources/usersolutionroot.md)| Represents a user's custom solution entity. Read-Only. Nullable.|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The users and groups responsible for this guest user's privileges in the tenant and keep the guest user's information and access updated. (HTTP Methods: GET, POST, DELETE.). Supports `$expand`.|
|teamwork|[userTeamwork](userteamwork.md)| A container for Microsoft Teams features available for the user. Read-only. Nullable.|
|todo|[todo](todo.md)|Represents the To Do services available to a user. |
|transitiveMemberOf| [directoryObject](directoryobject.md) collection |  The groups, including nested groups and directory roles that a user is a member of. Nullable.|
|transitiveReports|[directoryObject](directoryobject.md) collection | The transitive reports for a user. Read-only.|
|usageRights|[usageRight](usageright.md) collection|Represents the usage rights a user has been granted. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "appRoleAssignments",
    "calendar",
    "calendarGroups",
    "calendarView",
    "calendars",
    "contactFolders",
    "contacts",
    "createdObjects",
    "directReports",
    "drive",
    "drives",
    "events",
    "extensions",
    "joinedGroups",
    "mailFolders",
    "manager",
    "memberOf",
    "joinedTeams",
    "teamwork",
    "messages",
    "onenote",
    "oauth2PermissionGrants",
    "outlook",
    "ownedDevices",
    "ownedObjects",
    "photo",
    "photos",
    "profile",
    "registeredDevices"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}-->

```json
{
  "aboutMe": "String",
  "accountEnabled": "Boolean",
  "ageGroup": "String",
  "assignedLicenses": [{"@odata.type": "microsoft.graph.assignedLicense"}],
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "authorizationInfo": {
    "@odata.type": "microsoft.graph.authorizationInfo"
  },
  "birthday": "String (timestamp)",
  "businessPhones": ["String"],
  "city": "String",
  "cloudLicensing": { "@odata.type": "microsoft.graph.cloudLicensing.userCloudLicensing" },
  "cloudRealtimeCommunicationInfo": {
    "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
  },
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "createdDateTime": "2019-02-07T21:53:13.067Z",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "deletedDateTime": "String (timestamp)",
  "department": "String",
  "displayName": "String",
  "employeeHireDate": "2020-01-01T00:00:00Z",
  "employeeId": "String",
  "employeeLeaveDateTime": "String (timestamp)",
  "employeeOrgData": {"@odata.type": "microsoft.graph.employeeOrgData"},
  "employeeType": "String",
  "externalUserConvertedOn": "String (timestamp)",
  "externalUserState": "PendingAcceptance",
  "externalUserStateChangeDateTime": "2018-11-12T01:13:13Z",
  "faxNumber": "String",
  "givenName": "String",
  "hireDate": "String (timestamp)",
  "id": "String (identifier)",
  "identities": [{"@odata.type": "microsoft.graph.objectIdentity"}],
  "interests": ["String"],
  "isLicenseReconciliationNeeded": "Boolean",
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "legalAgeGroupClassification": "String",
  "licenseAssignmentStates": [{"@odata.type": "microsoft.graph.licenseAssignmentState"}],
  "mail": "String",
  "mailboxSettings": {"@odata.type": "microsoft.graph.mailboxSettings"},
  "mailNickname": "String",
  "mobilePhone": "String",
  "mySite": "String",
  "officeLocation": "String",
  "onPremisesDistinguishedName": "String",
  "onPremisesDomainName": "String",
  "onPremisesExtensionAttributes": {"@odata.type": "microsoft.graph.onPremisesExtensionAttributes"},
  "onPremisesImmutableId": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSamAccountName": "String",
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSipInfo": {
    "@odata.type": "microsoft.graph.onPremisesSipInfo"
  },
  "onPremisesSyncEnabled": true,
  "onPremisesUserPrincipalName": "String",
  "otherMails": ["String"],
  "passwordPolicies": "String",
  "passwordProfile": {"@odata.type": "microsoft.graph.passwordProfile"},
  "pastProjects": ["String"],
  "postalCode": "String",
  "preferredDataLocation": "String",
  "preferredLanguage": "String",
  "preferredName": "String",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "proxyAddresses": ["String"],
  "refreshTokensValidFromDateTime": "2019-02-07T21:53:13.084Z",
  "responsibilities": ["String"],
  "schools": ["String"],
  "securityIdentifier": "String",
  "serviceProvisioningErrors": [{"@odata.type": "microsoft.graph.serviceProvisioningXmlError"}],
  "showInAddressList": true,
  "signInSessionsValidFromDateTime": "2019-02-07T21:53:13.084Z",
  "skills": ["String"],
  "state": "String",
  "streetAddress": "String",
  "surname": "String",
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "calendar": {"@odata.type": "microsoft.graph.calendar"},
  "calendarGroups": [{"@odata.type": "microsoft.graph.calendarGroup"}],
  "calendarView": [{"@odata.type": "microsoft.graph.event"}],
  "calendars": [{"@odata.type": "microsoft.graph.calendar"}],
  "contacts": [{"@odata.type": "microsoft.graph.contact"}],
  "contactFolders": [{"@odata.type": "microsoft.graph.contactFolder"}],
  "createdObjects": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "directReports": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "drive": {"@odata.type": "microsoft.graph.drive"},
  "drives": [{"@odata.type": "microsoft.graph.drive"}],
  "insights": {"@odata.type": "microsoft.graph.itemInsights"},
  "settings": {"@odata.type": "microsoft.graph.userSettings"},
  "events": [{"@odata.type": "microsoft.graph.event"}],
  "extensions": [{"@odata.type": "microsoft.graph.extension"}],
  "inferenceClassification": {"@odata.type": "microsoft.graph.inferenceClassification"},
  "mailFolders": [{"@odata.type": "microsoft.graph.mailFolder"}],
  "manager": {"@odata.type": "microsoft.graph.directoryObject"},
  "memberOf": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "joinedTeams": [{"@odata.type": "microsoft.graph.group"}],
  "teamwork": {"@odata.type": "microsoft.graph.teamwork"},
  "messages": [{ "@odata.type": "microsoft.graph.message"}],
  "outlook": {"@odata.type": "microsoft.graph.outlookUser"},
  "ownedDevices": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "photo": {"@odata.type": "microsoft.graph.profilePhoto"},
  "photos": [{ "@odata.type": "microsoft.graph.profilePhoto" }],
  "profile": {"@odata.type": "microsoft.graph.profile"},
  "registeredDevices": [{"@odata.type": "microsoft.graph.directoryObject"}],
  "signInActivity": {"@odata.type": "microsoft.graph.signInActivity"}
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

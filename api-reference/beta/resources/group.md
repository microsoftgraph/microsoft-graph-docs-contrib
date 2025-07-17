---
title: "group resource type"
description: "Represents a Microsoft Entra group, which can be a Microsoft 365 group, a team in Microsoft Teams, or a security group."
ms.localizationpriority: high
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 10/04/2024
---

# group resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra group, which can be a Microsoft 365 group, a team in Microsoft Teams, or a security group. This resource is an open type that allows other properties to be passed in.

Inherits from [directoryObject](directoryobject.md).

For performance reasons, the [create](../api/group-post-groups.md), [get](../api/group-get.md), and [list](../api/group-list.md) operations return only a subset of more commonly used properties by default. These _default_ properties are noted in the [Properties](#properties) section. To get any of the properties not returned by default, specify them in a `$select` OData query option.

This resource supports:

- Adding your data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/group-delta.md) function.

> **Microsoft Teams and Microsoft 365 groups support group collaboration**. You can use most of the Microsoft 365 groups API with Microsoft Teams. To create a [team](team.md), first [create group](../api/group-post-groups.md) and then [add a team to it](../api/team-put-teams.md). For details, see the [Microsoft Teams overview](teams-api-overview.md).

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [List](../api/group-list.md) | [group](group.md) collection | Read properties and relationships of all group objects. |
| [Create](../api/group-post-groups.md) | [group](group.md) | Create a new group as specified. It can be a Microsoft 365 group, dynamic group, security group, or team. |
| [Get](../api/group-get.md) | [group](group.md) | Read properties and relationships of group object. |
| [Update](../api/group-update.md) | None | Update the properties of a group object. |
| [Delete](../api/group-delete.md) | None | Delete group object. |
| [Get delta](../api/group-delta.md) | [group](group.md) collection | Get incremental changes for groups. |
| [Upsert](../api/group-upsert.md) | [group](group.md) | Create a new group if it doesn't exist, or update the properties of an existing group. |
| **Group management** |  |  |
| [List members](../api/group-list-members.md) | [directoryObject](directoryobject.md) collection | Get the users and groups that are direct members of this group from the **members** navigation property. |
| [Add member](../api/group-post-members.md) | [directoryObject](directoryobject.md) | Add a member to this group by posting to the **members** navigation property (supported for security groups and Microsoft 365 groups only). |
| [Remove member](../api/group-delete-members.md) | None | Remove a member from a Microsoft 365 group or a security group through the **members** navigation property. |
| [List owners](../api/group-list-owners.md) | [directoryObject](directoryobject.md) collection | Get the owners of the group from the **owners** navigation property. |
| [Add owner](../api/group-post-owners.md) | [directoryObject](directoryobject.md) | Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and Microsoft 365 groups only). |
| [Remove owner](../api/group-delete-owners.md) | None | Remove an owner from a Microsoft 365 group or a security group through the **owners** navigation property. |
| [List endpoints](../api/group-list-endpoints.md) | [endpoint](endpoint.md) collection | Get an endpoint object collection. |
| [Get endpoint](../api/endpoint-get.md) | [endpoint](endpoint.md) | Read properties and relationships of an endpoint object. |
| [List member of](../api/group-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups and administrative units that this group is a direct member of from the memberOf navigation property. |
| [List group lifecycle policies](../api/group-list-grouplifecyclepolicies.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | List group lifecycle policies. |
| [List transitive members](../api/group-list-transitivemembers.md) | [directoryObject](directoryobject.md) collection | Get the users, groups, devices, and service principals that are members, including nested members of this group. |
| [List transitive member of](../api/group-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | List the groups and administrative units that this group is a member of. This operation is transitive and includes the groups that this group is a nested member of. |
| [Assign license](../api/group-assignlicense.md) | [group](group.md) | Add or remove subscriptions for the group. You can also enable and disable specific plans associated with a subscription. |
| [Evaluate dynamic membership](../api/group-evaluatedynamicmembership.md) | [evaluateDynamicMembershipResult](evaluatedynamicmembershipresult.md) | Evaluate whether a user or device is or would be a member of a dynamic group. |
| [Renew](../api/group-renew.md) | Boolean | Renews a group's expiration. When a group is renewed, the group expiration is extended by the number of days defined in the policy. |
| [Validate properties](../api/group-validateproperties.md) | JSON | Validate a Microsoft 365 group's display name or mail nickname that complies with naming policies. |
| **App role assignments** |  |  |
| [List](../api/group-list-approleassignments.md) | [appRoleAssignment](approleassignment.md) collection | Get the apps and app roles to which this group has been assigned. |
| [Add](../api/group-post-approleassignments.md) | [appRoleAssignment](approleassignment.md) | Assign an app role to this group. |
| [Remove](../api/group-delete-approleassignments.md) | None. | Remove an app role assignment from this group. |
| **Calendar** |  |  |
| [Get calendar](../api/calendar-get.md) | [calendar](calendar.md) | Get the group's calendar. |
| [Update calendar](../api/calendar-update.md) | None | Update the group's calendar. |
| [List events](../api/group-list-events.md) | [event](event.md) collection | Get an event object collection. |
| [Create event](../api/group-post-events.md) | [event](event.md) | Create a new event by posting to the events collection. |
| [Get event](../api/group-get-event.md) | [event](event.md) | Read properties of an event object. |
| [Update event](../api/group-update-event.md) | None | Update the properties of an event object. |
| [Delete event](../api/group-delete-event.md) | None | Delete event object. |
| [List calendar view](../api/group-list-calendarview.md) | [event](event.md) collection | Get a collection of events in a specified time window. |
| **Cloud licensing** |  |  |
|[List usage rights](../api/cloudlicensing-groupcloudlicensing-list-usagerights.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|Get a list of the [usageRight](../resources/cloudlicensing-usageright.md) objects granted to a group.|
|[Get usage right](../api/cloudlicensing-usageright-get.md)|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md)|Get the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) object granted to a group.|
| **Conversations** |  |  |
| [List conversations](../api/group-list-conversations.md) | [conversation](conversation.md) collection | Get a conversation object collection. |
| [Create conversation](../api/group-post-conversations.md) | [conversation](conversation.md) | Create a new conversation by posting to the conversations collection. |
| [Get conversation](../api/group-get-conversation.md) | [conversation](conversation.md) | Read properties of a conversation object. |
| [Delete conversation](../api/group-delete-conversation.md) | None | Delete conversation object. |
| [List threads](../api/group-list-threads.md) | [conversationThread](conversationthread.md) collection | Get all the threads of a group. |
| [Create thread](../api/group-post-threads.md) | [conversationThread](conversationthread.md) | Create a new conversation thread. |
| [Get thread](../api/group-get-thread.md) | [conversationThread](conversationthread.md) | Read properties of a thread object. |
| [Update thread](../api/group-update-thread.md) | None | Update properties of a thread object. |
| [Delete thread](../api/group-delete-thread.md) | None | Delete thread object |
| [List accepted senders](../api/group-list-acceptedsenders.md) | [directoryObject](directoryobject.md) collection | Get a list of users or groups that are in the accepted-senders list for this group. |
| [Add accepted sender](../api/group-post-acceptedsenders.md) | [directoryObject](directoryobject.md) | Add a User or Group to the acceptSenders collection. |
| [Remove accepted sender](../api/group-delete-acceptedsenders.md) | [directoryObject](directoryobject.md) | Remove a User or Group from the acceptedSenders collection. |
| [List rejected senders](../api/group-list-rejectedsenders.md) | [directoryObject](directoryobject.md) collection | Get a list of users or groups that are in the rejected-senders list for this group. |
| [Add rejected sender](../api/group-post-rejectedsenders.md) | [directoryObject](directoryobject.md) | Add a new User or Group to the rejectedSenders collection. |
| [Remove rejected sender](../api/group-delete-rejectedsenders.md) | [directoryObject](directoryobject.md) | Remove new User or Group from the rejectedSenders collection. |
| **Directory objects** |  |  |
| [List deleted items](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve the groups deleted in the tenant in the last 30 days. |
| [Get deleted item](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) collection | Retrieve a deleted group by ID. |
| [Restore deleted item](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) collection | Restore a group deleted in the tenant in the last 30 days. |
| [Permanently delete item](../api/directory-deleteditems-delete.md) | [directoryObject](directoryobject.md) collection | Permanently delete a deleted group from the tenant. |
| [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Retrieve the groups deleted in the tenant in the last 30 days that are owned by a user. |
| [Check member groups](../api/directoryobject-checkmembergroups.md) | String collection | Check for membership in a list of groups. The function is transitive. |
| [Get member groups](../api/directoryobject-getmembergroups.md) | String collection | Return all the groups the group is a member of. The function is transitive. |
| [Check member objects](../api/directoryobject-checkmemberobjects.md) | String collection | Check for membership in a list of group, directory role, or administrative unit objects. The function is transitive. |
| [Get member objects](../api/directoryobject-getmemberobjects.md) | String collection | Return all of the groups and administrative units the group is a member of. The function is transitive. |
| **Drive** |  |  |
| [Get drive](../api/drive-get.md) | [drive](drive.md) | Retrieve the properties and relationships of a Drive resource. |
| [List children](../api/driveitem-list-children.md) | [driveItem](driveitem.md) collection | Return a collection of **driveItem** objects in the children relationship of a **driveItem**. |
| **Group settings** |  |  |
| [List](../api/group-list-settings.md) | [directorySetting](directorysetting.md) collection | List properties of all setting objects. |
| [Create](../api/group-post-settings.md) | [directorySetting](directorysetting.md) | Create a setting object based on a directorySettingTemplate. The POST request must provide settingValues for all the settings defined in the template. Only groups specific templates may be used for this operation. |
| [Get](../api/directorysetting-get.md) | [directorySetting](directorysetting.md) | Read properties of a specific setting object. |
| [Update](../api/directorysetting-update.md) | None | Update a setting object. |
| [Delete](../api/directorysetting-delete.md) | None | Delete a setting object. |
| [List setting templates](../api/directorysettingtemplate-list.md) | None | List properties of all setting templates. |
| [Get setting template](../api/directorysettingtemplate-get.md) | None | Read properties of a setting template. |
| **Notes** |  |  |
| [List notebooks](../api/onenote-list-notebooks.md) | [notebook](notebook.md) collection | Retrieve a list of notebook objects. |
| [Create notebook](../api/onenote-post-notebooks.md) | [notebook](notebook.md) | Create a new OneNote notebook. |
| **Password-based single sign-on credentials** |  |  |
| [Get](../api/group-getpasswordsinglesignoncredentials.md) | [passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md) collection | Get the list of password-based single sign-on credentials for this group. Passwords are never returned, and instead are always returned as null. |
| [Delete](../api/group-deletepasswordsinglesignoncredentials.md) | None | Delete password-based single sign-on credential for a given service principal that is associated to this group. |
name. |
| **Profile photo** |  |  |
| [Get](../api/profilephoto-get.md) | [profilePhoto](profilephoto.md) | Get the specified profilePhoto or its metadata (profilePhoto properties). |
| [Update](../api/profilephoto-update.md) | None | Update the photo for any user in the tenant including the signed-in user, or the specified group or contact. |
| [Delete](../api/profilephoto-delete.md) | None | Delete the photo for any user in the tenant including the signed-in user or the specified group. |
| **Planner** |  |  |
| [List plans](../api/plannergroup-list-plans.md) | [plannerPlan](plannerplan.md) collection | Get plans assigned to the group. |
| **Posts** | | |
| [List](../api/conversationthread-list-posts.md) | [post](post.md) collection | Get posts in a conversation thread. |
| [Get](../api/post-get.md) | [post](post.md) | Get a specific post. |
| [Reply to post](../api/post-reply.md) | None | Reply to a post. |
| [Forward post](../api/post-forward.md) | None | Forward a post. |
| **Other group resources** |  |  |
| [List permission grants](../api/group-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions granted to apps to access the group. |
| **User settings** |  |  |
| [Add favorite](../api/group-addfavorite.md) | None | Add the group to the list of the signed-in user's favorite groups. Supported for only Microsoft 365 groups. |
| [Remove favorite](../api/group-removefavorite.md) | None | Remove the group from the list of the signed-in user's favorite groups. Supported for Microsoft 365 groups only. |
| [List member of](../api/group-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups and administrative units that this user is a direct member of from the **memberOf** navigation property. |
| [List joined teams](../api/user-list-joinedteams.md) | [group](group.md) collection | Get the Microsoft Teams that the user is a direct member of. |
| [List associated teams](../api/associatedteaminfo-list.md) | [associatedTeamInfo](associatedteaminfo.md) collection | Get the list of [associatedTeamInfo](associatedteaminfo.md) objects in Microsoft Teams that a [user](user.md) is associated with. |
| [Subscribe by mail](../api/group-subscribebymail.md) | None | Set the isSubscribedByMail property to `true`. Enabling the signed-in user to receive email conversations. Supported for Microsoft 365 groups only. |
| [Unsubscribe by mail](../api/group-unsubscribebymail.md) | None | Set the isSubscribedByMail property to `false`. Disabling the signed-in user from receiving email conversations. Supported for Microsoft 365 groups only. |
| [Reset unseen count](../api/group-resetunseencount.md) | None | Reset the unseenCount to 0 for all the posts the signed-in user hasn't seen since their last visit. Supported for Microsoft 365 groups only. |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#group-properties).

| Property | Type | Description |
|--|--|--|
| accessType | groupAccessType | Indicates the type of access to the group. Possible values are `none`, `private`, `secret`, and `public`. |
| allowExternalSenders | Boolean | Indicates if people external to the organization can send messages to the group. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| assignedLabels | [assignedLabel](assignedlabel.md) collection | The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. <br><br>Returned only on `$select`. This property can be updated only in delegated scenarios where the caller requires both the Microsoft Graph permission and [a supported administrator role](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels).|
| assignedLicenses | [assignedLicense](assignedlicense.md) collection | The licenses that are assigned to the group. <br><br>Returned only on `$select`. Supports `$filter` (`eq`). Read-only. |
| autoSubscribeNewMembers | Boolean | Indicates if new members added to the group are auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; don't set it in the initial POST request that creates the group. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| classification | String | Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList [setting](directorysetting.md) value, based on the [template definition](directorysettingtemplate.md).<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`). |
| cloudLicensing | [microsoft.graph.cloudLicensing.groupCloudLicensing](../resources/cloudlicensing-groupcloudlicensing.md) | The relationships of a group to cloud licensing resources. |
| createdByAppId | String | App ID of the app used to create the group. Can be null for some groups. <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, `startsWith`). |
| createdDateTime | DateTimeOffset | Timestamp of when the group was created. The value can't be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Read-only. |
| deletedDateTime | DateTimeOffset | For some Microsoft Entra objects (user, group, application), if the object is deleted, it is first logically deleted, and this property is updated with the date and time when the object was deleted. Otherwise this property is null. If the object is restored, this property is updated to `null`. Inherited from [directoryObject](../resources/directoryobject.md). |
| description | String | An optional description for the group. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`. |
| displayName | String | The display name for the group. Required. Maximum length is 256 characters. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`. |
| expirationDateTime | DateTimeOffset | Timestamp of when the group is set to expire. It is `null` for security groups, but for Microsoft 365 groups, it represents when the group is set to expire as defined in the [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). Read-only. |
| groupTypes | String collection | Specifies the group type and its membership. <br><br>If the collection contains `Unified`, the group is a Microsoft 365 group; otherwise, it's either a security group or a distribution group. For details, see [groups overview](groups-overview.md).<br><br>If the collection includes `DynamicMembership`, the group has dynamic membership; otherwise, membership is static. <br><br>Returned by default. Supports `$filter` (`eq`, `not`). |
| hasMembersWithLicenseErrors | Boolean | Indicates whether there are members in this group that have license errors from its group-based license assignment. <br><br>This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being `true`).  <br><br>Supports `$filter` (`eq`). |
| hideFromAddressLists | Boolean | `true` if the group isn't displayed in certain parts of the Outlook user interface: in the **Address Book**, in address lists for selecting message recipients, and in the **Browse Groups** dialog for searching groups; false otherwise. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| hideFromOutlookClients | Boolean | `true` if the group isn't displayed in Outlook clients, such as Outlook for Windows and Outlook on the web, false otherwise. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| id | String | The unique identifier for the group. <br><br>Returned by default. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. <br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| isArchived | Boolean | When a group is associated with a team, this property determines whether the team is in read-only mode. <br/>To read this property, use the `/group/{groupId}/team` endpoint or the [Get team](../api/team-get.md) API. To update this property, use the [archiveTeam](../api/team-archive.md) and [unarchiveTeam](../api/team-unarchive.md) APIs. |
| isAssignableToRole | Boolean | Indicates whether this group can be assigned to a Microsoft Entra role. Optional. <br><br>This property can only be set while creating the group and is immutable. If set to `true`, the **securityEnabled** property must also be set to `true`,  **visibility** must be `Hidden`, and the group cannot be a dynamic group (that is, **groupTypes** can't contain `DynamicMembership`). <br/><br/>Only callers with at least the Privileged Role Administrator role can set this property. The caller must also be assigned the _RoleManagement.ReadWrite.Directory_ permission to set this property or update the membership of such groups. For more, see [Using a group to manage Microsoft Entra role assignments](https://go.microsoft.com/fwlink/?linkid=2103037)<br><br>Using this feature requires a Microsoft Entra ID P1 license. Returned by default. Supports `$filter` (`eq`, `ne`, `not`). |
| isFavorite | Boolean | Indicates whether the user marked the group as favorite. |
| isManagementRestricted | Boolean | Indicates whether the group is a member of a restricted management administrative unit. If not set, the default value is `null` and the default behavior is false. Read-only. <br/><br/> To manage a group member of a restricted management administrative unit, the administrator or calling app must be assigned a Microsoft Entra role at the scope of the restricted management administrative unit. |
| infoCatalogs | String collection | Identifies the info segments assigned to the group. Returned by default. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`). |
| isSubscribedByMail | Boolean | Indicates whether the signed-in user is subscribed to receive email conversations. The default value is `true`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| licenseProcessingState | String | Indicates the status of the group license assignment to all group members. Possible values: `QueuedForProcessing`, `ProcessingInProgress`, and `ProcessingComplete`. <br><br>Returned only on `$select`. Read-only. |
| mail | String | The SMTP address for the group, for example, "serviceadmins@contoso.com". <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| mailEnabled | Boolean | Specifies whether the group is mail-enabled. Required. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, and `eq` on `null` values). |
| mailNickname | String | The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the [ASCII character set 0 - 127](/office/vba/language/reference/user-interface-help/character-set-0127) except the following: ` @ () \ [] " ; : <> , SPACE`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`). |
| membershipRule | String | The rule that determines members for this group if the group is a dynamic group (groupTypes contains `DynamicMembership`). For more information about the syntax of the membership rule, see [Membership Rules syntax](/azure/active-directory/enterprise-users/groups-dynamic-membership). <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`). |
| membershipRuleProcessingState | String | Indicates whether the dynamic membership processing is on or paused. Possible values are `On` or `Paused`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| membershipRuleProcessingStatus | [membershipRuleProcessingStatus](membershipruleprocessingstatus.md) | Describes the processing status for rules-based dynamic groups. The property is `null` for non-rule-based dynamic groups or if the dynamic group processing has been paused. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). Read-only. |
| onPremisesDomainName | String | Contains the on-premises **domain FQDN**, also called **dnsDomainName** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Read-only. |
| onPremisesLastSyncDateTime | DateTimeOffset | Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). |
| onPremisesNetBiosName | String | Contains the on-premises **netBios name** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Read-only. |
| onPremisesProvisioningErrors | [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection | Errors when using Microsoft synchronization product during provisioning. <br><br>Returned by default. Supports `$filter` (`eq`, `not`). |
| onPremisesSamAccountName | String | Contains the on-premises **SAM account name** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`). Read-only. |
| onPremisesSecurityIdentifier | String | Contains the on-premises security identifier (SID) for the group synchronized from on-premises to the cloud. Read-only. <br><br>Returned by default. Supports `$filter` (`eq` including on `null` values). |
| onPremisesSyncEnabled | Boolean | `true` if this group is synced from an on-premises directory; `false` if this group was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). |
| preferredDataLocation | String | The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling app must be granted the *Directory.ReadWrite.All* permission and the user be assigned at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json): <br><ul><li> User Account Administrator <li>Directory Writer <li> Exchange Administrator <li> SharePoint Administrator </ul><br/> For more information about this property, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction) and [Create a Microsoft 365 group with a specific PDL](/office365/enterprise/multi-geo-add-group-with-pdl). <br><br>Nullable. Returned by default. |
| preferredLanguage | String | The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example, `en-US`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| proxyAddresses | String collection | Email addresses for the group that direct to the same group mailbox. For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. The **any** operator is required for filter expressions on multi-valued properties. <br><br>Returned by default. Read-only. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`, `endsWith`, `/$count eq 0`, `/$count ne 0`). |
| renewedDateTime | DateTimeOffset | Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the [renew service action](../api/grouplifecyclepolicy-renewgroup.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). Read-only. |
| resourceBehaviorOptions | String collection | Specifies the group behaviors that can be set for a Microsoft 365 group during creation. This property can be set only as part of creation (POST). For the list of possible values, see [Microsoft 365 group behaviors and provisioning options](/graph/group-set-options). |
| resourceProvisioningOptions | String collection | Specifies the group resources that are associated with the Microsoft 365 group. The possible value is `Team`. For more information, see [Microsoft 365 group behaviors and provisioning options](/graph/group-set-options). <br><br>Returned by default. Supports `$filter` (`eq`, `not`, `startsWith`. |
| securityEnabled | Boolean | Specifies whether the group is a security group. Required.<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| securityIdentifier | String | Security identifier of the group, used in Windows scenarios. Read-only. <br><br>Returned by default. |
| serviceProvisioningErrors | [serviceProvisioningError](serviceprovisioningerror.md) collection | Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from a group object. |
| theme | String | Specifies a Microsoft 365 group's color theme. Possible values are `Teal`, `Purple`, `Green`, `Blue`, `Pink`, `Orange` or `Red`. <br><br>Returned by default. |
| uniqueName | String | The unique identifier that can be assigned to a group and used as an alternate key. Immutable. Read-only. |
| unseenConversationsCount | Int32 | Count of conversations delivered one or more new posts since the signed-in user's last visit to the group. This property is the same as **unseenCount**. <br><br>Returned only on `$select`. |
| unseenCount | Int32 | Count of conversations that have received new posts since the signed-in user last visited the group. This property is the same as **unseenConversationsCount**.<br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| unseenMessagesCount | Int32 | Count of new posts that have been delivered to the group's conversations since the signed-in user's last visit to the group. <br><br>Returned only on `$select`. |
| visibility | String | Specifies the group join policy and group content visibility for groups. Possible values are: `Private`, `Public`, or `HiddenMembership`. `HiddenMembership` can be set only for Microsoft 365 groups when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation.<br> If visibility value isn't specified during group creation on Microsoft Graph, a security group is created as `Private` by default, and Microsoft 365 group is `Public`. Groups assignable to roles are always `Private`. To learn more, see [group visibility options](#group-visibility-options). <br><br>Returned by default. Nullable. |
| writebackConfiguration | [groupWritebackConfiguration](groupwritebackconfiguration.md) | Specifies whether or not a group is configured to write back group object properties to on-premises Active Directory. These properties are used when group writeback is configured in the [Microsoft Entra Connect](/azure/active-directory/hybrid/how-to-connect-group-writeback-v2) sync client. |

### Group visibility options

| Value | Description |
|:-|--|
| Public | Anyone can join the group without the owner's permission.<br>Anyone can view the group's contents. |
| Private | Owner permission is needed to join the group.<br>Non-members cannot view the contents of the group. |
| HiddenMembership | Owner permission is needed to join the group.<br>Non-members cannot view the contents of the group.<br>Non-members cannot see the members of the group.<br>Administrators (global, company, user, and helpdesk) can view the membership of the group.<br>The group appears in the global address book (GAL). |

## Relationships

| Relationship | Type | Description |
|:-|:-|:-|
| acceptedSenders | [directoryObject](directoryobject.md) collection | The list of users or groups allowed to create posts or calendar events in this group. If this list is non-empty, then only users or groups listed here can post. |
| appRoleAssignments | [appRoleAssignment](approleassignment.md) collection | Represents the app roles a group has been granted for an application. Supports `$expand`. |
| calendar | [calendar](calendar.md) | The group's calendar. Read-only. |
| calendarView | [event](event.md) collection | The calendar view for the calendar. Read-only. |
| conversations | [conversation](conversation.md) collection | The group's conversations. |
| createdOnBehalfOf | [directoryObject](directoryobject.md) | The user (or application) that created the group. **Note:** This isn't set if the user is an administrator. Read-only. |
| drive | [drive](drive.md) | The group's default drive. Read-only. |
| drives | [drive](drive.md) collection | The group's drives. Read-only. |
| endpoints | [Endpoint](endpoint.md) collection | Endpoints for the group. Read-only. Nullable. |
| events | [event](event.md) collection | The group's events. |
| extensions | [extension](extension.md) collection | The collection of open extensions defined for the group. Read-only. Nullable. |
| groupLifecyclePolicies | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | The collection of lifecycle policies for this group. Read-only. Nullable. |
| memberOf | [directoryObject](directoryobject.md) collection | Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports `$expand`. |
| members | [directoryObject](directoryobject.md) collection | Direct group members, who can be users, devices, other groups, or service principals. Supports the [List members](../api/group-list-members.md), [Add member](../api/group-post-members.md), and [Remove member](../api/group-delete-members.md) operations. Nullable. <br/>Supports `$expand` including nested `$select`. For example, `/groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName)`. |
| membersWithLicenseErrors | [user](user.md) collection | A list of group members with license errors from this group-based license assignment. Read-only. |
| onenote | [onenote](onenote.md) | Read-only. |
| owners | [directoryObject](directoryobject.md) collection | The owners of the group who can be users or service principals. Limited to 100 owners. Nullable. <li>If this property isn't specified when creating a Microsoft 365 group the calling user (admin or non-admin) is automatically assigned as the group owner. <li>A non-admin user can't explicitly add themselves to this collection when they're creating the group. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419). <li>For security groups, the admin user isn't automatically added to this collection. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419).<br/><br/> Supports `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`); Supports `$expand` including nested `$select`. For example, `/groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName)`. |
| permissionGrants | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) | The permissions granted for a group to a specific application. Supports `$expand`. |
| photo | [profilePhoto](profilephoto.md) | The group's profile photo. |
| photos | [profilePhoto](profilephoto.md) collection | The profile photos owned by the group. Read-only. Nullable. |
| planner | [plannerGroup](plannergroup.md) | Selective Planner services available to the group. Read-only. Nullable. |
| rejectedSenders | [directoryObject](directoryobject.md) collection | The list of users or groups not allowed to create posts or calendar events in this group. Nullable |
| settings | [directorySetting](directorysetting.md) collection | Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable. |
| sites | [site](site.md) collection | The list of SharePoint sites in this group. Access the default site with /sites/root. |
| team | [channel](channel.md) collection | The team associated with this group. |
| threads | [conversationThread](conversationthread.md) collection | The group's conversation threads. Nullable. |
| transitiveMemberOf | [directoryObject](directoryobject.md) collection | The groups a group is a member of, either directly or through nested membership. Nullable. |
| transitiveMembers | [directoryObject](directoryobject.md) collection | The direct and transitive members of a group. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "acceptedSenders",
    "calendar",
    "calendarView",
    "conversations",
    "createdOnBehalfOf",
    "drive",
    "drives",
    "endpoints",
    "events",
    "extensions",
    "groupLifecyclePolicies",
    "memberOf",
    "members",
    "membersWithLicenseErrors",
    "onenote",
    "owners",
    "photo",
    "photos",
    "planner",
    "rejectedSenders",
    "settings",
    "sites",
    "threads",
    "allowExternalSenders",
    "assignedLicenses",
    "autoSubscribeNewMembers",
    "hasMembersWithLicenseErrors",
    "isAssignableToRole",
    "isSubscribedByMail",
    "licenseProcessingState",
    "unseenConversationsCount",
    "unseenCount",
    "unseenMessagesCount"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "accessType": "String",
  "assignedLabels": [{ "@odata.type": "microsoft.graph.assignedLabel" }],
  "assignedLicenses": [{ "@odata.type": "microsoft.graph.assignedLicense" }],
  "allowExternalSenders": "Boolean",
  "autoSubscribeNewMembers": "Boolean",
  "cloudLicensing": { "@odata.type": "microsoft.graph.cloudLicensing.groupCloudLicensing" },
  "createdByAppId": "String",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "expirationDateTime": "String (timestamp)",
  "groupTypes": ["String"],
  "hideFromAddressLists": "Boolean",
  "hideFromOutlookClients": "Boolean",
  "id": "String (identifier)",
  "isFavorite": "Boolean",
  "isArchived": "Boolean",
  "isAssignableToRole": "Boolean",
  "isManagementRestricted": "Boolean",
  "isSubscribedByMail": "Boolean",
  "licenseProcessingState": "String",
  "mail": "String",
  "mailEnabled": "Boolean",
  "mailNickname": "String",
  "onPremisesDomainName": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesNetBiosName": "String",
  "onPremisesProvisioningErrors": [
    { "@odata.type": "microsoft.graph.onPremisesProvisioningError" }
  ],
  "onPremisesSamAccountName": "String",
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSyncEnabled": "Boolean",
  "preferredDataLocation": "String",
  "proxyAddresses": ["String"],
  "renewedDateTime": "String (timestamp)",
  "resourceBehaviorOptions": ["String"],
  "resourceProvisioningOptions": ["String"],
  "securityEnabled": "Boolean",
  "securityIdentifier": "String",
  "serviceProvisioningErrors": [
    { "@odata.type": "microsoft.graph.serviceProvisioningXmlError" }
  ],
  "uniqueName": "String",
  "unseenConversationsCount": "Int32",
  "unseenCount": "Int32",
  "unseenMessagesCount": "Int32",
  "visibility": "String",
  "acceptedSenders": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "calendar": { "@odata.type": "microsoft.graph.calendar" },
  "calendarView": [{ "@odata.type": "microsoft.graph.event" }],
  "conversations": [{ "@odata.type": "microsoft.graph.conversation" }],
  "createdOnBehalfOf": { "@odata.type": "microsoft.graph.directoryObject" },
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "events": [{ "@odata.type": "microsoft.graph.event" }],
  "memberOf": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "members": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "membersWithLicenseErrors": [{ "@odata.type": "microsoft.graph.user" }],
  "owners": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "photos": [{ "@odata.type": "microsoft.graph.profilePhoto" }],
  "rejectedSenders": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "sites": [{ "@odata.type": "microsoft.graph.site" }],
  "threads": [{ "@odata.type": "microsoft.graph.conversationThread" }],
  "classification": "String",
  "hasMembersWithLicenseErrors": "Boolean",
  "membershipRule": "String",
  "membershipRuleProcessingState": "String",
  "membershipRuleProcessingStatus": {
    "@odata.type": "microsoft.graph.membershipRuleProcessingStatus"
  },
  "preferredLanguage": "String",
  "theme": "String"
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
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

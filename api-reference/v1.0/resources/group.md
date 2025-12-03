---
title: "group resource type"
description: "Represents a Microsoft Entra group, which can be a Microsoft 365 group, or a security group. "
ms.localizationpriority: high
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 10/17/2024
---

# group resource type

Namespace: microsoft.graph

Represents a Microsoft Entra group, a Microsoft 365 group, or a security group. This resource is an open type that allows other properties to be passed in.

Inherits from [directoryObject](directoryobject.md).

For performance reasons, the [create](../api/group-post-groups.md), [get](../api/group-get.md), and [list](../api/group-list.md) operations return only a subset of more commonly used properties by default. These _default_ properties are noted in the [Properties](#properties) section. To get any of the properties not returned by default, specify them in a `$select` OData query option.

This resource supports:

- Adding your data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/change-notifications-overview).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/group-delta.md) function.

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [List](../api/group-list.md) | [group](group.md) collection | List group objects and their properties. |
| [Create](../api/group-post-groups.md) | [group](group.md) | Create a new group. It can be a Microsoft 365 group, dynamic group, or security group. |
| [Get](../api/group-get.md) | [group](group.md) | Read properties of a group object. |
| [Update](../api/group-update.md) | None | Update the properties of a group object. |
| [Upsert](../api/group-upsert.md) | [group](group.md) | Create a new group if it doesn't exist, or update the properties of an existing group. |
| [Delete](../api/group-delete.md) | None | Delete group object. |
| [Get delta](../api/group-delta.md) | group collection | Get incremental changes for groups. |
| **Group management** |  |  |
| [List members](../api/group-list-members.md) | [directoryObject](directoryobject.md) collection | Get the direct members of this group from the **members** navigation property. |
| [Add members](../api/group-post-members.md) | None | Add a member to this group by posting to the **members** navigation property (supported for security groups and Microsoft 365 groups only). |
| [Remove member](../api/group-delete-members.md) | None | Remove a member from a Microsoft 365 group or a security group through the **members** navigation property. |
| [List owners](../api/group-list-owners.md) | [directoryObject](directoryobject.md) collection | Get the owners of the group from the **owners** navigation property. |
| [Add owners](../api/group-post-owners.md) | None | Add a new owner for the group by posting to the **owners** navigation property (supported for security groups and Microsoft 365 groups only). |
| [Remove owner](../api/group-delete-owners.md) | None | Remove an owner from a Microsoft 365 group or a security group through the **owners** navigation property. |
| [List group lifecycle policies](../api/group-list-grouplifecyclepolicies.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | List group lifecycle policies. |
| [List transitive members](../api/group-list-transitivemembers.md) | [directoryObject](directoryobject.md) collection | Get the users, groups, and devices that are members, including nested members of this group. |
| [List transitive member of](../api/group-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | List the groups that this group is a member of. This operation is transitive and includes the groups that this group is a nested member of. |
| [Assign license](../api/group-assignlicense.md) | [group](group.md) | Add or remove subscriptions for the group. You can also enable and disable specific plans associated with a subscription. |
| [Renew](../api/group-renew.md) | Boolean | Renews a group's expiration. Renewing extends the group expiration by the number of days defined in the policy. |
| [Validate properties](../api/group-validateproperties.md) | JSON | Validate that a Microsoft 365 group's display name or mail nickname complies with naming policies. |
| **App role assignments** |  |  |
| [List](../api/group-list-approleassignments.md) | [appRoleAssignment](approleassignment.md) collection | Get the apps and app roles assigned to this group. |
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
| **Conversations** |  |  |
| [List conversations](../api/group-list-conversations.md) | [conversation](conversation.md) collection | Get a conversation object collection. |
| [Create conversation](../api/group-post-conversations.md) | [conversation](conversation.md) | Create a new conversation by posting to the conversations collection. |
| [Get conversation](../api/group-get-conversation.md) | [conversation](conversation.md) | Read properties of a conversation object. |
| [Delete conversation](../api/group-delete-conversation.md) | None | Delete conversation object. |
| [List threads](../api/group-list-threads.md) | [conversationThread](conversationthread.md) collection | Get all the threads of a group. |
| [Create thread](../api/group-post-threads.md) | [conversationThread](conversationthread.md) | Create a new conversation thread. |
| [Get thread](../api/group-get-thread.md) | [conversationThread](conversationthread.md) | Read properties of a thread object. |
| [Update thread](../api/group-update-thread.md) | None | Update properties of a thread object. |
| [Delete thread](../api/group-delete-thread.md) | None | Delete thread object. |
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
| [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Retrieve the user's groups deleted in the tenant in the last 30 days. |
| [Check member groups](../api/directoryobject-checkmembergroups.md) | String collection | Check for membership in a list of groups. The function is transitive. |
| [Get member groups](../api/directoryobject-getmembergroups.md) | String collection | Return all the groups that the group is a member of. The function is transitive. |
| [Check member objects](../api/directoryobject-checkmemberobjects.md) | String collection | Check for membership in a list of group, directory role, or administrative unit objects. The function is transitive. |
| [Get member objects](../api/directoryobject-getmemberobjects.md) | String collection | Return all of the groups and administrative units that the group is a member of. The function is transitive. |
| **Drive** |  |  |
| [Get drive](../api/drive-get.md) | [drive](drive.md) | Retrieve the properties and relationships of a Drive resource. |
| [List children](../api/driveitem-list-children.md) | [DriveItems](driveitem.md) | Return a collection of DriveItems in the children relationship of a DriveItem. |
| **Group settings** |  |  |
| [List](../api/group-list-settings.md) | [groupSetting](groupsetting.md) collection | List properties of all setting objects. |
| [Create](../api/group-post-settings.md) | [groupSetting](groupsetting.md) | Create a setting object based on a groupSettingTemplate. The POST request must provide settingValues for all the settings defined in the template. Only groups specific templates can be used for this operation. |
| [Get](../api/groupsetting-get.md) | [groupSetting](groupsetting.md) | Read properties of a specific setting object. |
| [Update](../api/groupsetting-update.md) | None | Update a setting object. |
| [Delete](../api/groupsetting-delete.md) | None | Delete a setting object. |
| [List setting template](../api/groupsettingtemplate-list.md) | None | List properties of all setting templates. |
| [Get setting template](../api/groupsettingtemplate-get.md) | None | Read properties of a setting template. |
| **Notes** |  |  |
| [List notebooks](../api/onenote-list-notebooks.md) | [notebook](notebook.md) collection | Retrieve a list of notebook objects. |
| [Create notebook](../api/onenote-post-notebooks.md) | [notebook](notebook.md) | Create a new OneNote notebook. |
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
| [List permission grants](../api/group-list-permissiongrants.md) | [resourceSpecificPermissionGrant](resourcespecificpermissiongrant.md) collection | List permissions that are granted to apps to access the group. |
| **User settings** |  |  |
| [Add favorite](../api/group-addfavorite.md) | None | Add the group to the list of the signed-in user's favorite groups. Supported for only Microsoft 365 groups. |
| [Remove favorite](../api/group-removefavorite.md) | None | Remove the group from the list of the signed-in user's favorite groups. Supported for only Microsoft 365 groups. |
| [List member of](../api/group-list-memberof.md) | [directoryObject](directoryobject.md) collection | Get the groups and administrative units that this user is a direct member of, from the **memberOf** navigation property. |
| [List joined teams](../api/user-list-joinedteams.md) | [group](group.md) collection | Get the Microsoft Teams that the user is a direct member of. |
| [List associated teams](../api/associatedteaminfo-list.md) | [associatedTeamInfo](associatedteaminfo.md) collection | Get the list of [associatedTeamInfo](associatedteaminfo.md) objects in Microsoft Teams that a [user](user.md) is associated with. |
| [Subscribe by mail](../api/group-subscribebymail.md) | None | Set the isSubscribedByMail property to `true`. Enabling the signed-in user to receive email conversations. Supported for only Microsoft 365 groups. |
| [Unsubscribe by mail](../api/group-unsubscribebymail.md) | None | Set the isSubscribedByMail property to `false`. Disabling the signed-in user from receive email conversations. Supported for only Microsoft 365 groups. |
| [Reset unseen count](../api/group-resetunseencount.md) | None | Reset the unseenCount to 0 of all the posts that the signed-in user hasn't seen since their last visit. Supported for only Microsoft 365 groups. |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries#group-properties).

| Property | Type | Description |
|:-|:-|:-|
| allowExternalSenders | Boolean | Indicates if people external to the organization can send messages to the group. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| assignedLabels | [assignedLabel](assignedlabel.md) collection | The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. <br><br>Returned only on `$select`. This property can be updated only in delegated scenarios where the caller requires both the Microsoft Graph permission and [a supported administrator role](/purview/get-started-with-sensitivity-labels#permissions-required-to-create-and-manage-sensitivity-labels).|
| assignedLicenses | [assignedLicense](assignedlicense.md) collection | The licenses that are assigned to the group. <br><br>Returned only on `$select`. Supports `$filter` (`eq`). Read-only. |
| autoSubscribeNewMembers | Boolean | Indicates if new members added to the group are autosubscribed to receive email notifications. You can set this property in a PATCH request for the group; don't set it in the initial POST request that creates the group. Default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| classification | String | Describes a classification for the group (such as low, medium, or high business impact). Valid values for this property are defined by creating a ClassificationList [setting](groupsetting.md) value, based on the [template definition](groupsettingtemplate.md).<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`). |
| createdDateTime | DateTimeOffset | Timestamp of when the group was created. The value can't be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on January 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Read-only. |
| deletedDateTime | DateTimeOffset | For some Microsoft Entra objects (user, group, application), if the object is deleted, it's first logically deleted, and this property is updated with the date and time when the object was deleted. Otherwise this property is `null`. If the object is restored, this property is updated to `null`. Inherited from [directoryObject](../resources/directoryobject.md).  |
| description | String | An optional description for the group. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`) and `$search`. |
| displayName | String | The display name for the group. This property is required when a group is created and can't be cleared during updates. Maximum length is 256 characters. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values), `$search`, and `$orderby`. |
| expirationDateTime | DateTimeOffset | Timestamp of when the group is set to expire. It's `null` for security groups, but for Microsoft 365 groups, it represents when the group is set to expire as defined in the [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on January 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). Read-only. |
| groupTypes | String collection | Specifies the group type and its membership. <br><br>If the collection contains `Unified`, the group is a Microsoft 365 group; otherwise, it's either a security group or a distribution group. For details, see [groups overview](groups-overview.md).<br><br>If the collection includes `DynamicMembership`, the group has dynamic membership; otherwise, membership is static. <br><br>Returned by default. Supports `$filter` (`eq`, `not`). |
| hasMembersWithLicenseErrors | Boolean | Indicates whether there are members in this group that have license errors from its group-based license assignment. <br><br>This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true). See an [example](../api/group-list.md). <br><br>Supports `$filter` (`eq`). |
| hideFromAddressLists | Boolean | True if the group isn't displayed in certain parts of the Outlook UI: the **Address Book**, address lists for selecting message recipients, and the **Browse Groups** dialog for searching groups; otherwise, false. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| hideFromOutlookClients | Boolean | True if the group isn't displayed in Outlook clients, such as Outlook for Windows and Outlook on the web; otherwise, false. The default value is `false`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| id | String | The unique identifier for the group. <br><br>Returned by default. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.<br><br>Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| isArchived | Boolean | When a group is associated with a team, this property determines whether the team is in read-only mode.<br/>To read this property, use the `/group/{groupId}/team` endpoint or the [Get team](../api/team-get.md) API. To update this property, use the [archiveTeam](../api/team-archive.md) and [unarchiveTeam](../api/team-unarchive.md) APIs. |
| isAssignableToRole | Boolean | Indicates whether this group can be assigned to a Microsoft Entra role. Optional. <br><br>This property can only be set while creating the group and is immutable. If set to `true`, the **securityEnabled** property must also be set to `true`, **visibility** must be `Hidden`, and the group can't be a dynamic group (that is, **groupTypes** can't contain `DynamicMembership`). <br/><br/>Only callers with at least the Privileged Role Administrator role can set this property. The caller must also be assigned the _RoleManagement.ReadWrite.Directory_ permission to set this property or update the membership of such groups. For more, see [Using a group to manage Microsoft Entra role assignments](https://go.microsoft.com/fwlink/?linkid=2103037)<br><br>Using this feature requires a Microsoft Entra ID P1 license. Returned by default. Supports `$filter` (`eq`, `ne`, `not`). |
| isManagementRestricted | Boolean | Indicates whether the group is a member of a restricted management administrative unit. If not set, the default value is `null` and the default behavior is false. Read-only. <br/><br/> To manage a group member of a restricted management administrative unit, the administrator or calling app must be assigned a Microsoft Entra role at the scope of the restricted management administrative unit. <br><br>Returned only on `$select`. |
| isSubscribedByMail | Boolean | Indicates whether the signed-in user is subscribed to receive email conversations. The default value is `true`. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| licenseProcessingState | String | Indicates the status of the group license assignment to all group members. The default value is `false`. Read-only. Possible values: `QueuedForProcessing`, `ProcessingInProgress`, and `ProcessingComplete`.<br><br>Returned only on `$select`. Read-only. |
| mail | String | The SMTP address for the group, for example, "serviceadmins@contoso.com". <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| mailEnabled | Boolean | Specifies whether the group is mail-enabled. Required. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`). |
| mailNickname | String | The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the [ASCII character set 0 - 127](/office/vba/language/reference/user-interface-help/character-set-0127) except the following characters: ` @ () \ [] " ; : <> , SPACE`. <br><br>Required. Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| membershipRule | String | The rule that determines members for this group if the group is a dynamic group (groupTypes contains `DynamicMembership`). For more information about the syntax of the membership rule, see [Membership Rules syntax](/azure/active-directory/users-groups-roles/groups-dynamic-membership). <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `startsWith`). |
| membershipRuleProcessingState | String | Indicates whether the dynamic membership processing is on or paused. Possible values are `On` or `Paused`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| onPremisesDomainName | String | Contains the on-premises **domain FQDN**, also called **dnsDomainName** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Read-only. |
| onPremisesLastSyncDateTime | DateTimeOffset | Indicates the last time at which the group was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on January 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). |
| onPremisesNetBiosName | String | Contains the on-premises **netBios name** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Read-only. |
| onPremisesProvisioningErrors | [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection | Errors when using Microsoft synchronization product during provisioning. <br><br>Returned by default. Supports `$filter` (`eq`, `not`). |
| onPremisesSamAccountName | String | Contains the on-premises **SAM account name** synchronized from the on-premises directory. The property is only populated for customers synchronizing their on-premises directory to Microsoft Entra ID via Microsoft Entra Connect.<br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`). Read-only. |
| onPremisesSecurityIdentifier | String | Contains the on-premises security identifier (SID) for the group synchronized from on-premises to the cloud. Read-only. <br><br>Returned by default. Supports `$filter` (`eq` including on `null` values). |
| onPremisesSyncEnabled | Boolean | `true` if this group is synced from an on-premises directory; `false` if this group was originally synced from an on-premises directory but is no longer synced; **null** if this object has never synced from an on-premises directory (default). <br><br>Returned by default. Read-only. Supports `$filter` (`eq`, `ne`, `not`, `in`, and `eq` on `null` values). |
| preferredDataLocation | String | The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling app must be granted the *Directory.ReadWrite.All* permission and the user be assigned at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json): <br><ul>User Account Administrator <li>Directory Writer <li> Exchange Administrator <li> SharePoint Administrator </ul><br/> For more information about this property, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction). <br><br>Nullable. Returned by default. |
| preferredLanguage | String | The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example, `en-US`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`, `startsWith`, and `eq` on `null` values). |
| proxyAddresses | String collection | Email addresses for the group that direct to the same group mailbox. For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. The **any** operator is required to filter expressions on multi-valued properties. <br><br>Returned by default. Read-only. Not nullable. Supports `$filter` (`eq`, `not`, `ge`, `le`, `startsWith`, `endsWith`, `/$count eq 0`, `/$count ne 0`). |
| renewedDateTime | DateTimeOffset | Timestamp of when the group was last renewed. This value can't be modified directly and is only updated via the [renew service action](../api/group-renew.md). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on January 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`). Read-only. |
| securityEnabled | Boolean | Specifies whether the group is a security group. Required. <br><br>Returned by default. Supports `$filter` (`eq`, `ne`, `not`, `in`). |
| securityIdentifier | String | Security identifier of the group, used in Windows scenarios. Read-only. <br><br>Returned by default. |
| serviceProvisioningErrors | [serviceProvisioningError](serviceprovisioningerror.md) collection | Errors published by a federated service describing a nontransient, service-specific error regarding the properties or link from a group object. <br><br> Supports `$filter` (`eq`, `not`, for isResolved and serviceInstance). |
| theme | string | Specifies a Microsoft 365 group's color theme. Possible values are `Teal`, `Purple`, `Green`, `Blue`, `Pink`, `Orange`, or `Red`. <br><br>Returned by default. |
| uniqueName | String | The unique identifier that can be assigned to a group and used as an alternate key. Immutable. Read-only. |
| unseenCount | Int32 | Count of conversations that received new posts since the signed-in user last visited the group. <br><br>Returned only on `$select`. Supported only on the Get group API (`GET /groups/{ID}`). |
| visibility | String | Specifies the group join policy and group content visibility for groups. The possible values are: `Private`, `Public`, or `HiddenMembership`. `HiddenMembership` can be set only for Microsoft 365 groups when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation.<br> If visibility value isn't specified during group creation on Microsoft Graph, a security group is created as `Private` by default, and the Microsoft 365 group is `Public`. Groups assignable to roles are always `Private`. To learn more, see [group visibility options](#group-visibility-options). <br><br>Returned by default. Nullable. |

### Group visibility options

| Value | Description |
|:-|--|
| Public | Anyone can join the group without needing owner permission.<br>Anyone can view the attributes of the group.<br>Anyone can see the members of the group. |
| Private | Owner permission is needed to join the group.<br>Anyone can view the attributes of the group.<br>Anyone can see the members of the group. |
| HiddenMembership | Owner permission is needed to join the group.<br>Guests can't view the attributes of the group.<br>Nonmembers can't see the members of the group. This setting doesn't affect visibility of group owners. <br>Administrators (global, company, user, and helpdesk) can view the membership of the group.<br>The group appears in the global address book (GAL). |

## Relationships

| Relationship | Type | Description |
|:-|:-|:-|
| acceptedSenders | [directoryObject](directoryobject.md) collection | The list of users or groups allowed to create posts or calendar events in this group. If this list is nonempty, then only users or groups listed here are allowed to post. |
| appRoleAssignments | [appRoleAssignment](approleassignment.md) collection | Represents the app roles granted to a group for an application. Supports `$expand`. |
| calendar | [calendar](calendar.md) | The group's calendar. Read-only. |
| calendarView | [event](event.md) collection | The calendar view for the calendar. Read-only. |
| conversations | [conversation](conversation.md) collection | The group's conversations. |
| createdOnBehalfOf | [directoryObject](directoryobject.md) | The user (or application) that created the group. NOTE: This property isn't set if the user is an administrator. Read-only. |
| drive | [drive](drive.md) | The group's default drive. Read-only. |
| drives | [drive](drive.md) collection | The group's drives. Read-only. |
| events | [event](event.md) collection | The group's calendar events. |
| extensions | [extension](extension.md) collection | The collection of open extensions defined for the group. Read-only. Nullable. |
| groupLifecyclePolicies | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | The collection of lifecycle policies for this group. Read-only. Nullable. |
| memberOf | [directoryObject](directoryobject.md) collection | Groups that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports `$expand`. |
| members | [directoryObject](directoryobject.md) collection | The members of this group, who can be users, devices, other groups, or service principals. Supports the [List members](../api/group-list-members.md), [Add member](../api/group-post-members.md), and [Remove member](../api/group-delete-members.md) operations. Nullable. <br/>Supports `$expand` including nested `$select`. For example, `/groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName)`. |
| membersWithLicenseErrors | [User](user.md) collection | A list of group members with license errors from this group-based license assignment. Read-only. |
| onenote | [Onenote](onenote.md) | Read-only. |
| owners | [directoryObject](directoryobject.md) collection | The owners of the group who can be users or service principals. Limited to 100 owners. Nullable. <li>If this property isn't specified when creating a Microsoft 365 group the calling user (admin or non-admin) is automatically assigned as the group owner. <li>A non-admin user can't explicitly add themselves to this collection when they're creating the group. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419). <li>For security groups, the admin user isn't automatically added to this collection. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419).<br/><br/> Supports `$filter` (`/$count eq 0`, `/$count ne 0`, `/$count eq 1`, `/$count ne 1`); Supports `$expand` including nested `$select`. For example, `/groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName)`. |
| photo | [profilePhoto](profilephoto.md) | The group's profile photo |
| photos | [profilePhoto](profilephoto.md) collection | The profile photos owned by the group. Read-only. Nullable. |
| planner | [plannerGroup](plannergroup.md) | Entry-point to Planner resource that might exist for a Unified Group. |
| rejectedSenders | [directoryObject](directoryobject.md) collection | The list of users or groups not allowed to create posts or calendar events in this group. Nullable |
| settings | [groupSetting](groupsetting.md) collection | Settings that can govern this group's behavior, like whether members can invite guests to the group. Nullable. |
| sites | [site](site.md) collection | The list of SharePoint sites in this group. Access the default site with /sites/root. |
| team | [channel](channel.md) collection | The team associated with this group. |
| threads | [conversationThread](conversationthread.md) collection | The group's conversation threads. Nullable. |
| transitiveMemberOf | [directoryObject](directoryobject.md) collection | The groups that a group is a member of, either directly or through nested membership. Nullable. |
| transitiveMembers | [directoryObject](directoryobject.md) collection | The direct and transitive members of a group. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true,
  "optionalProperties": [
    "acceptedSenders",
    "appRoleAssignments",
    "calendar",
    "calendarView",
    "conversations",
    "createdOnBehalfOf",
    "drive",
    "drives",
    "events",
    "extensions",
    "groupLifecyclePolicies",
    "isAssignableToRole",
    "memberOf",
    "members",
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
    "isSubscribedByMail",
    "licenseProcessingState",
    "unseenCount"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group",
  "@odata.annotations": [
    {
      "capabilities": {
        "changeTracking": true
      }
    },
    {
      "property": "acceptedSenders",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "calendar",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "calendarView",
      "capabilities": {
        "changeTracking": true,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "conversations",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "updatable": false
      }
    },
    {
      "property": "events",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "photo",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false
      }
    },
    {
      "property": "photos",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "rejectedSenders",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "threads",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false,
        "updatable": false
      }
    }
  ]
}-->

```json
{
  "allowExternalSenders": "Boolean",
  "acceptedSenders": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "assignedLicenses": [{ "@odata.type": "microsoft.graph.assignedLicense" }],
  "autoSubscribeNewMembers": "Boolean",
  "calendar": { "@odata.type": "microsoft.graph.calendar" },
  "calendarView": [{ "@odata.type": "microsoft.graph.event" }],
  "classification": "String",
  "conversations": [{ "@odata.type": "microsoft.graph.conversation" }],
  "createdDateTime": "String (timestamp)",
  "createdOnBehalfOf": { "@odata.type": "microsoft.graph.directoryObject" },
  "deletedDateTime":  "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "events": [{ "@odata.type": "microsoft.graph.event" }],
  "groupTypes": ["String"],
  "hasMembersWithLicenseErrors": "Boolean",
  "hideFromAddressLists": "Boolean",
  "hideFromOutlookClients": "Boolean",
  "id": "String (identifier)",
  "isAssignableToRole": "Boolean",
  "isManagementRestricted": "Boolean",
  "isSubscribedByMail": "Boolean",
  "licenseProcessingState": "String",
  "mail": "String",
  "mailEnabled": "Boolean",
  "mailNickname": "String",
  "memberOf": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "members": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "membersWithLicenseErrors": [{ "@odata.type": "microsoft.graph.user" }],
  "onPremisesDomainName": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesNetBiosName": "String",
  "onPremisesProvisioningErrors": [
    { "@odata.type": "microsoft.graph.onPremisesProvisioningError" }
  ],
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSyncEnabled": "Boolean",
  "owners": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "preferredDataLocation": "String",
  "proxyAddresses": ["String"],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "photos": [{ "@odata.type": "microsoft.graph.profilePhoto" }],
  "rejectedSenders": [{ "@odata.type": "microsoft.graph.directoryObject" }],
  "renewedDateTime": "String (timestamp)",
  "securityEnabled": "Boolean",
  "securityIdentifier": "String",
  "serviceProvisioningErrors": [
    { "@odata.type": "microsoft.graph.serviceProvisioningXmlError" }
  ],
  "sites": [{ "@odata.type": "microsoft.graph.site" }],
  "threads": [{ "@odata.type": "microsoft.graph.conversationThread" }],
  "uniqueName": "String",
  "unseenCount": "Int32",
  "visibility": "String"
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

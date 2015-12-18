# group resource type

Represents an Azure Active Directory Group. Inherited from **DirectoryObject**.


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "acceptedSenders",
    "appRoleAssignments",
    "calendar",
    "calendarView",
    "conversations",
    "createdOnBehalfOf",
    "drive",
    "events",
    "memberOf",
    "members",
    "notes",
    "owners",
    "photo",
    "photos",
    "plans",
    "rejectedSenders",
    "threads"
  ],
  "@odata.type": "microsoft.graph.group"
}-->

```json
{
  "accessType": "String",
  "allowExternalSenders": true,
  "autoSubscribeNewMembers": true,
  "description": "string",
  "displayName": "string",
  "groupTypes": ["string"],
  "id": "string (identifier)",
  "isFavorite": true,
  "isSubscribedByMail": true,
  "mail": "string",
  "mailEnabled": true,
  "mailNickname": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "proxyAddresses": ["string"],
  "securityEnabled": true,
  "unseenCount": 1024,
  "visibility": "string"
}

```
### Properties
| Property     | Type |Description|
|:---------------|:--------|:----------|
|accessType|String| Possible values are: `None`, `Private`, `Secret`, `Public`.|
|allowExternalSenders|Boolean||
|autoSubscribeNewMembers|Boolean||
|description|String|An optional description for the group. An optional description for the group.|
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).|
|displayName|String|The display name for the group. This property is required when a group is created and it cannot be cleared during updates.  The display name for the group. This property is required when a group is created and it cannot be cleared during updates. |
|groupTypes|String collection||
|isFavorite|Boolean||
|visibility|Boolean||
|isSubscribedByMail|Boolean||
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory. Indicates the last time at which the object was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|mail|String|The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com". The SMTP address for the group, for example, "serviceadmins@contoso.onmicrosoft.com".|
|mailEnabled|Boolean|Specifies whether the group is mail-enabled. If the **securityEnabled** property is also **true**, the group is a mail-enabled security group; otherwise, the group is a Microsoft Exchange distribution group. Only (pure) security groups can be created using Azure AD Graph. For this reason, the property must be set **false** when creating a group and it cannot be updated using Azure AD Graph. Specifies whether the group is mail-enabled. If the **securityEnabled** property is also **true**, the group is a mail-enabled security group; otherwise, the group is a Microsoft Exchange distribution group. Only (pure) security groups can be created using Azure AD Graph. For this reason, the property must be set **false** when creating a group and it cannot be updated using Azure AD Graph.|
|mailNickname|String|The mail alias for the group. This property must be specified when a group is created. The mail alias for the group. This property must be specified when a group is created.|
|id|String|The unique identifier for the group. Inherited from [directoryObject].                            **Notes**: **key**, immutable, not nullable, unique.             The unique identifier for the group. Inherited from [directoryObject].                            **Notes**: **key**, immutable, not nullable, unique.             Read-only.|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud.                            **Notes**: Requires version 1.5 or newer.             Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud.                            **Notes**: Requires version 1.5 or newer.            |
|proxyAddresses|String collection|                                        **Notes**: not nullable, the **any** operator is required for filter expressions on multi-valued properties; for more information, see [Supported Queries, Filters, and Paging Options](https://msdn.microsoft.com/library/azure/dn727074.aspx).                                                     **Notes**: not nullable, the **any** operator is required for filter expressions on multi-valued properties; for more information, see [Supported Queries, Filters, and Paging Options](https://msdn.microsoft.com/library/azure/dn727074.aspx).            |
|securityEnabled|Boolean|Specifies whether the group is a security group. If the mailEnabled property is also true, the group is a mail-enabled security group; otherwise it is a security group. Only (pure) security groups can be created using Azure AD Graph. For this reason, the property must be set **true** when creating a group. Specifies whether the group is a security group. If the mailEnabled property is also true, the group is a mail-enabled security group; otherwise it is a security group. Only (pure) security groups can be created using Azure AD Graph. For this reason, the property must be set **true** when creating a group.|
|unseenCount|Int32||

### Relationships
| Relationship | Type |Description|
|:---------------|:--------|:----------|
|acceptedSenders|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|calendar|[Calendar](calendar.md)| Read-only.|
|calendarView|[Event](event.md) collection| Read-only. Nullable.|
|conversations|[Conversation](conversation.md) collection| Read-only. Nullable.|
|createdOnBehalfOf|[directoryObject](directoryobject.md)| Read-only.|
|drive|[drive](drive.md)| Read-only.|
|events|[Event](event.md) collection| Read-only. Nullable.|
|memberOf|[directoryObject](directoryobject.md) collection|Groups that this group is a member of. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups)  Groups that this group is a member of. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups)  Read-only. Nullable.|
|members|[directoryObject](directoryobject.md) collection|Users, contacts, and groups that are members of this group. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Users, contacts, and groups that are members of this group. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable.|
|notes|[Notes](notes.md)| Read-only.|
|owners|[directoryObject](directoryobject.md) collection|The owners of the group. The owners are a set of non-admin users who are allowed to modify this object. Requires version 2013-11-08 or newer. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) The owners of the group. The owners are a set of non-admin users who are allowed to modify this object. Requires version 2013-11-08 or newer. Inherited from [directoryObject].            HTTP Methods: GET (supported for all groups), POST (supported for security groups and mail-enabled security groups), DELETE (supported only for security groups) Read-only. Nullable.|
|photo|[Photo](photo.md)| Read-only.|
|photos|[Photo](photo.md) collection| Read-only. Nullable.|
|plans|[plan](plan.md) collection| Read-only. Nullable. Plans owned by the group. A group can own no more than one plan. |
|rejectedSenders|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|threads|[ConversationThread](conversationthread.md) collection| Read-only. Nullable.|

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get group](../api/group_get.md) | [group](group.md) |Read properties and relationships of group object.|
|[Create group](../api/group_post_groups.md) | [group](group.md) |Create a new group by posting to the groups collection.|
|[Update group](../api/group_update.md) | [group](group.md) |Update group object. |
|[Delete group](../api/group_delete.md) | None |Delete group object. |
|[Create acceptedSender](../api/group_post_acceptedsenders.md) |[directoryObject](directoryobject.md)| Create a new acceptedSender by posting to the acceptedSenders collection.|
|[List acceptedSenders](../api/group_list_acceptedsenders.md) |[directoryObject](directoryobject.md) collection| Get a acceptedSender object collection.|
|[Create appRoleAssignment](../api/group_post_approleassignments.md) |[appRoleAssignment](approleassignment.md)| Create a new appRoleAssignment by posting to the appRoleAssignments collection.|
|[List appRoleAssignments](../api/group_list_approleassignments.md) |[appRoleAssignment](approleassignment.md) collection| Get a appRoleAssignment object collection.|
|[Create Event](../api/group_post_calendarview.md) |[Event](event.md)| Create a new Event by posting to the calendarView collection.|
|[List calendarView](../api/group_list_calendarview.md) |[Event](event.md) collection| Get a Event object collection.|
|[Create Conversation](../api/group_post_conversations.md) |[Conversation](conversation.md)| Create a new Conversation by posting to the conversations collection.|
|[List conversations](../api/group_list_conversations.md) |[Conversation](conversation.md) collection| Get a Conversation object collection.|
|[Create Event](../api/group_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List events](../api/group_list_events.md) |[Event](event.md) collection| Get a Event object collection.|
|[Create memberOf](../api/group_post_memberof.md) |[directoryObject](directoryobject.md)| Create a new memberOf by posting to the memberOf collection.|
|[List memberOf](../api/group_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Create member](../api/group_post_members.md) |[directoryObject](directoryobject.md)| Create a new member by posting to the members collection.|
|[List members](../api/group_list_members.md) |[directoryObject](directoryobject.md) collection| Get a member object collection.|
|[Create owner](../api/group_post_owners.md) |[directoryObject](directoryobject.md)| Create a new owner by posting to the owners collection.|
|[List owners](../api/group_list_owners.md) |[directoryObject](directoryobject.md) collection| Get a owner object collection.|
|[Create photo](../api/group_post_photos.md) |[Photo](photo.md)| Create a new photo by posting to the photos collection.|
|[List photos](../api/group_list_photos.md) |[Photo](photo.md) collection| Get a photo object collection.|
|[List plans](../api/group_list_plans.md) |[plan](plan.md) collection| Get a plan object collection.|
|[Create rejectedSender](../api/group_post_rejectedsenders.md) |[directoryObject](directoryobject.md)| Create a new rejectedSender by posting to the rejectedSenders collection.|
|[List rejectedSenders](../api/group_list_rejectedsenders.md) |[directoryObject](directoryobject.md) collection| Get a rejectedSender object collection.|
|[Create thread](../api/group_post_threads.md) |[ConversationThread](conversationthread.md)| Create a new thread by posting to the threads collection.|
|[List threads](../api/group_list_threads.md) |[ConversationThread](conversationthread.md) collection| Get a thread object collection.|
|[Update](../api/group_update.md) | [group](group.md) |Update group object. |
|[Delete](../api/group_delete.md) | None |Delete group object. |
|[Checkmembergroups](../api/group_checkmembergroups.md)|String collection||
|[Get MemberGroups](../api/group_getmembergroups.md)|String collection||
|[Get MemberObjects](../api/group_getmemberobjects.md)|String collection||
|[addFavorite](../api/group_addfavorite.md)|None|Add the group to the list of the current user's favorite groups. |
|[removeFavorite](../api/group_removefavorite.md)|None|Remove the group from the list of the current user's favorite groups. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "group resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
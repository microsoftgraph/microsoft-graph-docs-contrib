---
title: "calendarPermission resource type"
description: "The permissions of a user with whom the calendar is shared."
author: "iamgirishck"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: "resourcePageType"
---

# calendarPermission resource type

Namespace: microsoft.graph

The permissions of a user with whom the calendar has been shared or delegated in an Outlook client.

List, create, get, update, and delete of calendar permissions is supported on behalf of only the calendar owner.

Getting the calendar permissions of a calendar on behalf of a recipient or delegate returns an empty calendar permissions collection.

Once a share recipient or delegate has been set up for a calendar, you can [update](../api/calendarpermission-update.md) only the **role** property to change the permissions of a recipient or delegate. You can't **update** the **allowedRoles**, **emailAddress**, **isInsideOrganization**, or **isRemovable** property. To change these properties, you should [delete](../api/calendarpermission-delete.md) the corresponding **calendarPermission** object and create another recipient or delegate in an Outlook client.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/calendar-list-calendarpermissions.md) | [calendarPermission](calendarpermission.md) | Get a collection of calendarPermission objects that describe the identity and roles of users with whom the specified calendar has been shared or delegated. |
| [Create](../api/calendar-post-calendarpermissions.md) | [calendarPermission](calendarpermission.md) | Create calendarPermission object. |
| [Get calendarPermission](../api/calendarpermission-get.md) | [calendarPermission](calendarpermission.md) | Read properties and relationships of calendarPermission object. |
| [Update](../api/calendarpermission-update.md) | [calendarPermission](calendarpermission.md) | Update calendarPermission object. |
| [Delete](../api/calendarpermission-delete.md) | None | Delete calendarPermission object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedRoles|[calendarRoleType](#calendarroletype-values) collection| List of allowed sharing or delegating permission levels for the calendar. Possible values are: `none`, `freeBusyRead`, `limitedRead`, `read`, `write`, `delegateWithoutPrivateEventAccess`, `delegateWithPrivateEventAccess`, `custom`.|
|emailAddress|[emailAddress](emailaddress.md)| Represents a share recipient or delegate who has access to the calendar. For the "My Organization" share recipient, the **address** property is null. Read-only. |
|id|String| The unique identifier of the user (recipient or delegate) with whom the calendar has been shared. Read-only.|
|isInsideOrganization|Boolean| True if the user in context (recipient or delegate) is inside the same organization as the calendar owner.|
|isRemovable|Boolean| `True` if the user can be removed from the list of recipients or delegates for the specified calendar, `false` otherwise. The "My organization" user determines the permissions other people within your organization have to the given calendar. You can't remove "My organization" as a share recipient to a calendar.|
|role|[calendarRoleType](#calendarroletype-values)| Current permission level of the calendar share recipient or delegate. |

### calendarRoleType values

| Member        | Description |
|:--------------|:------------|
| none | Calendar isn't shared with the user. |
| freeBusyRead | User is a recipient who can view free/busy status of the owner on the calendar. |
| limitedRead | User is a recipient who can view free/busy status, and titles and locations of the events on the calendar. |
| read | User is a recipient who can view all the details of the events on the calendar, except for the owner's private events. |
| write | User is a recipient who can view all the details (except for private events) and edit events on the calendar. |
| delegateWithoutPrivateEventAccess | User is a delegate who has write access but can't view information of the owner's private events on the calendar. |
| delegateWithPrivateEventAccess | User is a delegate who has write access and can view information of the owner's private events on the calendar. |
| custom | User has custom permissions to the calendar. |

## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.calendarPermission",
  "keyProperty": "id"
}-->

```json
{
  "allowedRoles": ["string"],
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"},
  "id": "String (identifier)",
  "isInsideOrganization": "boolean",
  "isRemovable": "boolean",
  "role": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "calendarPermission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

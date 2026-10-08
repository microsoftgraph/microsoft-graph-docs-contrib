---
title: "bookingStaffMember resource type"
description: "Represents a staff member who provides services in a bookingBusiness."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingStaffMember resource type

Namespace: microsoft.graph

Represents a staff member who provides services in a [bookingBusiness](bookingbusiness.md). 

Staff members can be part of the Microsoft 365 tenant where the **booking business** is configured, or they can use email services from other email providers.

When booking appointments, the Bookings API considers the following settings to determine a staff member's availability: 

1. By default, the hours of operation of the business (the **businessHours** property of the [bookingBusiness](bookingbusiness.md) entity) represent the general availability of the staff member.
2. If **useBusinessHours** is false, then the staff member's specific work hours (**workingHours** property of the **bookingStaffmember** entity) represent that member's general availability.
3. If **availabilityIsAffectedByPersonalCalendar** is true, then the Bookings API would first look at the staff member's generally available hours (as determined by either #1 or #2), and verify availability during those hours in the staff member's personal calendar, before making a booking.

Inherits from [bookingStaffMemberBase](bookingstaffmemberbase.md).

Microsoft Bookings supports a maximum of 100 staff members in a booking calendar.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/bookingbusiness-list-staffmembers.md) | [bookingStaffMember](bookingstaffmember.md) collection | Get a list of **bookingStaffMember** objects in the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Create](../api/bookingbusiness-post-staffmembers.md) | [bookingStaffMember](bookingstaffmember.md) collection | Create a new **bookingStaffMember** in the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Get](../api/bookingstaffmember-get.md) | [bookingStaffMember](bookingstaffmember.md) |Get the properties and relationships of a **bookingStaffMember** in the specified [bookingBusiness](../resources/bookingbusiness.md).|
|[Update](../api/bookingstaffmember-update.md) | None	|Update the properties of a **bookingStaffMember** in the specified [bookingBusiness](../resources/bookingbusiness.md).|
|[Delete](../api/bookingstaffmember-delete.md) | None |Delete a staff member in the specified [bookingBusiness](../resources/bookingbusiness.md). |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|availabilityIsAffectedByPersonalCalendar|Boolean|True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking. |
|createdDateTime|DateTimeOffset|The date, time, and time zone when the staff member was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The name of the staff member, as displayed to customers. Required.|
|emailAddress|String|The email address of the staff member. This email address can be in the same Microsoft 365 tenant as the business, or in a different email domain. This email address can be used if the **sendConfirmationsToOwner** property is set to true in the scheduling policy of the business. Required.|
|id|String| The ID of the staff member, in a GUID format. Read-only.|
|isEmailNotificationEnabled|Boolean|Indicates that a staff member is notified via email when a booking assigned to them is created or changed. The default value is `true`.|
|membershipStatus|bookingStaffMembershipStatus| The membership status of the staff member in the business. The possible values are: `active`, `pendingAcceptance`, `rejectedByStaff`, `unknownFutureValue`. |
|lastUpdatedDateTime|DateTimeOffset|The date, time, and time zone when the staff member was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|role|bookingStaffRole| The role of the staff member in the business. The possible values are: `guest`, `administrator`, `viewer`, `externalGuest`, `unknownFutureValue`, `scheduler`, `teamMember`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `scheduler`, `teamMember`. Required. |
|timeZone|String|The time zone of the staff member. For a list of possible values, see [dateTimeTimeZone](datetimetimezone.md).|
|useBusinessHours|Boolean|True means the staff member's availability is as specified in the **businessHours** property of the business. False means the availability is determined by the staff member's **workingHours** property setting.|
|workingHours|[bookingWorkHours](bookingworkhours.md) collection|The range of hours each day of the week that the staff member is available for booking. By default, they're initialized to be the same as the **businessHours** property of the business.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingStaffMember",
  "baseType": "microsoft.graph.bookingStaffMemberBase"
}-->

```json
{
  "@odata.type": "#microsoft.graph.bookingStaffMember",
  "availabilityIsAffectedByPersonalCalendar": "Boolean",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "isEmailNotificationEnabled": "Boolean",
  "lastUpdatedDateTime": "String (timestamp)",
  "role": "String",
  "timeZone": "String",
  "useBusinessHours": "Boolean",
  "workingHours": [{"@odata.type": "microsoft.graph.bookingWorkHours"}]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingStaffMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



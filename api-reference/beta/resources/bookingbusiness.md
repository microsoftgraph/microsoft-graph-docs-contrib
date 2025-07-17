---
title: "bookingBusiness resource type"
description: "Represents a business in Microsoft Bookings."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# bookingBusiness resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents a business in Microsoft Bookings. This is the top level object in the Microsoft Bookings API. It contains business information and related business objects such as appointments, customers, services, and staff members.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List bookingBusinesses](../api/bookingbusiness-list.md) | [bookingBusiness](bookingbusiness.md) collection |Get a collection of bookingbusiness objects in the tenant. |
|[Create bookingBusiness](../api/bookingbusiness-post-bookingbusinesses.md) | [bookingBusiness](bookingbusiness.md) | Create a new Microsoft Bookings business. |
|[Get bookingBusiness](../api/bookingbusiness-get.md) | [bookingBusiness](bookingbusiness.md) |Read properties and relationships of bookingBusiness object.|
|[Update](../api/bookingbusiness-update.md) | [bookingBusiness](bookingbusiness.md)	|Update the properties of a  **bookingBusiness** object. |
|[Delete](../api/bookingbusiness-delete.md) | None |Delete a **bookingBusiness** object. |
|[Create bookingAppointment](../api/bookingbusiness-post-appointments.md) |[bookingAppointment](bookingappointment.md)| Create a new bookingAppointment by posting to the appointments collection.|
|[List appointments](../api/bookingbusiness-list-appointments.md) |[bookingAppointment](bookingappointment.md) collection| Get a bookingAppointment object collection.|
|[Create bookingCustomer](../api/bookingbusiness-post-customers.md) |[bookingCustomer](bookingcustomer.md)| Create a new bookingCustomer by posting to the customers collection.|
|[List customers](../api/bookingbusiness-list-customers.md) |[bookingCustomer](bookingcustomer.md) collection| Get a bookingCustomer object collection.|
|[Create bookingService](../api/bookingbusiness-post-services.md) |[bookingService](bookingservice.md)| Create a new bookingService by posting to the services collection.|
|[List services](../api/bookingbusiness-list-services.md) |[bookingService](bookingservice.md) collection| Get a bookingService object collection.|
|[Create bookingStaffMember](../api/bookingbusiness-post-staffmembers.md) |[bookingStaffMember](bookingstaffmember.md)| Create a new bookingStaffMember by posting to the staffMembers collection.|
|[List staffMembers](../api/bookingbusiness-list-staffmembers.md) |[bookingStaffMember](bookingstaffmember.md) collection| Get a bookingStaffMember object collection.|
|[List customQuestions](../api/bookingbusiness-list-customquestions.md)|[bookingCustomQuestion](../resources/bookingcustomquestion.md) collection|Get the **bookingCustomQuestion** resources from the **customQuestions** navigation property.|
|[Create bookingCustomQuestion](../api/bookingbusiness-post-customquestions.md)|[bookingCustomQuestion](../resources/bookingcustomquestion.md)|Create a new **bookingCustomQuestion** object.|
|[List calendarView](../api/bookingbusiness-list-calendarview.md)|[bookingAppointment](bookingappointment.md) collection|Get the collection of **bookingAppointment** objects that occurs in the specified date range.|
|[publish](../api/bookingbusiness-publish.md)|None|Make the scheduling page of this business available to external customers. Set the **isPublished** property to true, and **publicUrl** property to the URL of the scheduling page.|
|[unpublish](../api/bookingbusiness-unpublish.md)|None| Make the scheduling page of this business not available to external customers. Set the **isPublished** property to false, and **publicUrl** property to null.|
|[Get staff availability](../api/bookingbusiness-getstaffavailability.md) |[staffAvailabilityItem](staffavailabilityitem.md) collection| Get the availability information of staff members of a Microsoft Bookings calendar.|
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|[physicalAddress](physicaladdress.md)|The street address of the business. The **address** property, together with **phone** and **webSiteUrl**, appear in the footer of a business scheduling page.|
|bookingPageSettings|[bookingPageSettings](../resources/bookingpagesettings.md)|Settings for the published booking page.|
|businessHours|[bookingWorkHours](bookingworkhours.md) collection|The hours of operation for the business.|
|businessType|String|The type of business.|
|createdDateTime|DateTimeOffset|The date, time and timezone when the booking business was created.|
|defaultCurrencyIso|String|The code for the currency that the business operates in on Microsoft Bookings.|
|displayName|String|The name of the business, which interfaces with customers. This name appears at the top of the business scheduling page.|
|email|String|The email address for the business.|
|id|String|A unique programmatic identifier for the business. Read-only.|
|isPublished|Boolean|The scheduling page has been made available to external customers. Use the **publish** and **unpublish** actions to set this property. Read-only.|
|languageTag|String|The language of the self service booking page|
|lastUpdatedDateTime|DateTimeOffset|The date, time and timezone when the booking business was last updated.|
|phone|String|The telephone number for the business. The **phone** property, together with **address** and **webSiteUrl**, appear in the footer of a business scheduling page.|
|publicUrl|String|The URL for the scheduling page, which is set after you [publish](../api/bookingbusiness-publish.md) or [unpublish](../api/bookingbusiness-unpublish.md) the page. Read-only.|
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)|Specifies how bookings can be created for this business.|
|webSiteUrl|String|The URL of the business web site. The **webSiteUrl** property, together with **address**, **phone**, appear in the footer of a business scheduling page.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|appointments|[bookingAppointment](bookingappointment.md) collection| All the appointments of this business. Read-only. Nullable.|
|calendarView|[bookingAppointment](bookingappointment.md) collection| The set of appointments of this business in a specified date range. Read-only. Nullable.|
|customers|[bookingCustomer](bookingcustomer.md) collection| All the customers of this business. Read-only. Nullable.|
|services|[bookingService](bookingservice.md) collection| All the services offered by this business. Read-only. Nullable.|
|staffMembers|[bookingStaffMember](bookingstaffmember.md) collection| All the staff members that provide services in this business. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingBusiness"
}-->

``` json
{
  "@odata.type": "#microsoft.graph.bookingBusiness",
  "id": "String (identifier)",
  "displayName": "String",
  "businessType": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "phone": "String",
  "email": "String",
  "webSiteUrl": "String",
  "defaultCurrencyIso": "String",
  "businessHours": [
    {
      "@odata.type": "microsoft.graph.bookingWorkHours"
    }
  ],
  "languageTag": "String",
  "schedulingPolicy": {
    "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
  },
  "bookingPageSettings": {
    "@odata.type": "microsoft.graph.bookingPageSettings"
  },
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "isPublished": "Boolean",
  "publicUrl": "String"
}
```

## Related content


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingBusiness resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



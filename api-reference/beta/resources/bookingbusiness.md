---
title: "bookingBusiness resource type"
description: "Represents a business in Microsoft Bookings."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingBusiness resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [bookingNamedEntity](../resources/bookingnamedentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingBusiness objects](../api/solutionsroot-list-bookingbusinesses.md)|[bookingBusiness](../resources/bookingbusiness.md) collection|Get a list of the [bookingBusiness](../resources/bookingbusiness.md) objects and their properties.|
|[Create bookingBusiness](../api/bookingbusiness-post-bookingbusinesses.md)|[bookingBusiness](../resources/bookingbusiness.md)|Create a new [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Get bookingBusiness](../api/bookingbusiness-get.md)|[bookingBusiness](../resources/bookingbusiness.md)|Read the properties and relationships of a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Update bookingBusiness](../api/bookingbusiness-update.md)|[bookingBusiness](../resources/bookingbusiness.md)|Update the properties of a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Delete bookingBusiness](../api/solutionsroot-delete-bookingbusinesses.md)|None|Delete a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[publish](../api/bookingbusiness-publish.md)|None|**TODO: Add Description**|
|[unpublish](../api/bookingbusiness-unpublish.md)|None|**TODO: Add Description**|
|[getStaffAvailability](../api/bookingbusiness-getstaffavailability.md)|[staffAvailabilityItem](../resources/staffavailabilityitem.md) collection|**TODO: Add Description**|
|[List appointments](../api/bookingbusiness-list-appointments.md)|[bookingAppointment](../resources/bookingappointment.md) collection|Get the bookingAppointment resources from the appointments navigation property.|
|[Create bookingAppointment](../api/bookingbusiness-post-appointments.md)|[bookingAppointment](../resources/bookingappointment.md)|Create a new bookingAppointment object.|
|[List calendarView](../api/bookingbusiness-list-calendarview.md)|[bookingAppointment](../resources/bookingappointment.md) collection|Get the bookingAppointment resources from the calendarView navigation property.|
|[Create bookingAppointment](../api/bookingbusiness-post-calendarview.md)|[bookingAppointment](../resources/bookingappointment.md)|Create a new bookingAppointment object.|
|[List customers](../api/bookingbusiness-list-customers.md)|[bookingCustomer](../resources/bookingcustomer.md) collection|Get the bookingCustomer resources from the customers navigation property.|
|[Create bookingCustomer](../api/bookingbusiness-post-customers.md)|[bookingCustomer](../resources/bookingcustomer.md)|Create a new bookingCustomer object.|
|[List customQuestions](../api/bookingbusiness-list-customquestions.md)|[bookingCustomQuestion](../resources/bookingcustomquestion.md) collection|Get the bookingCustomQuestion resources from the customQuestions navigation property.|
|[Create bookingCustomQuestion](../api/bookingbusiness-post-customquestions.md)|[bookingCustomQuestion](../resources/bookingcustomquestion.md)|Create a new bookingCustomQuestion object.|
|[List services](../api/bookingbusiness-list-services.md)|[bookingService](../resources/bookingservice.md) collection|Get the bookingService resources from the services navigation property.|
|[Create bookingService](../api/bookingbusiness-post-services.md)|[bookingService](../resources/bookingservice.md)|Create a new bookingService object.|
|[List staffMembers](../api/bookingbusiness-list-staffmembers.md)|[bookingStaffMember](../resources/bookingstaffmember.md) collection|Get the bookingStaffMember resources from the staffMembers navigation property.|
|[Create bookingStaffMember](../api/bookingbusiness-post-staffmembers.md)|[bookingStaffMember](../resources/bookingstaffmember.md)|Create a new bookingStaffMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description**|
|bookingPageSettings|[bookingPageSettings](../resources/bookingpagesettings.md)|**TODO: Add Description**|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|**TODO: Add Description**|
|businessType|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|defaultCurrencyIso|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isPublished|Boolean|**TODO: Add Description**|
|languageTag|String|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|phone|String|**TODO: Add Description**|
|publicUrl|String|**TODO: Add Description**|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|**TODO: Add Description**|
|webSiteUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appointments|[bookingAppointment](../resources/bookingappointment.md) collection|**TODO: Add Description**|
|calendarView|[bookingAppointment](../resources/bookingappointment.md) collection|**TODO: Add Description**|
|customers|[bookingCustomer](../resources/bookingcustomer.md) collection|**TODO: Add Description**|
|customQuestions|[bookingCustomQuestion](../resources/bookingcustomquestion.md) collection|**TODO: Add Description**|
|services|[bookingService](../resources/bookingservice.md) collection|**TODO: Add Description**|
|staffMembers|[bookingStaffMember](../resources/bookingstaffmember.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingBusiness",
  "baseType": "microsoft.graph.bookingNamedEntity",
  "openType": false
}
-->
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

## See also
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

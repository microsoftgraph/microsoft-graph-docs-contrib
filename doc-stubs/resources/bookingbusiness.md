---
title: "bookingBusiness resource type"
description: "Represents a Microsot Bookings Business.
The bookingBusiness is the top level object which contains business information and related business objects such as appointments, customers, services and staff members."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookingBusiness resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsot Bookings Business.
The bookingBusiness is the top level object which contains business information and related business objects such as appointments, customers, services and staff members.


Inherits from [bookingNamedEntity](../resources/bookingnamedentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookingBusinesses](../api/bookingbusiness-list.md)|[bookingBusiness](../resources/bookingbusiness.md) collection|Get a list of the [bookingBusiness](../resources/bookingbusiness.md) objects and their properties.|
|[Create bookingBusiness](../api/bookingbusiness-post-bookingbusinesses.md)|[bookingBusiness](../resources/bookingbusiness.md)|Create a new [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Get bookingBusiness](../api/bookingbusiness-get.md)|[bookingBusiness](../resources/bookingbusiness.md)|Read the properties and relationships of a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Update bookingBusiness](../api/bookingbusiness-update.md)|[bookingBusiness](../resources/bookingbusiness.md)|Update the properties of a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[Delete bookingBusiness](../api/bookingbusiness-delete.md)|None|Deletes a [bookingBusiness](../resources/bookingbusiness.md) object.|
|[List appointments](../api/bookingbusiness-list-appointments.md)|[bookingAppointment](../resources/bookingappointment.md) collection|Get the bookingAppointment resources from the appointments navigation property.|
|[Create bookingAppointment](../api/bookingbusiness-post-appointments.md)|[bookingAppointment](../resources/bookingappointment.md)|Create a new bookingAppointment object.|
|[List calendarView](../api/bookingbusiness-list-calendarview.md)|[bookingAppointment](../resources/bookingappointment.md) collection|Get the bookingAppointment resources from the calendarView navigation property.|
|[Create bookingAppointment](../api/bookingbusiness-post-calendarview.md)|[bookingAppointment](../resources/bookingappointment.md)|Create a new bookingAppointment object.|
|[List customers](../api/bookingbusiness-list-customers.md)|[bookingCustomer](../resources/bookingcustomer.md) collection|Get the bookingCustomer resources from the customers navigation property.|
|[Create bookingCustomer](../api/bookingbusiness-post-customers.md)|[bookingCustomer](../resources/bookingcustomer.md)|Create a new bookingCustomer object.|
|[List services](../api/bookingbusiness-list-services.md)|[bookingService](../resources/bookingservice.md) collection|Get the bookingService resources from the services navigation property.|
|[Create bookingService](../api/bookingbusiness-post-services.md)|[bookingService](../resources/bookingservice.md)|Create a new bookingService object.|
|[List staffMembers](../api/bookingbusiness-list-staffmembers.md)|[bookingStaffMember](../resources/bookingstaffmember.md) collection|Get the bookingStaffMember resources from the staffMembers navigation property.|
|[Create bookingStaffMember](../api/bookingbusiness-post-staffmembers.md)|[bookingStaffMember](../resources/bookingstaffmember.md)|Create a new bookingStaffMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|[physicalAddress](../resources/physicaladdress.md)|**TODO: Add Description**|
|businessHours|[bookingWorkHours](../resources/bookingworkhours.md) collection|**TODO: Add Description**|
|businessType|String|**TODO: Add Description**|
|defaultCurrencyIso|String|**TODO: Add Description**|
|displayName|String|Display name of this entity.
The display name is suitable for human-readable interfaces. Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|email|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [bookingNamedEntity](../resources/bookingnamedentity.md).|
|isPublished|Boolean|**TODO: Add Description**|
|phone|String|**TODO: Add Description**|
|publicUrl|String|**TODO: Add Description**|
|schedulingPolicy|[bookingSchedulingPolicy](../resources/bookingschedulingpolicy.md)|**TODO: Add Description**|
|webSiteUrl|String|The URL of the business web site.
Example: https://www.contoso.com|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appointments|[bookingAppointment](../resources/bookingappointment.md) collection|All appointments in this business.|
|calendarView|[bookingAppointment](../resources/bookingappointment.md) collection|A calendar view of appointments in this business.|
|customers|[bookingCustomer](../resources/bookingcustomer.md) collection|All customers of this business.|
|services|[bookingService](../resources/bookingservice.md) collection|All services offered by this business.|
|staffMembers|[bookingStaffMember](../resources/bookingstaffmember.md) collection|All staff members that provides services in this business.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookingBusiness",
  "baseType": "microsoft.bookings.api.bookingNamedEntity",
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
  "schedulingPolicy": {
    "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
  },
  "isPublished": "Boolean",
  "publicUrl": "String"
}
```


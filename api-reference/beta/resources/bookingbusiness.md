# bookingBusiness resource type

Represents the top level object in the Microsoft Bookings API. It contains business information and related business objects such as appointments, customers, services, and staff members.

<!--
Microsoft Bookings provides online and mobile apps that make appointment scheduling simple and efficient for small businesses and their customers. Any small business that provides service on an appointment basis, such as auto repair shops, consultants, dental offices, hair salons, and law firms, can benefit from having their bookings managed so as to free up time for the more important task to grow their business.

Streamline appointment booking 
Never miss a customer booking when you're away from the phone or your business is closed. Customers can book appontments any time directly on your company's web site, on Facebook, or on a mobile app.

Reduce no-shows and increase productivity for your staff
Customers can reschedule appointments within any lead time you specify for bookings and cancellations. Automated appointment confirmations and reminders can decrease no-shows, and let your staff make better use of their production hours. 

Manage customer information and relationships
Completing an appointment automatically checks to see if the customer is already on your customer list, and if not, adds the customer's name and email address to the list. This makes it convenient to stay in touch with your customers, and send periodic newsletters or other promotional material.


-->


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bookingBusiness](../api/bookingbusiness_get.md) | [bookingBusiness](bookingbusiness.md) |Read properties and relationships of bookingBusiness object.|
|[Create bookingAppointment](../api/bookingbusiness_post_appointments.md) |[bookingAppointment](bookingappointment.md)| Create a new bookingAppointment by posting to the appointments collection.|
|[List appointments](../api/bookingbusiness_list_appointments.md) |[bookingAppointment](bookingappointment.md) collection| Get a bookingAppointment object collection.|
|[Create bookingCustomer](../api/bookingbusiness_post_customers.md) |[bookingCustomer](bookingcustomer.md)| Create a new bookingCustomer by posting to the customers collection.|
|[List customers](../api/bookingbusiness_list_customers.md) |[bookingCustomer](bookingcustomer.md) collection| Get a bookingCustomer object collection.|
|[Create bookingService](../api/bookingbusiness_post_services.md) |[bookingService](bookingservice.md)| Create a new bookingService by posting to the services collection.|
|[List services](../api/bookingbusiness_list_services.md) |[bookingService](bookingservice.md) collection| Get a bookingService object collection.|
|[Create bookingStaffMember](../api/bookingbusiness_post_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md)| Create a new bookingStaffMember by posting to the staffMembers collection.|
|[List staffMembers](../api/bookingbusiness_list_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md) collection| Get a bookingStaffMember object collection.|
|[Update](../api/bookingbusiness_update.md) | [bookingBusiness](bookingbusiness.md)	|Update bookingBusiness object. |
|[Delete](../api/bookingbusiness_delete.md) | None |Delete bookingBusiness object. |
|[Getcalendarview](../api/bookingbusiness_getcalendarview.md)|[bookingAppointment](bookingappointment.md) collection||
|[Getcalendarview](../api/bookingbusiness_getcalendarview.md)|[bookingAppointment](bookingappointment.md) collection||
|[Publish](../api/bookingbusiness_publish.md)|None||
|[Unpublish](../api/bookingbusiness_unpublish.md)|None||

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|[physicalAddress](physicaladdress.md)|Represents the street address of the business.|
|businessHours|[bookingWorkHours](bookingworkhours.md) collection|The hours of operation for the business.|
|businessType|String|The type of business|
|defaultCurrencyIso|String||
|displayName|String||
|email|String||
|id|String| Read-only.|
|isPublished|Boolean||
|phone|String||
|publicUrl|String||
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)||
|webSiteUrl|String||

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|appointments|[bookingAppointment](bookingappointment.md) collection| Read-only. Nullable.|
|customers|[bookingCustomer](bookingcustomer.md) collection| Read-only. Nullable.|
|services|[bookingService](bookingservice.md) collection| Read-only. Nullable.|
|staffMembers|[bookingStaffMember](bookingstaffmember.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingBusiness"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "businessHours": [{"@odata.type": "microsoft.graph.bookingWorkHours"}],
  "businessType": "String",
  "defaultCurrencyIso": "String",
  "displayName": "String",
  "email": "String",
  "id": "String (identifier)",
  "isPublished": true,
  "phone": "String",
  "publicUrl": "String",
  "schedulingPolicy": {"@odata.type": "microsoft.graph.bookingSchedulingPolicy"},
  "webSiteUrl": "String"
}

```

## See also


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingBusiness resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
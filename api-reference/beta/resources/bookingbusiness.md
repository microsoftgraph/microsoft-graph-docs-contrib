# bookingBusiness resource type

Represents a business in Microsoft Bookings. This is the top level object in the Microsoft Bookings API. It contains business information and related business objects such as appointments, customers, services, and staff members.

<!--
Microsoft Bookings provides online and mobile apps that make appointment scheduling simple and efficient for small businesses and their customers. Any small business that provides service on an appointment basis, such as auto repair shops, consultants, dental offices, hair salons, and law firms, can benefit from having their bookings managed so as to free up time for the more important task to grow their business.

Streamline appointment booking 
Never miss a customer booking when you're away from the phone or your business is closed. Customers can book appontments any time directly on your company's web site, on Facebook, or on a mobile app.

Reduce no-shows and increase productivity for your staff
Customers can reschedule appointments within any lead time you specify for bookings and cancellations. Automated appointment confirmations and reminders can decrease no-shows, and let your staff make better use of their production hours. 

Manage customer information and relationships
Completing an appointment automatically checks to see if the customer is already on your customer list, and if not, adds the customer's name and email address to the list. This makes it convenient to stay in touch with your customers, and send periodic newsletters or other promotional material.

Add link in See Also section to concept topic and API overview.

-->


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List bookingBusinesses](../api/bookingbusiness_list.md) | [bookingBusiness](bookingbusiness.md) collection |Get a collection of bookingbusiness objects in the tenant. |
|[Create bookingBusiness](../api/bookingbusiness_post_bookingbusinesses.md) | [bookingBusiness](bookingbusiness.md) | Create a new Microsoft Bookings business. |
|[Get bookingBusiness](../api/bookingbusiness_get.md) | [bookingBusiness](bookingbusiness.md) |Read properties and relationships of bookingBusiness object.|
|[Update](../api/bookingbusiness_update.md) | [bookingBusiness](bookingbusiness.md)	|Update properties in a **bookingBusiness** object. |
|[Delete](../api/bookingbusiness_delete.md) | None |Delete a **bookingBusiness** object. |
|[Create bookingAppointment](../api/bookingbusiness_post_appointments.md) |[bookingAppointment](bookingappointment.md)| Create a new bookingAppointment by posting to the appointments collection.|
|[List appointments](../api/bookingbusiness_list_appointments.md) |[bookingAppointment](bookingappointment.md) collection| Get a bookingAppointment object collection.|
|[Create bookingCustomer](../api/bookingbusiness_post_customers.md) |[bookingCustomer](bookingcustomer.md)| Create a new bookingCustomer by posting to the customers collection.|
|[List customers](../api/bookingbusiness_list_customers.md) |[bookingCustomer](bookingcustomer.md) collection| Get a bookingCustomer object collection.|
|[Create bookingService](../api/bookingbusiness_post_services.md) |[bookingService](bookingservice.md)| Create a new bookingService by posting to the services collection.|
|[List services](../api/bookingbusiness_list_services.md) |[bookingService](bookingservice.md) collection| Get a bookingService object collection.|
|[Create bookingStaffMember](../api/bookingbusiness_post_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md)| Create a new bookingStaffMember by posting to the staffMembers collection.|
|[List staffMembers](../api/bookingbusiness_list_staffmembers.md) |[bookingStaffMember](bookingstaffmember.md) collection| Get a bookingStaffMember object collection.|
|[getCalendarView](../api/bookingbusiness_getcalendarview.md)|[bookingAppointment](bookingappointment.md) collection|Get the collection of **bookingAppointment** that occurs in the specified date range.|
|[publish](../api/bookingbusiness_publish.md)|None|Make the scheduling page of this business available to external customers. Set the **isPublished** property to true, and **publicUrl** property to the URL of the scheduling page.|
|[unpublish](../api/bookingbusiness_unpublish.md)|None| Make the scheduling page of this business not available to external customers. Set the **isPublished** property to false, and **publicUrl** property to null.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|[physicalAddress](physicaladdress.md)|The street address of the business.|
|businessHours|[bookingWorkHours](bookingworkhours.md) collection|The hours of operation for the business.|
|businessType|String|The type of business.|
|defaultCurrencyIso|String|The code for the currency that the business operates in on Microsoft Bookings.|
|displayName|String|A name for the business, which interfaces with customers.|
|email|String|The email address for the business.|
|id|String|A programmatic identifier for the business, which is an email address formed by **displayName** concatenated with the domain of the tenant. Read-only.|
|isPublished|Boolean|The scheduling page has been made available to external customers. Use the **publish** and **unpublish** actions to set this property. Read-only.|
|phone|String|The telephone number for the business.|
|publicUrl|String|The URL for the scheduling page, which is set after you [publish](../api/bookingbusiness_publish.md) or [unpublish](../api/bookingbusiness_unpublish.md) the page. Read-only.|
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)|Specifies how bookings can be created for this business.|
|webSiteUrl|String|The URL of the business web site.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|appointments|[bookingAppointment](bookingappointment.md) collection| All the appointments in this business. Read-only. Nullable.|
|customers|[bookingCustomer](bookingcustomer.md) collection| All the customers of this business. Read-only. Nullable.|
|services|[bookingService](bookingservice.md) collection| All the services offered by this business. Read-only. Nullable.|
|staffMembers|[bookingStaffMember](bookingstaffmember.md) collection| All the staff members that provide services in this business. Read-only. Nullable.|

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
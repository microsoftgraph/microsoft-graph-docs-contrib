---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingAppointment bookingAppointment = new BookingAppointment();
bookingAppointment.setOdataType("#microsoft.graph.bookingAppointment");
LinkedList<BookingCustomerInformationBase> customers = new LinkedList<BookingCustomerInformationBase>();
BookingCustomerInformation bookingCustomerInformationBase = new BookingCustomerInformation();
bookingCustomerInformationBase.setOdataType("#microsoft.graph.bookingCustomerInformation");
bookingCustomerInformationBase.setCustomerId("cd56bb19-c348-42c6-af5c-09818c87fb8c");
bookingCustomerInformationBase.setName("John Doe");
bookingCustomerInformationBase.setEmailAddress("john.doe@example.com");
bookingCustomerInformationBase.setPhone("313-555-5555");
customers.add(bookingCustomerInformationBase);
BookingCustomerInformation bookingCustomerInformationBase1 = new BookingCustomerInformation();
bookingCustomerInformationBase1.setOdataType("#microsoft.graph.bookingCustomerInformation");
bookingCustomerInformationBase1.setCustomerId("72f148fa-9a86-4c59-b277-f5089d9ea0e7");
bookingCustomerInformationBase1.setName("Jane Smith");
bookingCustomerInformationBase1.setEmailAddress("jane.smith@example.com");
bookingCustomerInformationBase1.setPhone("248-555-5678");
customers.add(bookingCustomerInformationBase1);
bookingAppointment.setCustomers(customers);
BookingAppointment result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").appointments().byBookingAppointmentId("{bookingAppointment-id}").patch(bookingAppointment);


```
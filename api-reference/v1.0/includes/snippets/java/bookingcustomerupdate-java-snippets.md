---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingCustomer bookingCustomerBase = new BookingCustomer();
bookingCustomerBase.setOdataType("#microsoft.graph.bookingCustomer");
bookingCustomerBase.setDisplayName("Adele");
bookingCustomerBase.setEmailAddress("adele@relecloud.com");
BookingCustomerBase result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").customers().byBookingCustomerBaseId("{bookingCustomerBase-id}").patch(bookingCustomerBase);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingCustomer bookingCustomer = new BookingCustomer();
bookingCustomer.setDisplayName("Adele");
bookingCustomer.setEmailAddress("adele@relecloud.com");
BookingCustomer result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").customers().byBookingCustomerId("{bookingCustomer-id}").patch(bookingCustomer);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingBusiness bookingBusiness = new BookingBusiness();
bookingBusiness.setDisplayName("Fourth Coffee");
PhysicalAddress address = new PhysicalAddress();
address.setPostOfficeBox("P.O. Box 123");
address.setStreet("4567 Main Street");
address.setCity("Buffalo");
address.setState("NY");
address.setCountryOrRegion("USA");
address.setPostalCode("98052");
bookingBusiness.setAddress(address);
bookingBusiness.setPhone("206-555-0100");
bookingBusiness.setEmail("manager@fourthcoffee.com");
bookingBusiness.setWebSiteUrl("https://www.fourthcoffee.com");
bookingBusiness.setDefaultCurrencyIso("USD");
BookingBusiness result = graphClient.solutions().bookingBusinesses().post(bookingBusiness);


```
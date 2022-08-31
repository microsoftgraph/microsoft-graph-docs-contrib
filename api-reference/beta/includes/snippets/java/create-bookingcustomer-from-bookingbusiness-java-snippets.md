---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCustomer bookingCustomer = new BookingCustomer();
bookingCustomer.displayName = "Joni Sherman";
bookingCustomer.emailAddress = "jonis@relecloud.com";
LinkedList<PhysicalAddress> addressesList = new LinkedList<PhysicalAddress>();
PhysicalAddress addresses = new PhysicalAddress();
addresses.postOfficeBox = "";
addresses.street = "4567 Main Street";
addresses.city = "Buffalo";
addresses.state = "NY";
addresses.countryOrRegion = "USA";
addresses.postalCode = "98052";
addresses.type = PhysicalAddressType.HOME;
addressesList.add(addresses);
PhysicalAddress addresses1 = new PhysicalAddress();
addresses1.postOfficeBox = "";
addresses1.street = "4570 Main Street";
addresses1.city = "Buffalo";
addresses1.state = "NY";
addresses1.countryOrRegion = "USA";
addresses1.postalCode = "98054";
addresses1.type = PhysicalAddressType.BUSINESS;
addressesList.add(addresses1);
bookingCustomer.addresses = addressesList;
LinkedList<Phone> phonesList = new LinkedList<Phone>();
Phone phones = new Phone();
phones.number = "206-555-0100";
phones.type = PhoneType.HOME;
phonesList.add(phones);
Phone phones1 = new Phone();
phones1.number = "206-555-0200";
phones1.type = PhoneType.BUSINESS;
phonesList.add(phones1);
bookingCustomer.phones = phonesList;

graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").customers()
	.buildRequest()
	.post(bookingCustomer);

```
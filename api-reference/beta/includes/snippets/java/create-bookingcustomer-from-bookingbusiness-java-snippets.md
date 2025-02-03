---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingCustomer bookingCustomer = new BookingCustomer();
bookingCustomer.setDisplayName("Joni Sherman");
bookingCustomer.setEmailAddress("jonis@relecloud.com");
LinkedList<PhysicalAddress> addresses = new LinkedList<PhysicalAddress>();
PhysicalAddress physicalAddress = new PhysicalAddress();
physicalAddress.setPostOfficeBox("");
physicalAddress.setStreet("4567 Main Street");
physicalAddress.setCity("Buffalo");
physicalAddress.setState("NY");
physicalAddress.setCountryOrRegion("USA");
physicalAddress.setPostalCode("98052");
physicalAddress.setType(PhysicalAddressType.Home);
addresses.add(physicalAddress);
PhysicalAddress physicalAddress1 = new PhysicalAddress();
physicalAddress1.setPostOfficeBox("");
physicalAddress1.setStreet("4570 Main Street");
physicalAddress1.setCity("Buffalo");
physicalAddress1.setState("NY");
physicalAddress1.setCountryOrRegion("USA");
physicalAddress1.setPostalCode("98054");
physicalAddress1.setType(PhysicalAddressType.Business);
addresses.add(physicalAddress1);
bookingCustomer.setAddresses(addresses);
LinkedList<Phone> phones = new LinkedList<Phone>();
Phone phone = new Phone();
phone.setNumber("206-555-0100");
phone.setType(PhoneType.Home);
phones.add(phone);
Phone phone1 = new Phone();
phone1.setNumber("206-555-0200");
phone1.setType(PhoneType.Business);
phones.add(phone1);
bookingCustomer.setPhones(phones);
BookingCustomer result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").customers().post(bookingCustomer);


```
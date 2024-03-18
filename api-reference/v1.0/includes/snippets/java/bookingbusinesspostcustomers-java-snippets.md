---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingCustomer bookingCustomerBase = new BookingCustomer();
bookingCustomerBase.setOdataType("#microsoft.graph.bookingCustomer");
bookingCustomerBase.setDisplayName("Joni Sherman");
bookingCustomerBase.setEmailAddress("jonis@relecloud.com");
LinkedList<PhysicalAddress> addresses = new LinkedList<PhysicalAddress>();
PhysicalAddress physicalAddress = new PhysicalAddress();
physicalAddress.setStreet("4567 Main Street");
physicalAddress.setCity("Buffalo");
physicalAddress.setState("NY");
physicalAddress.setCountryOrRegion("USA");
physicalAddress.setPostalCode("98052");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("postOfficeBox", "");
additionalData.put("type", "home");
physicalAddress.setAdditionalData(additionalData);
addresses.add(physicalAddress);
PhysicalAddress physicalAddress1 = new PhysicalAddress();
physicalAddress1.setStreet("4570 Main Street");
physicalAddress1.setCity("Buffalo");
physicalAddress1.setState("NY");
physicalAddress1.setCountryOrRegion("USA");
physicalAddress1.setPostalCode("98054");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("postOfficeBox", "");
additionalData1.put("type", "business");
physicalAddress1.setAdditionalData(additionalData1);
addresses.add(physicalAddress1);
bookingCustomerBase.setAddresses(addresses);
LinkedList<Phone> phones = new LinkedList<Phone>();
Phone phone = new Phone();
phone.setNumber("206-555-0100");
phone.setType(PhoneType.Home);
phones.add(phone);
Phone phone1 = new Phone();
phone1.setNumber("206-555-0200");
phone1.setType(PhoneType.Business);
phones.add(phone1);
bookingCustomerBase.setPhones(phones);
BookingCustomerBase result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").customers().post(bookingCustomerBase);


```
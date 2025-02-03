---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Contact contact = new Contact();
PhysicalAddress homeAddress = new PhysicalAddress();
homeAddress.setStreet("123 Some street");
homeAddress.setCity("Seattle");
homeAddress.setState("WA");
homeAddress.setPostalCode("98121");
contact.setHomeAddress(homeAddress);
OffsetDateTime birthday = OffsetDateTime.parse("1974-07-22");
contact.setBirthday(birthday);
Contact result = graphClient.me().contacts().byContactId("{contact-id}").patch(contact);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Contact contact = new Contact();
contact.setGivenName("Pavel");
contact.setSurname("Bansky");
LinkedList<TypedEmailAddress> emailAddresses = new LinkedList<TypedEmailAddress>();
TypedEmailAddress typedEmailAddress = new TypedEmailAddress();
typedEmailAddress.setAddress("pavelb@contoso.com");
typedEmailAddress.setName("Pavel Bansky");
typedEmailAddress.setType(EmailType.Personal);
emailAddresses.add(typedEmailAddress);
TypedEmailAddress typedEmailAddress1 = new TypedEmailAddress();
typedEmailAddress1.setAddress("pavelb@contoso.com");
typedEmailAddress1.setName("Pavel Bansky");
typedEmailAddress1.setType(EmailType.Other);
typedEmailAddress1.setOtherLabel("Volunteer work");
emailAddresses.add(typedEmailAddress1);
contact.setEmailAddresses(emailAddresses);
LinkedList<Phone> phones = new LinkedList<Phone>();
Phone phone = new Phone();
phone.setNumber("+1 732 555 0102");
phone.setType(PhoneType.Business);
phones.add(phone);
contact.setPhones(phones);
Contact result = graphClient.me().contacts().post(contact);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Contact contact = new Contact();
LinkedList<TypedEmailAddress> emailAddresses = new LinkedList<TypedEmailAddress>();
TypedEmailAddress typedEmailAddress = new TypedEmailAddress();
typedEmailAddress.setType(EmailType.Personal);
typedEmailAddress.setName("Pavel Bansky");
typedEmailAddress.setAddress("pavelb@contoso.com");
emailAddresses.add(typedEmailAddress);
TypedEmailAddress typedEmailAddress1 = new TypedEmailAddress();
typedEmailAddress1.setAddress("pavelb@contoso.com");
typedEmailAddress1.setName("Pavel Bansky");
typedEmailAddress1.setType(EmailType.Other);
typedEmailAddress1.setOtherLabel("Volunteer work");
emailAddresses.add(typedEmailAddress1);
contact.setEmailAddresses(emailAddresses);
Contact result = graphClient.me().contacts().byContactId("{contact-id}").patch(contact);


```
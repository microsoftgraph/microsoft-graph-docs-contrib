---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Contact contact = new Contact();
contact.setGivenName("Pavel");
contact.setSurname("Bansky");
LinkedList<EmailAddress> emailAddresses = new LinkedList<EmailAddress>();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("pavelb@contoso.com");
emailAddress.setName("Pavel Bansky");
emailAddresses.add(emailAddress);
contact.setEmailAddresses(emailAddresses);
LinkedList<String> businessPhones = new LinkedList<String>();
businessPhones.add("+1 732 555 0102");
contact.setBusinessPhones(businessPhones);
Contact result = graphClient.me().contacts().post(contact);


```
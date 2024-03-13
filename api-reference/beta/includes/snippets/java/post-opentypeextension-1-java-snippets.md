---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
message.setSubject("Annual review");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("You should be proud!");
message.setBody(body);
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("rufus@contoso.com");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
LinkedList<Extension> extensions = new LinkedList<Extension>();
OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("Com.Contoso.Referral");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("companyName", "Wingtip Toys");
additionalData.put("expirationDate", "2015-12-30T11:00:00.000Z");
additionalData.put("dealValue", 10000);
extension.setAdditionalData(additionalData);
extensions.add(extension);
message.setExtensions(extensions);
Message result = graphClient.me().messages().post(message);


```
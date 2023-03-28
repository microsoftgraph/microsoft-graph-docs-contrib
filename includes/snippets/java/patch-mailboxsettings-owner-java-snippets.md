---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailboxSettings mailboxSettings = new MailboxSettings();
mailboxSettings.delegateMeetingMessageDeliveryOptions = DelegateMeetingMessageDeliveryOptions.SEND_TO_DELEGATE_AND_PRINCIPAL;

graphClient.customRequest("/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings", MailboxSettings.class)
	.buildRequest()
	.patch(mailboxSettings);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailboxSettings mailboxSettings = graphClient.customRequest("/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings", MailboxSettings.class)
	.buildRequest()
	.get();

```
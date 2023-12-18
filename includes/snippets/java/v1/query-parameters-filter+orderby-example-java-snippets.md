---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageCollectionPage messages = graphClient.me().messages()
	.buildRequest()
	.filter("Subject eq 'welcome' and importance eq 'normal'")
	.orderBy("subject,importance,receivedDateTime desc")
	.get();

```
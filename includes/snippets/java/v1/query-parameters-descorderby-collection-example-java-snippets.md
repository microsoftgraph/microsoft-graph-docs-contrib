---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageCollectionPage messages = graphClient.me().mailFolders("Inbox").messages()
	.buildRequest()
	.orderBy("from/emailAddress/name desc,subject")
	.get();

```
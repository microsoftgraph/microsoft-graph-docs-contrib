---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EventCollectionPage events = graphClient.me().calendar().events()
	.buildRequest()
	.filter("startsWith(subject,'All')")
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("top", "10"));

SignInCollectionPage signIns = graphClient.auditLogs().signIns()
	.buildRequest( requestOptions )
	.filter("startsWith(appDisplayName,'Azure')")
	.get();

```
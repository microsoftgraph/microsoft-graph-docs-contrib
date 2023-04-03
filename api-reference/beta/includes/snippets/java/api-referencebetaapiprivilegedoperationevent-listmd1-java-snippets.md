---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedOperationEventCollectionPage privilegedOperationEvents = graphClient.privilegedOperationEvents()
	.buildRequest()
	.filter("requestType eq 'Activate'")
	.get();

```
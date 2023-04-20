---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IncidentCollectionPage incidents = graphClient.security().incidents()
	.buildRequest()
	.expand("alerts")
	.get();

```
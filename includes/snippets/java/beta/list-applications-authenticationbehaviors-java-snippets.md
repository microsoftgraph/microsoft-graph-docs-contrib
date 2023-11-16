---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationCollectionPage applications = graphClient.applications()
	.buildRequest()
	.select("id,displayName,appId,authenticationBehaviors")
	.get();

```
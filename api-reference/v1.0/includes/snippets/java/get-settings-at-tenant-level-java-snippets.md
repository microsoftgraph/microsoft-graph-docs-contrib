---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SharepointSettings sharepointSettings = graphClient.admin().sharepoint().settings()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.networkAccess()
	.microsoft.graph.networkaccess.onboard()
	.buildRequest()
	.post();

```
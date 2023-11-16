---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VppToken vppToken = graphClient.deviceAppManagement().vppTokens("{vppTokenId}")
	.buildRequest()
	.get();

```
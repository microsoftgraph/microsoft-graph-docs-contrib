---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VppTokenCollectionPage vppTokens = graphClient.deviceAppManagement().vppTokens()
	.buildRequest()
	.get();

```
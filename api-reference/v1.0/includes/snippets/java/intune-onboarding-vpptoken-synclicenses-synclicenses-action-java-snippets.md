---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceAppManagement().vppTokens("{vppTokenId}")
	.syncLicenses()
	.buildRequest()
	.post();

```
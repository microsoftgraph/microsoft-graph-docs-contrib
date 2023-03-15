---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").noncustodialDataSources("{ediscoveryNoncustodialDataSourceId}")
	.release()
	.buildRequest()
	.post();

```
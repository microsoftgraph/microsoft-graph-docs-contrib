---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryNoncustodialDataSource ediscoveryNoncustodialDataSource = graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").noncustodialDataSources("35393639323133394345384344303043")
	.buildRequest()
	.expand("dataSource")
	.get();

```
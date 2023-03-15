---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCase ediscoveryCase = graphClient.security().cases().ediscoveryCases("22aa2acd-7554-4330-9ba9-ce20014aaae4")
	.buildRequest()
	.get();

```
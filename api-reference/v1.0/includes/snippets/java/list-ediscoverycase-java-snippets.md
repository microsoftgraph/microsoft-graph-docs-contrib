---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCaseCollectionPage ediscoveryCases = graphClient.security().cases().ediscoveryCases()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryHoldPolicy ediscoveryHoldPolicy = graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").legalHolds("783c3ea4-d474-4051-9c13-08707ce8c8b6")
	.buildRequest()
	.get();

```
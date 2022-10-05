---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCase ediscoveryCase = new EdiscoveryCase();
ediscoveryCase.displayName = "CONTOSO LITIGATION-005";
ediscoveryCase.description = "Project Bazooka";
ediscoveryCase.externalId = "324516";

graphClient.security().cases().ediscoveryCases()
	.buildRequest()
	.post(ediscoveryCase);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryCustodian ediscoveryCustodian = new EdiscoveryCustodian();
ediscoveryCustodian.email = "AdeleV@contoso.com";

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").custodians()
	.buildRequest()
	.post(ediscoveryCustodian);

```
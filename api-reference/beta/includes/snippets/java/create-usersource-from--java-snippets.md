---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSource userSource = new UserSource();
userSource.email = "admin@M365x809305.onmicrosoft.com";
userSource.includedSources = EnumSet.of(SourceType.MAILBOX,SourceType.SITE);

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").legalHolds("{ediscoveryHoldPolicyId}").userSources()
	.buildRequest()
	.post(userSource);

```
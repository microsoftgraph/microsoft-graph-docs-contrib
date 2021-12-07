---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackages("fb449cf8-3a59-4d86-bdfd-a1b7299681de")
	.getApplicablePolicyRequirements()
	.buildRequest()
	.post();

```
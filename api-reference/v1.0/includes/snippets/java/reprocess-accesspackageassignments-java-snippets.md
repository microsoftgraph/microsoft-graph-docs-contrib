---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().assignments("d82eb508-acc4-43cc-bcf1-7c1c4a2c073b")
	.reprocess()
	.buildRequest()
	.post();

```
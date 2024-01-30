---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("16b6a9de-f519-4bd2-86cb-793808f70230").accessPackageResources("b078b6f9-15c1-423b-864f-994ccf8d6fbf")
	.refresh()
	.buildRequest()
	.post();

```
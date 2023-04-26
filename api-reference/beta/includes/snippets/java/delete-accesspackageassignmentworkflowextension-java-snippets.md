---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("32efb28c-9a7a-446c-986b-ca6528c6669d").customAccessPackageWorkflowExtensions("5FD6D8D5-E8F1-4B54-A1E6-1D0FE0B6E6EC")
	.buildRequest()
	.delete();

```
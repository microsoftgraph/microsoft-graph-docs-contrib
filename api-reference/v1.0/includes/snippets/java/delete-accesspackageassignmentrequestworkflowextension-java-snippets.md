---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().catalogs("32efb28c-9a7a-446c-986b-ca6528c6669d").customWorkflowExtensions("E3D4CE35-B16A-4E19-ADF2-616B64D336DC")
	.buildRequest()
	.delete();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomCalloutExtensionCollectionPage customWorkflowExtensions = graphClient.identityGovernance().entitlementManagement().catalogs("32efb28c-9a7a-446c-986b-ca6528c6669d").customWorkflowExtensions()
	.buildRequest()
	.get();

```
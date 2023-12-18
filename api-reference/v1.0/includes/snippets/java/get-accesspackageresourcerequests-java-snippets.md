---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRequestCollectionPage resourceRequests = graphClient.identityGovernance().entitlementManagement().resourceRequests()
	.buildRequest()
	.get();

```
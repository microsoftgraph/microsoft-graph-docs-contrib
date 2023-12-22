---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = new AccessPackage();
accessPackage.catalogId = "cec5d6ab-c75d-47c0-9c1c-92e89f66e384";
accessPackage.displayName = "Marketing Campaign";
accessPackage.description = "Access to resources for the campaign";

graphClient.identityGovernance().entitlementManagement().accessPackages()
	.buildRequest()
	.post(accessPackage);

```
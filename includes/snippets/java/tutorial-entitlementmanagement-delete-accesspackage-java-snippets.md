---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackages("cf54c6ca-d717-49bc-babe-d140d035dfdd")
	.buildRequest()
	.delete();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LongRunningOperation longRunningOperation = graphClient.identityGovernance().roleManagementAlerts().operations("refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert")
	.buildRequest()
	.get();

```
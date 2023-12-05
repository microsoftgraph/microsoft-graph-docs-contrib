---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedAwsStorageBucketFinding encryptedAwsStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxFbmNyeXB0ZWRBd3NTdG9yYWdlQnVja2V0RmluZGluZywyNTA4NDA").microsoft.graph.encryptedAwsStorageBucketFinding()
	.buildRequest()
	.get();

```
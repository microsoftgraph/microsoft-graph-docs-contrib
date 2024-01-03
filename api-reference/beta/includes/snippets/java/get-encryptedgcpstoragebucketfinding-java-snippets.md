---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedGcpStorageBucketFinding encryptedGcpStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxFbmNyeXB0ZWRHY3BTdG9yYWdlQnVja2V0RmluZGluZyw0NjM4OQ").microsoft.graph.encryptedGcpStorageBucketFinding()
	.buildRequest()
	.get();

```
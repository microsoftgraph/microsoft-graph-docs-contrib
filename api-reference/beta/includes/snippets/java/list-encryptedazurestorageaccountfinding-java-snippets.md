---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedAzureStorageAccountFindingCollectionPage encryptedAzureStorageAccountFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.encryptedAzureStorageAccountFinding()
	.buildRequest()
	.get();

```
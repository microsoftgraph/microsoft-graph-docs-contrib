---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedAzureStorageAccountFinding encryptedAzureStorageAccountFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxFbmNyeXB0ZWRBenVyZVN0b3JhZ2VBY2NvdW50RmluZGluZywzMzMwMQ").microsoft.graph.encryptedAzureStorageAccountFinding()
	.buildRequest()
	.get();

```
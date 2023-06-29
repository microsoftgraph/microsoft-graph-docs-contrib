---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCategoryCollectionPage deviceCategories = graphClient.deviceManagement().deviceCategories()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionLabelCollectionPage retentionLabels = graphClient.security().labels().retentionLabels()
	.buildRequest()
	.get();

```
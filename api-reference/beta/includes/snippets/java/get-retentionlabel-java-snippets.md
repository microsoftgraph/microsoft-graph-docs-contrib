---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RetentionLabel retentionLabel = graphClient.security().labels().retentionLabels("{retentionLabelId}")
	.buildRequest()
	.get();

```
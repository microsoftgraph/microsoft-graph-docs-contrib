---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilePlanReferenceTemplateCollectionPage filePlanReferences = graphClient.security().labels().filePlanReferences()
	.buildRequest()
	.get();

```
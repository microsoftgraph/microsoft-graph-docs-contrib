---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilePlanReferenceTemplate filePlanReferenceTemplate = graphClient.security().labels().filePlanReferences("{filePlanReferenceTemplateId}")
	.buildRequest()
	.get();

```
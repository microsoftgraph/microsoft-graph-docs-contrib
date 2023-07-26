---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().labels().filePlanReferences("{filePlanReferenceTemplateId}")
	.buildRequest()
	.delete();

```
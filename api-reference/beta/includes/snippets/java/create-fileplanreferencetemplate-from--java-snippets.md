---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FilePlanReferenceTemplate filePlanReferenceTemplate = new FilePlanReferenceTemplate();
filePlanReferenceTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
filePlanReferenceTemplate.createdBy = createdBy;

graphClient.security().labels().filePlanReferences()
	.buildRequest()
	.post(filePlanReferenceTemplate);

```
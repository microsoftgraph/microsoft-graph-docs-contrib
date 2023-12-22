---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CategoryTemplate categoryTemplate = new CategoryTemplate();
categoryTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
categoryTemplate.createdBy = createdBy;

graphClient.security().labels().categories()
	.buildRequest()
	.post(categoryTemplate);

```
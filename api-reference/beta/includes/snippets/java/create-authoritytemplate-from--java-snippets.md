---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorityTemplate authorityTemplate = new AuthorityTemplate();
authorityTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
authorityTemplate.createdBy = createdBy;

graphClient.security().labels().authorities()
	.buildRequest()
	.post(authorityTemplate);

```
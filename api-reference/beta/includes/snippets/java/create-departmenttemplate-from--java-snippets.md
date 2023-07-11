---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DepartmentTemplate departmentTemplate = new DepartmentTemplate();
departmentTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
departmentTemplate.createdBy = createdBy;

graphClient.security().labels().departments()
	.buildRequest()
	.post(departmentTemplate);

```
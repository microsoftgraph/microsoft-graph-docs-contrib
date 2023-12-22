---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DepartmentTemplate departmentTemplate = graphClient.security().labels().departments("{departmentTemplateId}")
	.buildRequest()
	.get();

```
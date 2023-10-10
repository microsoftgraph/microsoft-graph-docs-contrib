---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DepartmentTemplateCollectionPage departments = graphClient.security().labels().departments()
	.buildRequest()
	.get();

```
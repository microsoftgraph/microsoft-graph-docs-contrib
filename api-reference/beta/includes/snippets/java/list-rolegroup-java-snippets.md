---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleGroupCollectionPage roleGroups = graphClient.external().industryData().roleGroups()
	.buildRequest()
	.get();

```
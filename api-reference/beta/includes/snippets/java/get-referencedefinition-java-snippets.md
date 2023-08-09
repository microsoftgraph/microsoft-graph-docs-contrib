---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReferenceDefinition referenceDefinition = graphClient.external().industryData().referenceDefinitions("RefAcademicSubject-01")
	.buildRequest()
	.get();

```
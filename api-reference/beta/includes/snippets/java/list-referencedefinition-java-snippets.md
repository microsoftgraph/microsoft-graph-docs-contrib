---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReferenceDefinitionCollectionPage referenceDefinitions = graphClient.external().industryData().referenceDefinitions()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceSystemDefinitionCollectionPage sourceSystems = graphClient.external().industryData().sourceSystems()
	.buildRequest()
	.get();

```
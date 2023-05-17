---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceSystemDefinition sourceSystemDefinition = graphClient.external().industryData().sourceSystems("0190210e-8827-4747-6f2b-08dacc885e72")
	.buildRequest()
	.get();

```
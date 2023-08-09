---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SourceSystemDefinition sourceSystemDefinition = new SourceSystemDefinition();
sourceSystemDefinition.vendor = "LMS Vendor";

graphClient.external().industryData().sourceSystems("d1cde272-4585-462c-4725-08dad18eb580")
	.buildRequest()
	.patch(sourceSystemDefinition);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.external().industryData().dataConnectors("8c010e87-c28b-4350-bdc1-65ec29258b93")
	.validate()
	.buildRequest()
	.post();

```
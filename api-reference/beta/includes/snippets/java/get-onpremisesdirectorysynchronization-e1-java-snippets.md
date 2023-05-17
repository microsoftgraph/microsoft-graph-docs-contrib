---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnPremisesDirectorySynchronization onPremisesDirectorySynchronization = graphClient.directory().onPremisesSynchronization("{id}")
	.buildRequest()
	.get();

```
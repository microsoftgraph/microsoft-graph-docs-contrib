---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionPage members = graphClient.directory().administrativeUnits("{id}").members().references()
	.buildRequest()
	.get();

```
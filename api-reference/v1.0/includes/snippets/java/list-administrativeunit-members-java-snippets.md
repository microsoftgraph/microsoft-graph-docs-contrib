---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage members = graphClient.directory().administrativeUnits("c5729e7c-988e-417b-b287-14f5bd4711d8").members()
	.buildRequest()
	.get();

```
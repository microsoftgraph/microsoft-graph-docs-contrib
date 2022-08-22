---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage members = graphClient.directory().administrativeUnits("8a07f5a8-edc9-4847-bbf2-dde106594bf4").members()
	.buildRequest()
	.get();

```
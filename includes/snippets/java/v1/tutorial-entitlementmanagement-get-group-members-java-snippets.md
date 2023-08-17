---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectCollectionWithReferencesPage members = graphClient.groups("e93e24d1-2b65-4a6c-a1dd-654a12225487").members()
	.buildRequest()
	.get();

```
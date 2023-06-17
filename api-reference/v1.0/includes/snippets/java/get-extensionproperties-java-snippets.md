---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExtensionPropertyCollectionPage extensionProperties = graphClient.applications("acc848e9-e8ec-4feb-a521-8d58b5482e09").extensionProperties()
	.buildRequest()
	.get();

```
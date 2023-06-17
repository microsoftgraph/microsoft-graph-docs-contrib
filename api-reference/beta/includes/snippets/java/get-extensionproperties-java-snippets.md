---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExtensionPropertyCollectionPage extensionProperties = graphClient.applications("fd918e4b-c821-4efb-b50a-5eddd23afc6f").extensionProperties()
	.buildRequest()
	.get();

```
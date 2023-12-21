---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedEBookCollectionPage managedEBooks = graphClient.deviceAppManagement().managedEBooks()
	.buildRequest()
	.get();

```
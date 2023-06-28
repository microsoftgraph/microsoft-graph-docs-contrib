---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedEBook managedEBook = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}")
	.buildRequest()
	.get();

```
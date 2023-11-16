---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedEBookAssignmentCollectionPage assignments = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").assignments()
	.buildRequest()
	.get();

```
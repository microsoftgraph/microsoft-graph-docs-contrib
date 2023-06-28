---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserInstallStateSummaryCollectionPage userStateSummary = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").userStateSummary()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EBookInstallSummary eBookInstallSummary = graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").installSummary()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserInstallStateSummary userInstallStateSummary = new UserInstallStateSummary();
userInstallStateSummary.userName = "User Name value";
userInstallStateSummary.installedDeviceCount = 4;
userInstallStateSummary.failedDeviceCount = 1;
userInstallStateSummary.notInstalledDeviceCount = 7;

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").userStateSummary("{userInstallStateSummaryId}")
	.buildRequest()
	.patch(userInstallStateSummary);

```
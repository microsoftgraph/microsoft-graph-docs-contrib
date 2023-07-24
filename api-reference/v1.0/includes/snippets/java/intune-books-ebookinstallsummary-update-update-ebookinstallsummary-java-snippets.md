---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EBookInstallSummary eBookInstallSummary = new EBookInstallSummary();
eBookInstallSummary.installedDeviceCount = 4;
eBookInstallSummary.failedDeviceCount = 1;
eBookInstallSummary.notInstalledDeviceCount = 7;
eBookInstallSummary.installedUserCount = 2;
eBookInstallSummary.failedUserCount = 15;
eBookInstallSummary.notInstalledUserCount = 5;

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}").installSummary()
	.buildRequest()
	.patch(eBookInstallSummary);

```
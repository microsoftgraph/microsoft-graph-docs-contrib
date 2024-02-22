---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EBookInstallSummary eBookInstallSummary = new EBookInstallSummary();
eBookInstallSummary.setOdataType("#microsoft.graph.eBookInstallSummary");
eBookInstallSummary.setInstalledDeviceCount(4);
eBookInstallSummary.setFailedDeviceCount(1);
eBookInstallSummary.setNotInstalledDeviceCount(7);
eBookInstallSummary.setInstalledUserCount(2);
eBookInstallSummary.setFailedUserCount(15);
eBookInstallSummary.setNotInstalledUserCount(5);
EBookInstallSummary result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").installSummary().patch(eBookInstallSummary);


```
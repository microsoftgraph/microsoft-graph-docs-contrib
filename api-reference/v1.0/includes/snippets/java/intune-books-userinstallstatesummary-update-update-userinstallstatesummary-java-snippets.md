---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserInstallStateSummary userInstallStateSummary = new UserInstallStateSummary();
userInstallStateSummary.setOdataType("#microsoft.graph.userInstallStateSummary");
userInstallStateSummary.setUserName("User Name value");
userInstallStateSummary.setInstalledDeviceCount(4);
userInstallStateSummary.setFailedDeviceCount(1);
userInstallStateSummary.setNotInstalledDeviceCount(7);
UserInstallStateSummary result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").userStateSummary().byUserInstallStateSummaryId("{userInstallStateSummary-id}").patch(userInstallStateSummary);


```
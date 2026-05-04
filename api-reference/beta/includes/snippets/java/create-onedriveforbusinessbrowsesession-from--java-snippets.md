---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessBrowseSession oneDriveForBusinessBrowseSession = new OneDriveForBusinessBrowseSession();
oneDriveForBusinessBrowseSession.setRestorePointId("TXpSbE5HUXpNR1l0TldZMFlpMDBNMk16TFdFeFl6WXRZall3TTJFeFl6Sm1OV000WHpFPV8xNzQ5NTY3MDAwXzE0XzE=");
OneDriveForBusinessBrowseSession result = graphClient.solutions().backupRestore().oneDriveForBusinessBrowseSessions().post(oneDriveForBusinessBrowseSession);


```
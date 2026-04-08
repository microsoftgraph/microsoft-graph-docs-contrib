---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointBrowseSession sharePointBrowseSession = new SharePointBrowseSession();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("restorePointId", "TXpSbE5HUXpNR1l0TldZMFlpMDBNMk16TFdFeFl6WXRZall3TTJFeFl6Sm1OV000WHpFPV8xNzQ5NTY3MDAwXzE0XzE=");
sharePointBrowseSession.setAdditionalData(additionalData);
SharePointBrowseSession result = graphClient.solutions().backupRestore().sharePointBrowseSessions().post(sharePointBrowseSession);


```
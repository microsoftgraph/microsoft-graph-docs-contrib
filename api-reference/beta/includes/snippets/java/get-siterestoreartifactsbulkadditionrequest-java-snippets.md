---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SiteRestoreArtifactsBulkAdditionRequest result = graphClient.solutions().backupRestore().sharePointRestoreSessions().bySharePointRestoreSessionId("{sharePointRestoreSession-id}").siteRestoreArtifactsBulkAdditionRequests().bySiteRestoreArtifactsBulkAdditionRequestId("{siteRestoreArtifactsBulkAdditionRequest-id}").get();


```
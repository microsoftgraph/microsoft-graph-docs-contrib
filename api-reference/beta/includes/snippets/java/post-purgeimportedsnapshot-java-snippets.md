---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.snapshots.purgeimportedsnapshot.PurgeImportedSnapshotPostRequestBody purgeImportedSnapshotPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.snapshots.purgeimportedsnapshot.PurgeImportedSnapshotPostRequestBody();
LinkedList<String> snapshotIds = new LinkedList<String>();
snapshotIds.add("7e8c3054-bda1-4e37-81c5-7d1b080a8849");
snapshotIds.add("715c8075-6892-42f3-9550-40b4b48e13d2");
purgeImportedSnapshotPostRequestBody.setSnapshotIds(snapshotIds);
graphClient.deviceManagement().virtualEndpoint().snapshots().purgeImportedSnapshot().post(purgeImportedSnapshotPostRequestBody);


```
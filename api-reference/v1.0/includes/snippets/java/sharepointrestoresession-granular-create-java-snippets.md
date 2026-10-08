---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointRestoreSession sharePointRestoreSession = new SharePointRestoreSession();
LinkedList<GranularSiteRestoreArtifact> granularSiteRestoreArtifacts = new LinkedList<GranularSiteRestoreArtifact>();
GranularSiteRestoreArtifact granularSiteRestoreArtifact = new GranularSiteRestoreArtifact();
granularSiteRestoreArtifact.setBrowseSessionId("eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6");
granularSiteRestoreArtifact.setId("a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2");
granularSiteRestoreArtifacts.add(granularSiteRestoreArtifact);
GranularSiteRestoreArtifact granularSiteRestoreArtifact1 = new GranularSiteRestoreArtifact();
granularSiteRestoreArtifact1.setBrowseSessionId("eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6");
granularSiteRestoreArtifact1.setId("b535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2");
granularSiteRestoreArtifacts.add(granularSiteRestoreArtifact1);
sharePointRestoreSession.setGranularSiteRestoreArtifacts(granularSiteRestoreArtifacts);
SharePointRestoreSession result = graphClient.solutions().backupRestore().sharePointRestoreSessions().post(sharePointRestoreSession);


```
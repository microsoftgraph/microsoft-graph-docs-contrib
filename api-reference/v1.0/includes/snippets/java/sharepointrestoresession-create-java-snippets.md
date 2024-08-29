---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointRestoreSession sharePointRestoreSession = new SharePointRestoreSession();
LinkedList<SiteRestoreArtifact> siteRestoreArtifacts = new LinkedList<SiteRestoreArtifact>();
SiteRestoreArtifact siteRestoreArtifact = new SiteRestoreArtifact();
RestorePoint restorePoint = new RestorePoint();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "1f1fccc3-a642-4f61-bf49-f37b9a888279");
restorePoint.setAdditionalData(additionalData);
siteRestoreArtifact.setRestorePoint(restorePoint);
siteRestoreArtifact.setDestinationType(DestinationType.InPlace);
siteRestoreArtifacts.add(siteRestoreArtifact);
SiteRestoreArtifact siteRestoreArtifact1 = new SiteRestoreArtifact();
RestorePoint restorePoint1 = new RestorePoint();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@odata.id", "1f1fccc3-a642-4f61-bf49-f37b9a888280");
restorePoint1.setAdditionalData(additionalData1);
siteRestoreArtifact1.setRestorePoint(restorePoint1);
siteRestoreArtifact1.setDestinationType(DestinationType.InPlace);
siteRestoreArtifacts.add(siteRestoreArtifact1);
sharePointRestoreSession.setSiteRestoreArtifacts(siteRestoreArtifacts);
SharePointRestoreSession result = graphClient.solutions().backupRestore().sharePointRestoreSessions().post(sharePointRestoreSession);


```
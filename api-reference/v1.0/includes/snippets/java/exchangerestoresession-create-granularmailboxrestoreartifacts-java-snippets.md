---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeRestoreSession exchangeRestoreSession = new ExchangeRestoreSession();
exchangeRestoreSession.setOdataType("#microsoft.graph.exchangeRestoreSession");
LinkedList<GranularMailboxRestoreArtifact> granularMailboxRestoreArtifacts = new LinkedList<GranularMailboxRestoreArtifact>();
GranularMailboxRestoreArtifact granularMailboxRestoreArtifact = new GranularMailboxRestoreArtifact();
RestorePoint restorePoint = new RestorePoint();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "1f1fccc3-a642-4f61-bf49-f37b9a888279");
restorePoint.setAdditionalData(additionalData);
granularMailboxRestoreArtifact.setRestorePoint(restorePoint);
granularMailboxRestoreArtifact.setDestinationType(DestinationType.InPlace);
granularMailboxRestoreArtifact.setSearchResponseId("M2UyZDAwMDAwMDMxMzkzYTMyNj");
granularMailboxRestoreArtifacts.add(granularMailboxRestoreArtifact);
exchangeRestoreSession.setGranularMailboxRestoreArtifacts(granularMailboxRestoreArtifacts);
ExchangeRestoreSession result = graphClient.solutions().backupRestore().exchangeRestoreSessions().post(exchangeRestoreSession);


```
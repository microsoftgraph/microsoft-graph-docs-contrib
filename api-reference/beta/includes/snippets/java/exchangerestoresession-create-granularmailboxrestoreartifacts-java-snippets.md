---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeRestoreSession exchangeRestoreSession = new ExchangeRestoreSession();
exchangeRestoreSession.setOdataType("#microsoft.graph.exchangeRestoreSession");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> granularMailboxRestoreArtifacts = new LinkedList<Object>();
 property = new ();
 restorePoint = new ();
restorePoint.setOdataId("1f1fccc3-a642-4f61-bf49-f37b9a888279");
property.setRestorePoint(restorePoint);
property.setDestinationType("inPlace");
property.setSearchResponseId("M2UyZDAwMDAwMDMxMzkzYTMyNj");
granularMailboxRestoreArtifacts.add(property);
additionalData.put("granularMailboxRestoreArtifacts", granularMailboxRestoreArtifacts);
exchangeRestoreSession.setAdditionalData(additionalData);
ExchangeRestoreSession result = graphClient.solutions().backupRestore().exchangeRestoreSessions().post(exchangeRestoreSession);


```
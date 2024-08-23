---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TiIndicator tiIndicator = new TiIndicator();
tiIndicator.setAction(TiAction.Alert);
LinkedList<String> activityGroupNames = new LinkedList<String>();
tiIndicator.setActivityGroupNames(activityGroupNames);
tiIndicator.setConfidence(0);
tiIndicator.setDescription("This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2019-03-01T21:43:37.5031462+00:00");
tiIndicator.setExpirationDateTime(expirationDateTime);
tiIndicator.setExternalId("Test--8586509942679764298MS501");
tiIndicator.setFileHashType(FileHashType.Sha256);
tiIndicator.setFileHashValue("aa64428647b57bf51524d1756b2ed746e5a3f31b67cf7fe5b5d8a9daf07ca313");
LinkedList<String> killChain = new LinkedList<String>();
tiIndicator.setKillChain(killChain);
LinkedList<String> malwareFamilyNames = new LinkedList<String>();
tiIndicator.setMalwareFamilyNames(malwareFamilyNames);
tiIndicator.setSeverity(0);
LinkedList<String> tags = new LinkedList<String>();
tiIndicator.setTags(tags);
tiIndicator.setTargetProduct("Azure Sentinel");
tiIndicator.setThreatType("WatchList");
tiIndicator.setTlpLevel(TlpLevel.Green);
TiIndicator result = graphClient.security().tiIndicators().post(tiIndicator);


```
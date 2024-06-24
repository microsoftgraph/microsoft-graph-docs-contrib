---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.tiindicators.submittiindicators.SubmitTiIndicatorsPostRequestBody submitTiIndicatorsPostRequestBody = new com.microsoft.graph.beta.security.tiindicators.submittiindicators.SubmitTiIndicatorsPostRequestBody();
LinkedList<TiIndicator> value = new LinkedList<TiIndicator>();
TiIndicator tiIndicator = new TiIndicator();
LinkedList<String> activityGroupNames = new LinkedList<String>();
tiIndicator.setActivityGroupNames(activityGroupNames);
tiIndicator.setConfidence(0);
tiIndicator.setDescription("This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2019-03-01T21:44:03.1668987+00:00");
tiIndicator.setExpirationDateTime(expirationDateTime);
tiIndicator.setExternalId("Test--8586509942423126760MS164-0");
tiIndicator.setFileHashType(FileHashType.Sha256);
tiIndicator.setFileHashValue("b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6");
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
value.add(tiIndicator);
TiIndicator tiIndicator1 = new TiIndicator();
LinkedList<String> activityGroupNames1 = new LinkedList<String>();
tiIndicator1.setActivityGroupNames(activityGroupNames1);
tiIndicator1.setConfidence(0);
tiIndicator1.setDescription("This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.");
OffsetDateTime expirationDateTime1 = OffsetDateTime.parse("2019-03-01T21:44:03.1748779+00:00");
tiIndicator1.setExpirationDateTime(expirationDateTime1);
tiIndicator1.setExternalId("Test--8586509942423126760MS164-1");
tiIndicator1.setFileHashType(FileHashType.Sha256);
tiIndicator1.setFileHashValue("1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b");
LinkedList<String> killChain1 = new LinkedList<String>();
tiIndicator1.setKillChain(killChain1);
LinkedList<String> malwareFamilyNames1 = new LinkedList<String>();
tiIndicator1.setMalwareFamilyNames(malwareFamilyNames1);
tiIndicator1.setSeverity(0);
LinkedList<String> tags1 = new LinkedList<String>();
tiIndicator1.setTags(tags1);
tiIndicator1.setTargetProduct("Azure Sentinel");
tiIndicator1.setThreatType("WatchList");
tiIndicator1.setTlpLevel(TlpLevel.Green);
value.add(tiIndicator1);
submitTiIndicatorsPostRequestBody.setValue(value);
var result = graphClient.security().tiIndicators().submitTiIndicators().post(submitTiIndicatorsPostRequestBody);


```
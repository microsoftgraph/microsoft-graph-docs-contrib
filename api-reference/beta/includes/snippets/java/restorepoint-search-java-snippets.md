---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody searchPostRequestBody = new com.microsoft.graph.beta.solutions.backuprestore.restorepoints.search.SearchPostRequestBody();
LinkedList<String> protectionUnitIds = new LinkedList<String>();
protectionUnitIds.add("23014d8c-71fe-4d00-a01a-31850bc5b42a");
protectionUnitIds.add("43014d8c-71fe-4d00-a01a-31850bc5b42b");
protectionUnitIds.add("63014d8c-71fe-4d00-a01a-31850bc5b42c");
protectionUnitIds.add("83014d8c-71fe-4d00-a01a-31850bc5b42d");
searchPostRequestBody.setProtectionUnitIds(protectionUnitIds);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-01-08T00:00:00Z");
protectionTimePeriod.setEndDateTime(endDateTime);
searchPostRequestBody.setProtectionTimePeriod(protectionTimePeriod);
searchPostRequestBody.setRestorePointPreference(RestorePointPreference.Latest);
searchPostRequestBody.setTags(EnumSet.of(RestorePointTags.FastRestore));
var result = graphClient.solutions().backupRestore().restorePoints().search().post(searchPostRequestBody);


```
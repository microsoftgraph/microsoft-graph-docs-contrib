---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SiteRestoreArtifactsBulkAdditionRequest siteRestoreArtifactsBulkAdditionRequest = new SiteRestoreArtifactsBulkAdditionRequest();
siteRestoreArtifactsBulkAdditionRequest.setDisplayName("SPO-BulkRestoreArtifacts");
LinkedList<String> siteWebUrls = new LinkedList<String>();
siteWebUrls.add("https: //contoso1.sharepoint.com");
siteWebUrls.add("https: //contoso2.sharepoint.com");
siteWebUrls.add("https: //contoso3.sharepoint.com");
siteRestoreArtifactsBulkAdditionRequest.setSiteWebUrls(siteWebUrls);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2024-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-01-08T00:00:00Z");
protectionTimePeriod.setEndDateTime(endDateTime);
siteRestoreArtifactsBulkAdditionRequest.setProtectionTimePeriod(protectionTimePeriod);
siteRestoreArtifactsBulkAdditionRequest.setDestinationType(DestinationType.New);
siteRestoreArtifactsBulkAdditionRequest.setTags(EnumSet.of(RestorePointTags.FastRestore));
siteRestoreArtifactsBulkAdditionRequest.setRestorePointPreference(RestorePointPreference.Latest);
SiteRestoreArtifactsBulkAdditionRequest result = graphClient.solutions().backupRestore().sharePointRestoreSessions().bySharePointRestoreSessionId("{sharePointRestoreSession-id}").siteRestoreArtifactsBulkAdditionRequests().post(siteRestoreArtifactsBulkAdditionRequest);


```
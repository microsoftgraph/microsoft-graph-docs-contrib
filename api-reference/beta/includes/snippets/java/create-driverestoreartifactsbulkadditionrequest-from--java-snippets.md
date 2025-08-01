---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DriveRestoreArtifactsBulkAdditionRequest driveRestoreArtifactsBulkAdditionRequest = new DriveRestoreArtifactsBulkAdditionRequest();
driveRestoreArtifactsBulkAdditionRequest.setDisplayName("ODB-BulkRestoreArtifacts");
LinkedList<String> drives = new LinkedList<String>();
drives.add("contoso1@micorosft.com");
drives.add("consotos2@microsoft.com");
drives.add("contoso3@microsoft.com");
driveRestoreArtifactsBulkAdditionRequest.setDrives(drives);
LinkedList<String> directoryObjectIds = new LinkedList<String>();
driveRestoreArtifactsBulkAdditionRequest.setDirectoryObjectIds(directoryObjectIds);
LinkedList<String> protectionUnitIds = new LinkedList<String>();
driveRestoreArtifactsBulkAdditionRequest.setProtectionUnitIds(protectionUnitIds);
TimePeriod protectionTimePeriod = new TimePeriod();
OffsetDateTime startDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
protectionTimePeriod.setStartDateTime(startDateTime);
OffsetDateTime endDateTime = OffsetDateTime.parse("2021-01-08T00:00:00Z");
protectionTimePeriod.setEndDateTime(endDateTime);
driveRestoreArtifactsBulkAdditionRequest.setProtectionTimePeriod(protectionTimePeriod);
driveRestoreArtifactsBulkAdditionRequest.setDestinationType(DestinationType.New);
driveRestoreArtifactsBulkAdditionRequest.setTags(EnumSet.of(RestorePointTags.FastRestore));
driveRestoreArtifactsBulkAdditionRequest.setRestorePointPreference(RestorePointPreference.Latest);
DriveRestoreArtifactsBulkAdditionRequest result = graphClient.solutions().backupRestore().oneDriveForBusinessRestoreSessions().byOneDriveForBusinessRestoreSessionId("{oneDriveForBusinessRestoreSession-id}").driveRestoreArtifactsBulkAdditionRequests().post(driveRestoreArtifactsBulkAdditionRequest);


```
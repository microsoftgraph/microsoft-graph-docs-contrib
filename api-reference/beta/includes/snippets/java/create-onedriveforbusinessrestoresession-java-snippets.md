---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessRestoreSession oneDriveForBusinessRestoreSession = new OneDriveForBusinessRestoreSession();
LinkedList<DriveRestoreArtifact> driveRestoreArtifacts = new LinkedList<DriveRestoreArtifact>();
DriveRestoreArtifact driveRestoreArtifact = new DriveRestoreArtifact();
RestorePoint restorePoint = new RestorePoint();
restorePoint.setId("1f1fccc3-a642-4f61-bf49-f37b9a888279");
driveRestoreArtifact.setRestorePoint(restorePoint);
driveRestoreArtifact.setDestinationType(DestinationType.New);
driveRestoreArtifacts.add(driveRestoreArtifact);
DriveRestoreArtifact driveRestoreArtifact1 = new DriveRestoreArtifact();
RestorePoint restorePoint1 = new RestorePoint();
restorePoint1.setId("1f1fccc3-a642-4f61-bf49-f37b9a888280");
driveRestoreArtifact1.setRestorePoint(restorePoint1);
driveRestoreArtifact1.setDestinationType(DestinationType.New);
driveRestoreArtifacts.add(driveRestoreArtifact1);
oneDriveForBusinessRestoreSession.setDriveRestoreArtifacts(driveRestoreArtifacts);
OneDriveForBusinessRestoreSession result = graphClient.solutions().backupRestore().oneDriveForBusinessRestoreSessions().post(oneDriveForBusinessRestoreSession);


```
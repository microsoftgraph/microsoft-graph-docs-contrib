---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessRestoreSession oneDriveForBusinessRestoreSession = new OneDriveForBusinessRestoreSession();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> driveRestoreArtifactsDelta = new LinkedList<Object>();
 property = new ();
 restorePoint = new ();
restorePoint.setOdataId("1b014d8c-71fe-4d00-a01a-31850bc5b32c");
property.setRestorePoint(restorePoint);
property.setDestinationType("new");
driveRestoreArtifactsDelta.add(property);
 property1 = new ();
 restorePoint1 = new ();
restorePoint1.setOdataId("2b014d8c-71fe-4d00-a01a-31850bc5b32");
property1.setRestorePoint(restorePoint1);
property1.setDestinationType("new");
driveRestoreArtifactsDelta.add(property1);
 property2 = new ();
 restorePoint2 = new ();
restorePoint2.setOdataId("3b014d8c-71fe-4d00-a01a-31850bc5b32c");
property2.setRestorePoint(restorePoint2);
property2.setDestinationType("new");
driveRestoreArtifactsDelta.add(property2);
 property3 = new ();
 restorePoint3 = new ();
restorePoint3.setOdataId("4b014d8c-71fe-4d00-a01a-31850bc5b32c");
property3.setRestorePoint(restorePoint3);
property3.setDestinationType("new");
driveRestoreArtifactsDelta.add(property3);
 property4 = new ();
 removed = new ();
removed.setReason("changed");
property4.setRemoved(removed);
property4.setId("99954f18-c8ec-4b62-85bf-cdf3b70b140e");
driveRestoreArtifactsDelta.add(property4);
 property5 = new ();
 removed1 = new ();
removed1.setReason("changed");
property5.setRemoved(removed1);
property5.setId("4267e382-71a9-4c07-bef7-bda97e09c0d2");
driveRestoreArtifactsDelta.add(property5);
 property6 = new ();
 removed2 = new ();
removed2.setReason("changed");
property6.setRemoved(removed2);
property6.setId("3667e382-71a9-4c07-bef7-bda97e09c0d2");
driveRestoreArtifactsDelta.add(property6);
additionalData.put("driveRestoreArtifacts@delta", driveRestoreArtifactsDelta);
oneDriveForBusinessRestoreSession.setAdditionalData(additionalData);
OneDriveForBusinessRestoreSession result = graphClient.solutions().backupRestore().oneDriveForBusinessRestoreSessions().byOneDriveForBusinessRestoreSessionId("{oneDriveForBusinessRestoreSession-id}").patch(oneDriveForBusinessRestoreSession);


```
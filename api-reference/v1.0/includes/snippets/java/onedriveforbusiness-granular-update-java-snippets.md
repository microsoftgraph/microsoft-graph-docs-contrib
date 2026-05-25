---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessRestoreSession oneDriveForBusinessRestoreSession = new OneDriveForBusinessRestoreSession();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> granularDriveRestoreArtifactsDelta = new LinkedList<Object>();
 property = new ();
property.setBrowseSessionId("m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE");
property.setItemKey("a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2");
granularDriveRestoreArtifactsDelta.add(property);
 property1 = new ();
 removed = new ();
removed.setReason("changed");
property1.setRemoved(removed);
property1.setId("a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2");
granularDriveRestoreArtifactsDelta.add(property1);
additionalData.put("granularDriveRestoreArtifacts@delta", granularDriveRestoreArtifactsDelta);
oneDriveForBusinessRestoreSession.setAdditionalData(additionalData);
OneDriveForBusinessRestoreSession result = graphClient.solutions().backupRestore().oneDriveForBusinessRestoreSessions().byOneDriveForBusinessRestoreSessionId("{oneDriveForBusinessRestoreSession-id}").patch(oneDriveForBusinessRestoreSession);


```
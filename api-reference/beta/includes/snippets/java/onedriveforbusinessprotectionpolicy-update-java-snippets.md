---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessProtectionPolicy oneDriveForBusinessProtectionPolicy = new OneDriveForBusinessProtectionPolicy();
oneDriveForBusinessProtectionPolicy.setDisplayName("One Drive  Policy - Inadvertent data loss");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> driveProtectionUnitsDelta = new LinkedList<Object>();
 property = new ();
property.setUserId("1b014d8c-71fe-4d00-a01a-31850bc5b32c");
driveProtectionUnitsDelta.add(property);
 property1 = new ();
property1.setUserId("2b014d8c-71fe-4d00-a01a-31850bc5b32c");
driveProtectionUnitsDelta.add(property1);
 property2 = new ();
 removed = new ();
removed.setReason("changed");
property2.setRemoved(removed);
property2.setId("4267e382-71a9-4c07-bef7-bda97e09c0d2");
driveProtectionUnitsDelta.add(property2);
 property3 = new ();
 removed1 = new ();
removed1.setReason("changed");
property3.setRemoved(removed1);
property3.setId("3667e382-71a9-4c07-bef7-bda97e09c0d2");
driveProtectionUnitsDelta.add(property3);
additionalData.put("driveProtectionUnits@delta", driveProtectionUnitsDelta);
oneDriveForBusinessProtectionPolicy.setAdditionalData(additionalData);
OneDriveForBusinessProtectionPolicy result = graphClient.solutions().backupRestore().oneDriveForBusinessProtectionPolicies().byOneDriveForBusinessProtectionPolicyId("{oneDriveForBusinessProtectionPolicy-id}").patch(oneDriveForBusinessProtectionPolicy);


```
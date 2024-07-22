---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OneDriveForBusinessProtectionPolicy oneDriveForBusinessProtectionPolicy = new OneDriveForBusinessProtectionPolicy();
oneDriveForBusinessProtectionPolicy.setDisplayName("OneDrive For Business Protection Policy");
LinkedList<DriveProtectionUnit> driveProtectionUnits = new LinkedList<DriveProtectionUnit>();
DriveProtectionUnit driveProtectionUnit = new DriveProtectionUnit();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("userId", "cdd3a849-dcaf-4a85-af82-7e39fc14019");
driveProtectionUnit.setAdditionalData(additionalData);
driveProtectionUnits.add(driveProtectionUnit);
DriveProtectionUnit driveProtectionUnit1 = new DriveProtectionUnit();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("userId", "9bc069da-b746-41a4-89ab-26125c6373c7");
driveProtectionUnit1.setAdditionalData(additionalData1);
driveProtectionUnits.add(driveProtectionUnit1);
DriveProtectionUnit driveProtectionUnit2 = new DriveProtectionUnit();
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("userId", "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7");
driveProtectionUnit2.setAdditionalData(additionalData2);
driveProtectionUnits.add(driveProtectionUnit2);
oneDriveForBusinessProtectionPolicy.setDriveProtectionUnits(driveProtectionUnits);
OneDriveForBusinessProtectionPolicy result = graphClient.solutions().backupRestore().oneDriveForBusinessProtectionPolicies().post(oneDriveForBusinessProtectionPolicy);


```
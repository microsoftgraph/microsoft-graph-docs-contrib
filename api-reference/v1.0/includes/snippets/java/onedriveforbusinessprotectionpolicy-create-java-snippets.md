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
driveProtectionUnit.setDirectoryObjectId("cdd3a849-dcaf-4a85-af82-7e39fc14019");
driveProtectionUnits.add(driveProtectionUnit);
DriveProtectionUnit driveProtectionUnit1 = new DriveProtectionUnit();
driveProtectionUnit1.setDirectoryObjectId("9bc069da-b746-41a4-89ab-26125c6373c7");
driveProtectionUnits.add(driveProtectionUnit1);
DriveProtectionUnit driveProtectionUnit2 = new DriveProtectionUnit();
driveProtectionUnit2.setDirectoryObjectId("b218eb4a-ea72-42bd-8f0b-d0bbf794bec7");
driveProtectionUnits.add(driveProtectionUnit2);
oneDriveForBusinessProtectionPolicy.setDriveProtectionUnits(driveProtectionUnits);
OneDriveForBusinessProtectionPolicy result = graphClient.solutions().backupRestore().oneDriveForBusinessProtectionPolicies().post(oneDriveForBusinessProtectionPolicy);


```
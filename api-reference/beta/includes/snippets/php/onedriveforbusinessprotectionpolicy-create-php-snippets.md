---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OneDriveForBusinessProtectionPolicy;
use Microsoft\Graph\Beta\Generated\Models\DriveProtectionUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessProtectionPolicy();
$requestBody->setDisplayName('OneDrive For Business Protection Policy');
$driveProtectionUnitsDriveProtectionUnit1 = new DriveProtectionUnit();
$driveProtectionUnitsDriveProtectionUnit1->setDirectoryObjectId('cdd3a849-dcaf-4a85-af82-7e39fc14019');
$driveProtectionUnitsArray []= $driveProtectionUnitsDriveProtectionUnit1;
$driveProtectionUnitsDriveProtectionUnit2 = new DriveProtectionUnit();
$driveProtectionUnitsDriveProtectionUnit2->setDirectoryObjectId('9bc069da-b746-41a4-89ab-26125c6373c7');
$driveProtectionUnitsArray []= $driveProtectionUnitsDriveProtectionUnit2;
$driveProtectionUnitsDriveProtectionUnit3 = new DriveProtectionUnit();
$driveProtectionUnitsDriveProtectionUnit3->setDirectoryObjectId('b218eb4a-ea72-42bd-8f0b-d0bbf794bec7');
$driveProtectionUnitsArray []= $driveProtectionUnitsDriveProtectionUnit3;
$requestBody->setDriveProtectionUnits($driveProtectionUnitsArray);


$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessProtectionPolicies()->post($requestBody)->wait();

```
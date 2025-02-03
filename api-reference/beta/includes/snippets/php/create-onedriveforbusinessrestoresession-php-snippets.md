---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OneDriveForBusinessRestoreSession;
use Microsoft\Graph\Beta\Generated\Models\DriveRestoreArtifact;
use Microsoft\Graph\Beta\Generated\Models\RestorePoint;
use Microsoft\Graph\Beta\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessRestoreSession();
$driveRestoreArtifactsDriveRestoreArtifact1 = new DriveRestoreArtifact();
$driveRestoreArtifactsDriveRestoreArtifact1RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888279',
];
$driveRestoreArtifactsDriveRestoreArtifact1RestorePoint->setAdditionalData($additionalData);
$driveRestoreArtifactsDriveRestoreArtifact1->setRestorePoint($driveRestoreArtifactsDriveRestoreArtifact1RestorePoint);
$driveRestoreArtifactsDriveRestoreArtifact1->setDestinationType(new DestinationType('new'));
$driveRestoreArtifactsArray []= $driveRestoreArtifactsDriveRestoreArtifact1;
$driveRestoreArtifactsDriveRestoreArtifact2 = new DriveRestoreArtifact();
$driveRestoreArtifactsDriveRestoreArtifact2RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888280',
];
$driveRestoreArtifactsDriveRestoreArtifact2RestorePoint->setAdditionalData($additionalData);
$driveRestoreArtifactsDriveRestoreArtifact2->setRestorePoint($driveRestoreArtifactsDriveRestoreArtifact2RestorePoint);
$driveRestoreArtifactsDriveRestoreArtifact2->setDestinationType(new DestinationType('new'));
$driveRestoreArtifactsArray []= $driveRestoreArtifactsDriveRestoreArtifact2;
$requestBody->setDriveRestoreArtifacts($driveRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessRestoreSessions()->post($requestBody)->wait();

```
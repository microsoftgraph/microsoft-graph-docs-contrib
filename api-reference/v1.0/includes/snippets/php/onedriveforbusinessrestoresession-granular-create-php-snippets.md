---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OneDriveForBusinessRestoreSession;
use Microsoft\Graph\Generated\Models\GranularDriveRestoreArtifact;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OneDriveForBusinessRestoreSession();
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact1 = new GranularDriveRestoreArtifact();
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact1->setBrowseSessionId('eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6');
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact1->setId('a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2');
$granularDriveRestoreArtifactsArray []= $granularDriveRestoreArtifactsGranularDriveRestoreArtifact1;
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact2 = new GranularDriveRestoreArtifact();
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact2->setBrowseSessionId('eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6');
$granularDriveRestoreArtifactsGranularDriveRestoreArtifact2->setId('b535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2');
$granularDriveRestoreArtifactsArray []= $granularDriveRestoreArtifactsGranularDriveRestoreArtifact2;
$requestBody->setGranularDriveRestoreArtifacts($granularDriveRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->oneDriveForBusinessRestoreSessions()->post($requestBody)->wait();

```
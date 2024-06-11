---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointRestoreSession;
use Microsoft\Graph\Beta\Generated\Models\SiteRestoreArtifact;
use Microsoft\Graph\Beta\Generated\Models\RestorePoint;
use Microsoft\Graph\Beta\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointRestoreSession();
$siteRestoreArtifactsSiteRestoreArtifact1 = new SiteRestoreArtifact();
$siteRestoreArtifactsSiteRestoreArtifact1RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888279',
];
$siteRestoreArtifactsSiteRestoreArtifact1RestorePoint->setAdditionalData($additionalData);
$siteRestoreArtifactsSiteRestoreArtifact1->setRestorePoint($siteRestoreArtifactsSiteRestoreArtifact1RestorePoint);
$siteRestoreArtifactsSiteRestoreArtifact1->setDestinationType(new DestinationType('inPlace'));
$siteRestoreArtifactsArray []= $siteRestoreArtifactsSiteRestoreArtifact1;
$siteRestoreArtifactsSiteRestoreArtifact2 = new SiteRestoreArtifact();
$siteRestoreArtifactsSiteRestoreArtifact2RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888280',
];
$siteRestoreArtifactsSiteRestoreArtifact2RestorePoint->setAdditionalData($additionalData);
$siteRestoreArtifactsSiteRestoreArtifact2->setRestorePoint($siteRestoreArtifactsSiteRestoreArtifact2RestorePoint);
$siteRestoreArtifactsSiteRestoreArtifact2->setDestinationType(new DestinationType('inPlace'));
$siteRestoreArtifactsArray []= $siteRestoreArtifactsSiteRestoreArtifact2;
$requestBody->setSiteRestoreArtifacts($siteRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->post($requestBody)->wait();

```
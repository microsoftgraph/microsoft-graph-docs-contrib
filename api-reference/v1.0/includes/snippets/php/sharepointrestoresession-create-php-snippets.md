---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SharePointRestoreSession;
use Microsoft\Graph\Generated\Models\SiteRestoreArtifact;
use Microsoft\Graph\Generated\Models\RestorePoint;
use Microsoft\Graph\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointRestoreSession();
$siteRestoreArtifactsSiteRestoreArtifact1 = new SiteRestoreArtifact();
$siteRestoreArtifactsSiteRestoreArtifact1RestorePoint = new RestorePoint();
$siteRestoreArtifactsSiteRestoreArtifact1RestorePoint->setId('1f1fccc3-a642-4f61-bf49-f37b9a888279');
$siteRestoreArtifactsSiteRestoreArtifact1->setRestorePoint($siteRestoreArtifactsSiteRestoreArtifact1RestorePoint);
$siteRestoreArtifactsSiteRestoreArtifact1->setDestinationType(new DestinationType('inPlace'));
$siteRestoreArtifactsArray []= $siteRestoreArtifactsSiteRestoreArtifact1;
$siteRestoreArtifactsSiteRestoreArtifact2 = new SiteRestoreArtifact();
$siteRestoreArtifactsSiteRestoreArtifact2RestorePoint = new RestorePoint();
$siteRestoreArtifactsSiteRestoreArtifact2RestorePoint->setId('1f1fccc3-a642-4f61-bf49-f37b9a888280');
$siteRestoreArtifactsSiteRestoreArtifact2->setRestorePoint($siteRestoreArtifactsSiteRestoreArtifact2RestorePoint);
$siteRestoreArtifactsSiteRestoreArtifact2->setDestinationType(new DestinationType('inPlace'));
$siteRestoreArtifactsArray []= $siteRestoreArtifactsSiteRestoreArtifact2;
$requestBody->setSiteRestoreArtifacts($siteRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->sharePointRestoreSessions()->post($requestBody)->wait();

```
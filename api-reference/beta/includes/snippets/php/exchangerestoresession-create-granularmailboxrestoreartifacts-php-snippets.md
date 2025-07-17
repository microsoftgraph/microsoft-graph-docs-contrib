---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExchangeRestoreSession;
use Microsoft\Graph\Beta\Generated\Models\GranularMailboxRestoreArtifact;
use Microsoft\Graph\Beta\Generated\Models\RestorePoint;
use Microsoft\Graph\Beta\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeRestoreSession();
$requestBody->setOdataType('#microsoft.graph.exchangeRestoreSession');
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1 = new GranularMailboxRestoreArtifact();
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1RestorePoint = new RestorePoint();
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1RestorePoint->setId('1f1fccc3-a642-4f61-bf49-f37b9a888279');
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1->setRestorePoint($granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1RestorePoint);
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1->setDestinationType(new DestinationType('inPlace'));
$granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1->setSearchResponseId('M2UyZDAwMDAwMDMxMzkzYTMyNj');
$granularMailboxRestoreArtifactsArray []= $granularMailboxRestoreArtifactsGranularMailboxRestoreArtifact1;
$requestBody->setGranularMailboxRestoreArtifacts($granularMailboxRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeRestoreSessions()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExchangeRestoreSession;
use Microsoft\Graph\Beta\Generated\Models\MailboxRestoreArtifact;
use Microsoft\Graph\Beta\Generated\Models\RestorePoint;
use Microsoft\Graph\Beta\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeRestoreSession();
$mailboxRestoreArtifactsMailboxRestoreArtifact1 = new MailboxRestoreArtifact();
$mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888279',
];
$mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint->setAdditionalData($additionalData);
$mailboxRestoreArtifactsMailboxRestoreArtifact1->setRestorePoint($mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint);
$mailboxRestoreArtifactsMailboxRestoreArtifact1->setDestinationType(new DestinationType('inPlace'));
$mailboxRestoreArtifactsArray []= $mailboxRestoreArtifactsMailboxRestoreArtifact1;
$mailboxRestoreArtifactsMailboxRestoreArtifact2 = new MailboxRestoreArtifact();
$mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint = new RestorePoint();
$additionalData = [
	'@odata.id' => '1f1fccc3-a642-4f61-bf49-f37b9a888280',
];
$mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint->setAdditionalData($additionalData);
$mailboxRestoreArtifactsMailboxRestoreArtifact2->setRestorePoint($mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint);
$mailboxRestoreArtifactsMailboxRestoreArtifact2->setDestinationType(new DestinationType('inPlace'));
$mailboxRestoreArtifactsArray []= $mailboxRestoreArtifactsMailboxRestoreArtifact2;
$requestBody->setMailboxRestoreArtifacts($mailboxRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeRestoreSessions()->post($requestBody)->wait();

```
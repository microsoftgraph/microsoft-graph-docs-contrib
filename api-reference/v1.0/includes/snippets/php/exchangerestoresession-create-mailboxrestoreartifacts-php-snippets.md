---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExchangeRestoreSession;
use Microsoft\Graph\Generated\Models\MailboxRestoreArtifact;
use Microsoft\Graph\Generated\Models\RestorePoint;
use Microsoft\Graph\Generated\Models\DestinationType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeRestoreSession();
$mailboxRestoreArtifactsMailboxRestoreArtifact1 = new MailboxRestoreArtifact();
$mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint = new RestorePoint();
$mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint->setId('1f1fccc3-a642-4f61-bf49-f37b9a888279');
$mailboxRestoreArtifactsMailboxRestoreArtifact1->setRestorePoint($mailboxRestoreArtifactsMailboxRestoreArtifact1RestorePoint);
$mailboxRestoreArtifactsMailboxRestoreArtifact1->setDestinationType(new DestinationType('inPlace'));
$mailboxRestoreArtifactsArray []= $mailboxRestoreArtifactsMailboxRestoreArtifact1;
$mailboxRestoreArtifactsMailboxRestoreArtifact2 = new MailboxRestoreArtifact();
$mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint = new RestorePoint();
$mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint->setId('1f1fccc3-a642-4f61-bf49-f37b9a888280');
$mailboxRestoreArtifactsMailboxRestoreArtifact2->setRestorePoint($mailboxRestoreArtifactsMailboxRestoreArtifact2RestorePoint);
$mailboxRestoreArtifactsMailboxRestoreArtifact2->setDestinationType(new DestinationType('inPlace'));
$mailboxRestoreArtifactsArray []= $mailboxRestoreArtifactsMailboxRestoreArtifact2;
$requestBody->setMailboxRestoreArtifacts($mailboxRestoreArtifactsArray);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeRestoreSessions()->post($requestBody)->wait();

```
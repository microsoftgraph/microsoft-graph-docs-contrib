---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExchangeProtectionPolicy;
use Microsoft\Graph\Generated\Models\MailboxProtectionUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeProtectionPolicy();
$requestBody->setDisplayName('Exchange Protection Policy');
$mailboxProtectionUnitsMailboxProtectionUnit1 = new MailboxProtectionUnit();
$mailboxProtectionUnitsMailboxProtectionUnit1->setDirectoryObjectId('cdd3a849-dcaf-4a85-af82-7e39fc14019a');
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit1;
$mailboxProtectionUnitsMailboxProtectionUnit2 = new MailboxProtectionUnit();
$mailboxProtectionUnitsMailboxProtectionUnit2->setDirectoryObjectId('9bc069da-b746-41a4-89ab-26125c6373c7');
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit2;
$mailboxProtectionUnitsMailboxProtectionUnit3 = new MailboxProtectionUnit();
$mailboxProtectionUnitsMailboxProtectionUnit3->setDirectoryObjectId('b218eb4a-ea72-42bd-8f0b-d0bbf794bec7');
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit3;
$requestBody->setMailboxProtectionUnits($mailboxProtectionUnitsArray);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeProtectionPolicies()->post($requestBody)->wait();

```
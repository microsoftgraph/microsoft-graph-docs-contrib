---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExchangeProtectionPolicy;
use Microsoft\Graph\Beta\Generated\Models\MailboxProtectionUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExchangeProtectionPolicy();
$requestBody->setDisplayName('Exchange Protection Policy');
$mailboxProtectionUnitsMailboxProtectionUnit1 = new MailboxProtectionUnit();
$additionalData = [
	'userId' => 'cdd3a849-dcaf-4a85-af82-7e39fc14019a',
];
$mailboxProtectionUnitsMailboxProtectionUnit1->setAdditionalData($additionalData);
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit1;
$mailboxProtectionUnitsMailboxProtectionUnit2 = new MailboxProtectionUnit();
$additionalData = [
	'userId' => '9bc069da-b746-41a4-89ab-26125c6373c7',
];
$mailboxProtectionUnitsMailboxProtectionUnit2->setAdditionalData($additionalData);
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit2;
$mailboxProtectionUnitsMailboxProtectionUnit3 = new MailboxProtectionUnit();
$additionalData = [
	'userId' => 'b218eb4a-ea72-42bd-8f0b-d0bbf794bec7',
];
$mailboxProtectionUnitsMailboxProtectionUnit3->setAdditionalData($additionalData);
$mailboxProtectionUnitsArray []= $mailboxProtectionUnitsMailboxProtectionUnit3;
$requestBody->setMailboxProtectionUnits($mailboxProtectionUnitsArray);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeProtectionPolicies()->post($requestBody)->wait();

```
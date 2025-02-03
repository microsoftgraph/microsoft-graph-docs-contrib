---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MailboxSettings;
use Microsoft\Graph\Beta\Generated\Models\DelegateMeetingMessageDeliveryOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MailboxSettings();
$requestBody->setDelegateMeetingMessageDeliveryOptions(new DelegateMeetingMessageDeliveryOptions('sendToDelegateAndPrincipal'));

$result = $graphServiceClient->users()->byUserId('user-id')->mailboxSettings()->patch($requestBody)->wait();

```
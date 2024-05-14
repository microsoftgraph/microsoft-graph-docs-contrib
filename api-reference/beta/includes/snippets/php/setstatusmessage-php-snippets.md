---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SetStatusMessagePostRequestBody;
use Microsoft\Graph\Generated\Models\PresenceStatusMessage;
use Microsoft\Graph\Generated\Models\ItemBody;
use Microsoft\Graph\Generated\Models\DateTimeTimeZone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetStatusMessagePostRequestBody();
$statusMessage = new PresenceStatusMessage();
$statusMessageMessage = new ItemBody();
$statusMessageMessage->setContent('Hey I\'m currently in a meeting.');
$statusMessageMessage->setContentType(new BodyType('text'));
$statusMessage->setMessage($statusMessageMessage);
$statusMessageExpiryDateTime = new DateTimeTimeZone();
$statusMessageExpiryDateTime->setDateTime('2022-10-18T17:05:33.2079781');
$statusMessageExpiryDateTime->setTimeZone('Pacific Standard Time');
$statusMessage->setExpiryDateTime($statusMessageExpiryDateTime);
$requestBody->setStatusMessage($statusMessage);

$graphServiceClient->users()->byUserId('user-id')->presence()->setStatusMessage()->post($requestBody)->wait();

```
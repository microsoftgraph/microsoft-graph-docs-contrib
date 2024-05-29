---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Presence\SetStatusMessage\SetStatusMessagePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\PresenceStatusMessage;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SetStatusMessagePostRequestBody();
$statusMessage = new PresenceStatusMessage();
$statusMessageMessage = new ItemBody();
$statusMessageMessage->setContent('Hey I am available now');
$statusMessageMessage->setContentType(new BodyType('text'));
$statusMessage->setMessage($statusMessageMessage);
$requestBody->setStatusMessage($statusMessage);

$graphServiceClient->users()->byUserId('user-id')->presence()->setStatusMessage()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\MailFolders\Item\Move\MovePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->move()->post($requestBody)->wait();

```
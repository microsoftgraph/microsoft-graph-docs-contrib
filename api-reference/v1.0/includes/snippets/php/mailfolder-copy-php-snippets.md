---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\MailFolders\Item\Copy\CopyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->copy()->post($requestBody)->wait();

```
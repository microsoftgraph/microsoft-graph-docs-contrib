---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->move()->post($requestBody)->wait();

```
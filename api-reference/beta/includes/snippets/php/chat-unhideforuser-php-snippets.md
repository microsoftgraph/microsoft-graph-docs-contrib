---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UnhideForUserPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkUserIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnhideForUserPostRequestBody();
$user = new TeamworkUserIdentity();
$user->setId('d864e79f-a516-4d0f-9fee-0eeb4d61fdc2');
$additionalData = [
	'tenantId' => '2a690434-97d9-4eed-83a6-f5f13600199a',
];
$user->setAdditionalData($additionalData);
$requestBody->setUser($user);

$graphServiceClient->chats()->byChatId('chat-id')->unhideForUser()->post($requestBody)->wait();

```
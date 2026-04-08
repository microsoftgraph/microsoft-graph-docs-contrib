---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Chats\Item\RemoveAllAccessForUser\RemoveAllAccessForUserPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamworkUserIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoveAllAccessForUserPostRequestBody();
$user = new TeamworkUserIdentity();
$user->setOdataType('microsoft.graph.teamworkUserIdentity');
$user->setId('f47ac10b-58cc-4372-a567-0e02b2c3d479');
$additionalData = [
	'tenantId' => 'a1b2c3d4-e5f6-7890-1234-567890abcdef',
];
$user->setAdditionalData($additionalData);
$requestBody->setUser($user);

$graphServiceClient->chats()->byChatId('chat-id')->removeAllAccessForUser()->post($requestBody)->wait();

```
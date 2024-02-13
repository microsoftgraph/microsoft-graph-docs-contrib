---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoveAllAccessForUserPostRequestBody();
$user = new TeamworkUserIdentity();
$user->setOdataType('microsoft.graph.teamworkUserIdentity');
$requestBody->setUser($user);

$graphServiceClient->chats()->byChatId('chat-id')->removeAllAccessForUser()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePostRequestBody();
$requestBody->setNotifyTeam(true);
$requestBody->setStartDateTime(new \DateTime('2018-10-08T00:00:00.000Z'));
$requestBody->setEndDateTime(new \DateTime('2018-10-15T00:00:00.000Z'));

$graphServiceClient->teams()->byTeamId('team-id')->schedule()->share()->post($requestBody)->wait();

```
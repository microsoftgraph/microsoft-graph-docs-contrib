---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Schedule\TimeCards\Item\ConfirmForUser\ConfirmForUserPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConfirmForUserPostRequestBody();
$requestBody->setUserId('d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2');

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeCards()->byTimeCardId('timeCard-id')->confirmForUser()->post($requestBody)->wait();

```
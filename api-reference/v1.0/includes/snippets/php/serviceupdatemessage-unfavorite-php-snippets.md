---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnfavoritePostRequestBody();
$requestBody->setMessageIds(['MC172851', 'MC167983', 	]);

$result = $graphServiceClient->admin()->serviceAnnouncement()->messages()->unfavorite()->post($requestBody)->wait();

```
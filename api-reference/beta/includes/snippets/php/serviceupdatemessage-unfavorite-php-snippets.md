---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\ServiceAnnouncement\Messages\Unfavorite\UnfavoritePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnfavoritePostRequestBody();
$requestBody->setMessageIds(['MC172851', 'MC167983', 	]);

$result = $graphServiceClient->admin()->serviceAnnouncement()->messages()->unfavorite()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ArchivePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ArchivePostRequestBody();
$requestBody->setMessageIds(['MC172851', 'MC167983', 	]);

$result = $graphServiceClient->admin()->serviceAnnouncement()->messages()->archive()->post($requestBody)->wait();

```
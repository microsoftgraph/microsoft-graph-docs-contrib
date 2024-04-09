---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Store;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Store();
$requestBody->setDefaultLanguageTag('en-US');

$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->patch($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Notebook;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Notebook();
$requestBody->setDisplayName('My Private notebook');

$result = $graphServiceClient->me()->onenote()->notebooks()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AddCopyPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddCopyPostRequestBody();
$requestBody->setContentType('https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101');

$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->contentTypes()->addCopy()->post($requestBody)->wait();

```
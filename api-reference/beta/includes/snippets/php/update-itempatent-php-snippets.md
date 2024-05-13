---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemPatent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPatent();
$requestBody->setNumber('USPTO-3954432633');
$requestBody->setWebUrl('https://patents.gov/3954432633');

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->patents()->byItemPatentId('itemPatent-id')->patch($requestBody)->wait();

```
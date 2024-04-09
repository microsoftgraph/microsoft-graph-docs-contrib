---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PersonAward;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAward();
$requestBody->setIssuingAuthority('International Association of Branding Management');
$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');

$result = $graphServiceClient->users()->byUserId('user-id')->profile()->awards()->byPersonAwardId('personAward-id')->patch($requestBody)->wait();

```
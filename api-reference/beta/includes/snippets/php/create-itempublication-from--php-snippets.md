---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ItemPublication;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemPublication();
$requestBody->setDescription('One persons journey to the top of the branding management field.');
$requestBody->setDisplayName('Got Brands? The story of Innocenty Popov and his journey to the top.');
$requestBody->setPublishedDate(new Date('Date'));
$requestBody->setPublisher('International Association of Branding Management Publishing');
$requestBody->setThumbnailUrl('https://iabm.io/sdhdfhsdhshsd.jpg');
$requestBody->setWebUrl('https://www.iabm.io');

$result = $graphServiceClient->me()->profile()->publications()->post($requestBody)->wait();

```
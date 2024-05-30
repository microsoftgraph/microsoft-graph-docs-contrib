---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonCertification;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonCertification();
$requestBody->setCertificationId('KB-1235466333663322');
$requestBody->setDescription('Blackbelt in Marketing - Brand Management');
$requestBody->setDisplayName('Marketing Blackbelt - Brand Management');
$requestBody->setThumbnailUrl('https://iame.io/dfhdfdfd334.jpg');
$requestBody->setWebUrl('https://www.iame.io/blackbelt');

$result = $graphServiceClient->me()->profile()->certifications()->post($requestBody)->wait();

```
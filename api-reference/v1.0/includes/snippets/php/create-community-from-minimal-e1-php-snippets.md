---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Community;
use Microsoft\Graph\Generated\Models\CommunityPrivacy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Community();
$requestBody->setDisplayName('Financial Advice for Software Engineers');
$requestBody->setDescription('A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.');
$requestBody->setPrivacy(new CommunityPrivacy('public'));

$result = $graphServiceClient->employeeExperience()->communities()->post($requestBody)->wait();

```
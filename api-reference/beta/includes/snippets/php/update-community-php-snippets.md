---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Community;
use Microsoft\Graph\Beta\Generated\Models\CommunityPrivacy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Community();
$requestBody->setDisplayName('Financial Advice for Software Engineers');
$requestBody->setDescription('A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.');
$requestBody->setPrivacy(new CommunityPrivacy('public'));

$result = $graphServiceClient->employeeExperience()->communities()->byCommunityId('community-id')->patch($requestBody)->wait();

```
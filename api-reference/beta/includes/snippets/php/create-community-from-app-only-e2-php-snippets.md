---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Community;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Community();
$requestBody->setDisplayName('Financial Advice for Software Engineers');
$requestBody->setDescription('A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.');
$requestBody->setPrivacy(new CommunityPrivacy('public'));
$additionalData = [
	'owners@odata.bind' => [
'https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2', ],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->employeeExperience()->communities()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WebAccount();
$requestBody->setDescription('My Github contributions!');

$requestBody->setUserId('innocenty.popov');

$service = new ServiceInformation();
$service->setName('GitHub');

$service->setWebUrl('https://github.com');


$requestBody->setService($service);


$result = $graphServiceClient->me()->profile()->webAccounts()->post($requestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationClass();
$requestBody->setDescription('Health Level 1');

$requestBody->setClassCode('Health 501');

$requestBody->setDisplayName('Health 1');

$requestBody->setExternalId('11019');

$requestBody->setExternalName('Health Level 1');

$requestBody->setExternalSource(new EducationExternalSource('sis'));

$requestBody->setMailNickname('fineartschool.net');



$result = $graphServiceClient->education()->classes()->post($requestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Incident();
$requestBody->setClassification(new AlertClassification('truepositive'));

$requestBody->setDetermination(new AlertDetermination('multistagedattack'));

$requestBody->setTags(['Demo', ]);



$graphServiceClient->security()->incidentsById('incident-id')->patch($requestBody);


```
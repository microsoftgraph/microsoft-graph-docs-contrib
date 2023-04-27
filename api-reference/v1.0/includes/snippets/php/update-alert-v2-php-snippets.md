---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Alert();
$requestBody->setAssignedTo('secAdmin@contoso.onmicrosoft.com');

$requestBody->setClassification(new AlertClassification('truepositive'));

$requestBody->setDetermination(new AlertDetermination('malware'));

$requestBody->setStatus(new AlertStatus('inprogress'));



$result = $graphServiceClient->security()->alerts_v2ById('alert-id')->patch($requestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Alert();
$requestBody->setAssignedTo('secAdmin@contoso.onmicrosoft.com');

$requestBody->setClassification(new AlertClassification('truePositive'));

$requestBody->setDetermination(new AlertDetermination('malware'));

$requestBody->setStatus(new AlertStatus('inProgress'));



$result = $graphServiceClient->security()->alerts_v2()->byAlertId('alert-id')->patch($requestBody);


```
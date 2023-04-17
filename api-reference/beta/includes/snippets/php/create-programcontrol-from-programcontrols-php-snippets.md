---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ProgramControl();
$requestBody->setControlId('7e59d237-2fb0-4e5d-b7bb-d4f9f9129213');

$requestBody->setControlTypeId('6e4f3d20-c5c3-407f-9695-8460952bcc68');

$requestBody->setProgramId('7e59d237-2fb0-4e5d-b7bb-d4f9f9129213');



$result = $graphServiceClient->programControls()->post($requestBody);


```
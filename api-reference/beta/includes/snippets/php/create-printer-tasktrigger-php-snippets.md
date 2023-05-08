---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrintTaskTrigger();
$requestBody->setEvent(new PrintEvent('jobstarted'));

$additionalData = [
		'definition@odata.bind' => 'https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->print()->printersById('printer-id')->taskTriggers()->post($requestBody);


```
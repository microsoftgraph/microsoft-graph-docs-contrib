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
		'definition@odata.bind' => 'https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->print()->printersById('printer-id')->taskTriggers()->post($requestBody);


```
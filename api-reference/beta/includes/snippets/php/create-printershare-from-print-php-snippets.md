---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrinterShare();
$requestBody->setName('name-value');

$additionalData = [
		'printer@odata.bind' => 'https://graph.microsoft.com/beta/print/printers/{id}', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->print()->shares()->post($requestBody);


```
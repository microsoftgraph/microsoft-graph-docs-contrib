---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrinterShare();
$requestBody->setDisplayName('ShareName');

$requestBody->setAllowAllUsers(false);

$additionalData = [
		'printer@odata.bind' => 'https://graph.microsoft.com/v1.0/print/printers/{printerId}', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->print()->shares()->post($requestBody);


```
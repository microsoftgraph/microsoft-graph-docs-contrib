---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrinterShare();
$requestBody->setDisplayName('ShareName');

$requestBody->setAllowAllUsers(true);

$additionalData = [
		'printer@odata.bind' => 'https://graph.microsoft.com/beta/print/printers/{id}', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->print()->shares()->byPrinterShareId('printerShare-id')->patch($requestBody);


```
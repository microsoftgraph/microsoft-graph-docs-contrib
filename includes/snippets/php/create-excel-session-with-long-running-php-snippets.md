---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateSessionPostRequestBody();
$requestBody->setPersistChanges(true);


$requestConfiguration = new CreateSessionRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'respond-async',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->createSession()->post($requestBody, $requestConfiguration);


```
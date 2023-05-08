---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Template();
$additionalData = [
		'id' => 'Slack', 
		'applicationId' => '{id}', 
		'factoryTag' => 'CustomSCIM', 
];
$requestBody->setAdditionalData($additionalData);



$requestConfiguration = new SynchronizationTemplateRequestBuilderPutRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer <token>',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->applicationsById('application-id')->synchronization()->templatesById('synchronizationTemplate-id')->put($requestBody, $requestConfiguration);


```
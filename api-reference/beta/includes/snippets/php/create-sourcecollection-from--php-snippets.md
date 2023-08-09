---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SourceCollection();
$requestBody->setDisplayName('Quarterly Financials search');

$requestBody->setContentQuery('subject:\'Quarterly Financials\'');

$additionalData = [
		'custodianSources@odata.bind' => [
				[
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->sourceCollections()->post($requestBody);


```
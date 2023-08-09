---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoverySearch();
$requestBody->setDisplayName('My search 2');

$requestBody->setDescription('My first search');

$requestBody->setContentQuery('(Author=\"edison\")');

$additionalData = [
		'custodianSources@odata.bind' => [
				[
				],
				[
				],
				[
				],
			],
		'noncustodialSources@odata.bind' => [
				[
				],
			],
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->post($requestBody);


```
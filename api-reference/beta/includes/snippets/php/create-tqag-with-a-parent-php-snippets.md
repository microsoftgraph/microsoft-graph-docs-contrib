---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryReviewTag();
$requestBody->setDisplayName('My tag API');

$requestBody->setDescription('Use Graph API to create tags');

$requestBody->setChildSelectability(new ChildSelectability('many'));

$additionalData = [
		'parent@odata.bind' => '', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->tags()->post($requestBody);


```
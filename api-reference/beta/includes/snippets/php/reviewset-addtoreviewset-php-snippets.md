---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddToReviewSetPostRequestBody();
$sourceCollection = new SourceCollection();
$sourceCollection->setId('1a9b4145d8f84e39bc45a7f68c5c5119');


$requestBody->setSourceCollection($sourceCollection);
$additionalData = [
		'additionalData' => 'linkedFiles', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->compliance()->ediscovery()->casesById('case-id')->reviewSetsById('reviewSet-id')->ediscoveryAddToReviewSet()->post($requestBody);


```
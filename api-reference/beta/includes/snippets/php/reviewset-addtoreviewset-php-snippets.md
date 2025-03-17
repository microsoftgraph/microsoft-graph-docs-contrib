---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Compliance\Ediscovery\Cases\Item\ReviewSets\Item\MicrosoftGraphEdiscoveryAddToReviewSet\AddToReviewSetPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\SourceCollection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddToReviewSetPostRequestBody();
$sourceCollection = new SourceCollection();
$sourceCollection->setId('1a9b4145d8f84e39bc45a7f68c5c5119');
$requestBody->setSourceCollection($sourceCollection);
$additionalData = [
	'additionalData' => 'linkedFiles',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->byReviewSetId('reviewSet-id')->microsoftGraphEdiscoveryAddToReviewSet()->post($requestBody)->wait();

```
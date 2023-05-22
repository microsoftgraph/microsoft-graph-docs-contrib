---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryReviewSetQuery();
$requestBody->setDisplayName('My Query 1 (update)');

$requestBody->setContentQuery('(Author=\"edisons\")');



$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byReviewSetId('ediscoveryReviewSet-id')->queries()->byQuerieId('ediscoveryReviewSetQuery-id')->patch($requestBody);


```
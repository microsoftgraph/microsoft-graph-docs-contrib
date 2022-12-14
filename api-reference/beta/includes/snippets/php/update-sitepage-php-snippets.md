---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SitePage();
$requestBody->set@odatatype('#microsoft.graph.sitePage');

$requestBody->setTitle('sample');

$additionalData = [
'showComments' => true,
'showRecommendedPages' => false,
];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->sitesById('site-id')->pagesById('sitePage-id')->patch($requestBody);


```
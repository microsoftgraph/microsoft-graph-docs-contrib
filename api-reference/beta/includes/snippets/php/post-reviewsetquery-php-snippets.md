---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReviewSetQuery();
$requestBody->setDisplayName('My Query 1');

$requestBody->setQuery('(subject:\"Quarterly Financials\")');



$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->reviewSetsById('reviewSet-id')->queries()->post($requestBody);


```
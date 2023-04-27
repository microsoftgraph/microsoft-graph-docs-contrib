---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new QueryPostRequestBody();
$requestsSearchRequest1 = new SearchRequest();
$requestsSearchRequest1->setEntityTypes([$requestsSearchRequest1->setEntityType(new EntityType('chatmessage'));
]);

$requestsSearchRequest1Query = new SearchQuery();
$requestsSearchRequest1Query->setQueryString('test');


$requestsSearchRequest1->setQuery($requestsSearchRequest1Query);
$requestsSearchRequest1->setFrom(0);

$requestsSearchRequest1->setSize(25);


$requestsArray []= $requestsSearchRequest1;
$requestBody->setRequests($requestsArray);




$result = $graphServiceClient->search()->query()->post($requestBody);


```
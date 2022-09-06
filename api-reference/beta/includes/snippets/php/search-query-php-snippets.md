---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new QueryPostRequestBody();
$requestsSearchRequest1 = new SearchRequest();
$additionalData = [
'entityTypes' => ['externalItem', ],
'contentSources' => ['/external/connections/connectionfriendlyname', ],
'query' => $requestsSearchRequest1 = new Query();
$requestsSearchRequest1->setQueryString('contoso product');


$requestsSearchRequest1->setQuery($query);

'from' => 0,
'size' => 25,
'fields' => ['title', 'description', ],
];
$requestsSearchRequest1->setAdditionalData($additionalData);



$requestsArray []= $requestsSearchRequest1;
$requestBody->setRequests($requestsArray);




$requestResult = $graphServiceClient->search()->query()->post($requestBody);


```
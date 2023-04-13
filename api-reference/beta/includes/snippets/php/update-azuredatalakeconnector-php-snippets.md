---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IndustryDataConnector();
$requestBody->set@odatatype('microsoft.graph.industryData.azureDataLakeConnector');

$requestBody->setDisplayName('API Monitor 60201009');



$result = $graphServiceClient->external()->industryData()->dataConnectorsById('industryDataConnector-id')->patch($requestBody);


```
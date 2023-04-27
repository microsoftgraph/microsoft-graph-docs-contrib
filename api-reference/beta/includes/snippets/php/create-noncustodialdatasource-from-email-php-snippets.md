---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(true);

$dataSource = new DataSource();
$dataSource->set@odatatype('microsoft.graph.ediscovery.userSource');

$additionalData = [
		'email' => 'adelev@contoso.com', 
];
$dataSource->setAdditionalData($additionalData);



$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->noncustodialDataSources()->post($requestBody);


```
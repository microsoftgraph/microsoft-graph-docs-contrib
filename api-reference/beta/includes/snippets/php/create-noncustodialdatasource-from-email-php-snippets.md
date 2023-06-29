---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(true);

$dataSource = new UserSource();
$dataSource->set@odatatype('microsoft.graph.ediscovery.userSource');

$dataSource->setEmail('adelev@contoso.com');


$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->noncustodialDataSources()->post($requestBody);


```
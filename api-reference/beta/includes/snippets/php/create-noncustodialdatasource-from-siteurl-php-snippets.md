---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(false);

$dataSource = new DataSource();
$dataSource->set@odatatype('microsoft.graph.ediscovery.siteSource');

$additionalData = [
		'site' => $dataSource = new Site();
$		dataSource->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');


$dataSource->setSite($site);

];
$dataSource->setAdditionalData($additionalData);



$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->noncustodialDataSources()->post($requestBody);


```
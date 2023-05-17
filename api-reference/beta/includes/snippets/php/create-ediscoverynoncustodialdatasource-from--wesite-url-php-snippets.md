---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryNoncustodialDataSource();
$dataSource = new DataSource();
$dataSource->set@odatatype('microsoft.graph.security.siteSource');

$additionalData = [
		'site' => $dataSource = new Site();
$		dataSource->setWebUrl('https://m365x809305.sharepoint.com/sites/Design-topsecret');


$dataSource->setSite($site);

];
$dataSource->setAdditionalData($additionalData);



$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->noncustodialDataSources()->post($requestBody);


```
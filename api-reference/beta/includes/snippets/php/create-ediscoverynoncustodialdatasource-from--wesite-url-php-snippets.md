---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryNoncustodialDataSource();
$dataSource = new SiteSource();
$dataSource->set@odatatype('microsoft.graph.security.siteSource');

$dataSourceSite = new Site();
$dataSourceSite->setWebUrl('https://m365x809305.sharepoint.com/sites/Design-topsecret');


$dataSource->setSite($dataSourceSite);

$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->noncustodialDataSources()->post($requestBody);


```
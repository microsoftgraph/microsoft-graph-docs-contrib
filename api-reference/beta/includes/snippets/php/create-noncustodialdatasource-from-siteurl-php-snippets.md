---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(false);

$dataSource = new SiteSource();
$dataSource->setOdataType('microsoft.graph.ediscovery.siteSource');

$dataSourceSite = new Site();
$dataSourceSite->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');


$dataSource->setSite($dataSourceSite);

$requestBody->setDataSource($dataSource);


$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->noncustodialDataSources()->post($requestBody);


```
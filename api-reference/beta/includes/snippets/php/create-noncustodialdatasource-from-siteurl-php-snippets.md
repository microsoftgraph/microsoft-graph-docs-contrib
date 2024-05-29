---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\NoncustodialDataSource;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\SiteSource;
use Microsoft\Graph\Beta\Generated\Models\Site;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NoncustodialDataSource();
$requestBody->setApplyHoldToSource(false);
$dataSource = new SiteSource();
$dataSource->setOdataType('microsoft.graph.ediscovery.siteSource');
$dataSourceSite = new Site();
$dataSourceSite->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');
$dataSource->setSite($dataSourceSite);
$requestBody->setDataSource($dataSource);

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->noncustodialDataSources()->post($requestBody)->wait();

```
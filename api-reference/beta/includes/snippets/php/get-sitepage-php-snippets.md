---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\Pages\Item\Graph\SitePage\SitePageRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GraphSitePageRequestBuilderGetRequestConfiguration();
$queryParameters = GraphSitePageRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","name"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->byBaseSitePageId('baseSitePage-id')->graphSitePage()->get($requestConfiguration)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\BrowserSite;
use Microsoft\Graph\Beta\Generated\Models\BrowserSiteTargetEnvironment;
use Microsoft\Graph\Beta\Generated\Models\BrowserSiteMergeType;
use Microsoft\Graph\Beta\Generated\Models\BrowserSiteCompatibilityMode;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrowserSite();
$requestBody->setWebUrl('www.microsoft.com');
$requestBody->setTargetEnvironment(new BrowserSiteTargetEnvironment('microsoftEdge'));
$requestBody->setMergeType(new BrowserSiteMergeType('default'));
$requestBody->setCompatibilityMode(new BrowserSiteCompatibilityMode('default'));
$requestBody->setAllowRedirect(false);
$requestBody->setComment('Updating to Edge.');

$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteLists()->byBrowserSiteListId('browserSiteList-id')->sites()->byBrowserSiteId('browserSite-id')->patch($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrowserSite();
$requestBody->setOdataType('#microsoft.graph.browserSite');

$requestBody->setWebUrl('www.microsoft.com');

$requestBody->setTargetEnvironment(new BrowserSiteTargetEnvironment('internetExplorer11'));

$requestBody->setComment('A site that opens in InternetExplorer11');

$requestBody->setMergeType(new BrowserSiteMergeType('default'));

$requestBody->setCompatibilityMode(new BrowserSiteCompatibilityMode('default'));

$requestBody->setAllowRedirect(true);



$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteLists()->byBrowserSiteListId('browserSiteList-id')->sites()->post($requestBody);


```
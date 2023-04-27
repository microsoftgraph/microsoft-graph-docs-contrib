---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BrowserSite();
$requestBody->set@odatatype('#microsoft.graph.browserSite');

$requestBody->setWebUrl('www.microsoft.com');

$requestBody->setTargetEnvironment(new BrowserSiteTargetEnvironment('internetexplorer11'));

$requestBody->setComment('A site that opens in InternetExplorer11');

$requestBody->setMergeType(new BrowserSiteMergeType('default'));

$requestBody->setCompatibilityMode(new BrowserSiteCompatibilityMode('default'));

$requestBody->setAllowRedirect(true);



$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->sites()->post($requestBody);


```
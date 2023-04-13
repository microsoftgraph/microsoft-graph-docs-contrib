---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BrowserSite();
$requestBody->setWebUrl('www.microsoft.com');

$requestBody->setTargetEnvironment(new BrowserSiteTargetEnvironment('microsoftedge'));

$requestBody->setMergeType(new BrowserSiteMergeType('default'));

$requestBody->setCompatibilityMode(new BrowserSiteCompatibilityMode('default'));

$requestBody->setAllowRedirect(false);

$requestBody->setComment('Updating to Edge.');



$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->sitesById('browserSite-id')->patch($requestBody);


```
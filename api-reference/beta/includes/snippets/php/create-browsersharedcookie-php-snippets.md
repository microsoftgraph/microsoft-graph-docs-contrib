---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\BrowserSharedCookie;
use Microsoft\Graph\Beta\Generated\Models\BrowserSharedCookieSourceEnvironment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrowserSharedCookie();
$requestBody->setOdataType('#microsoft.graph.browserSharedCookie');
$requestBody->setHostOrDomain('www.microsoft.com');
$requestBody->setSourceEnvironment(new BrowserSharedCookieSourceEnvironment('internetExplorer11'));
$requestBody->setDisplayName('Microsoft Cookie');
$requestBody->setHostOnly(true);
$requestBody->setComment('A cookie for microsoft.com');
$requestBody->setPath('/');

$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteLists()->byBrowserSiteListId('browserSiteList-id')->sharedCookies()->post($requestBody)->wait();

```
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
$requestBody->setHostOrDomain('www.microsoft.com');
$requestBody->setSourceEnvironment(new BrowserSharedCookieSourceEnvironment('microsoftEdge'));
$requestBody->setDisplayName('Microsoft Cookie');
$requestBody->setPath('/');
$requestBody->setHostOnly(true);
$requestBody->setComment('Updating source environment.');

$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteLists()->byBrowserSiteListId('browserSiteList-id')->sharedCookies()->byBrowserSharedCookieId('browserSharedCookie-id')->patch($requestBody)->wait();

```
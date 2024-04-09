---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BrowserSharedCookie;


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
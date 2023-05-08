---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PublishPostRequestBody();
$requestBody->setRevision('1.0');

$sitesBrowserSite1 = new BrowserSite();
$sitesBrowserSite1->setId('53e5f971-fc7b-4cd3-a1bf-34d7c0416882');


$sitesArray []= $sitesBrowserSite1;
$sitesBrowserSite2 = new BrowserSite();
$sitesBrowserSite2->setId('2e27cc86-3662-447e-b751-274fb9f869ea');


$sitesArray []= $sitesBrowserSite2;
$requestBody->setSites($sitesArray);


$sharedCookiesBrowserSharedCookie1 = new BrowserSharedCookie();
$sharedCookiesBrowserSharedCookie1->setId('7f639835-23ab-4793-b1e6-1a06fad127a2');


$sharedCookiesArray []= $sharedCookiesBrowserSharedCookie1;
$requestBody->setSharedCookies($sharedCookiesArray);




$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->publish()->post($requestBody);


```
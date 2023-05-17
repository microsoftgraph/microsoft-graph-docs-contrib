---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BrowserSharedCookie();
$requestBody->setHostOrDomain('www.microsoft.com');

$requestBody->setSourceEnvironment(new BrowserSharedCookieSourceEnvironment('microsoftedge'));

$requestBody->setDisplayName('Microsoft Cookie');

$requestBody->setPath('/');

$requestBody->setHostOnly(true);

$requestBody->setComment('Updating source environment.');



$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->sharedCookiesById('browserSharedCookie-id')->patch($requestBody);


```
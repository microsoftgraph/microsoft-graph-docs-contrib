---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BrowserSharedCookie();
$requestBody->set@odatatype('#microsoft.graph.browserSharedCookie');

$requestBody->setHostOrDomain('www.microsoft.com');

$requestBody->setSourceEnvironment(new BrowserSharedCookieSourceEnvironment('internetexplorer11'));

$requestBody->setDisplayName('Microsoft Cookie');

$requestBody->setHostOnly(true);

$requestBody->setComment('A cookie for microsoft.com');

$requestBody->setPath('/');



$result = $graphServiceClient->admin()->edge()->internetExplorerMode()->siteListsById('browserSiteList-id')->sharedCookies()->post($requestBody);


```
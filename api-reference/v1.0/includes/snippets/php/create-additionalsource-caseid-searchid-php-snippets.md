---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SiteSource();
$requestBody->setOdataType('microsoft.graph.security.siteSource');

$site = new Site();
$site->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');


$requestBody->setSite($site);


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->searches()->byEdiscoverySearchId('ediscoverySearch-id')->additionalSources()->post($requestBody);


```
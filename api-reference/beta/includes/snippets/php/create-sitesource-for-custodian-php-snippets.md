---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SiteSource();
$site = new Site();
$site->setWebUrl('https://m365x809305.sharepoint.com/sites/Retail');


$requestBody->setSite($site);


$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->custodiansById('ediscoveryCustodian-id')->siteSources()->post($requestBody);


```
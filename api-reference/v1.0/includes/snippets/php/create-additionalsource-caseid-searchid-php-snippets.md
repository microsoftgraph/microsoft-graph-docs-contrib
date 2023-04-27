---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DataSource();
$requestBody->set@odatatype('microsoft.graph.security.siteSource');

$additionalData = [
		'site' => $requestBody = new Site();
$		requestBody->setWebUrl('https://contoso.sharepoint.com/sites/SecretSite');


$requestBody->setSite($site);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->searchesById('ediscoverySearch-id')->additionalSources()->post($requestBody);


```
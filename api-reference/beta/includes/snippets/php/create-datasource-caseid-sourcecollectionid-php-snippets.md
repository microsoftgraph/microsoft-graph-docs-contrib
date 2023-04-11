---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DataSource();
$requestBody->set@odatatype('microsoft.graph.ediscovery.userSource');

$additionalData = [
		'email' => 'badguy@contoso.com', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->compliance()->ediscovery()->casesById('case-id')->sourceCollectionsById('sourceCollection-id')->additionalSources()->post($requestBody);


```
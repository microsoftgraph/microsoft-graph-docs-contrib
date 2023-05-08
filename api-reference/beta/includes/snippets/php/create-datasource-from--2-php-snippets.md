---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CustodianSource();
$additionalData = [
		'@odata.id' => 'https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/ab3a628a383045eba344b3caecba3104/userSources/31423539-3846-4333-4136-353644383531', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->compliance()->ediscovery()->casesById('case-id')->sourceCollectionsById('sourceCollection-id')->custodianSourcesById('dataSource-id')->post($requestBody);


```
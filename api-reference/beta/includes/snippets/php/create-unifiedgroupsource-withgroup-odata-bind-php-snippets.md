---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnifiedGroupSource();
$requestBody->setIncludedSources(new SourceType('mailbox'));

$additionalData = [
		'group@odata.bind' => 'https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->custodiansById('ediscoveryCustodian-id')->unifiedGroupSources()->post($requestBody);


```
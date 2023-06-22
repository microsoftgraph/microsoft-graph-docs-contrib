---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrintTaskDefinition();
$requestBody->setDisplayName('Test TaskDefinitionName');

$createdBy = new AppIdentity();
$createdBy->setDisplayName('Requesting App Display Name');


$requestBody->setCreatedBy($createdBy);


$result = $graphServiceClient->print()->taskDefinitionsById('printTaskDefinition-id')->patch($requestBody);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExternalConnection();
$requestBody->setId('contosohr');

$requestBody->setName('Contoso HR');

$requestBody->setDescription('Connection to index Contoso HR system');



$result = $graphServiceClient->external()->connections()->post($requestBody);


```
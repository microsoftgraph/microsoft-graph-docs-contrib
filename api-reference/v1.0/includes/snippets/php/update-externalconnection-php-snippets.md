---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExternalConnection();
$requestBody->setName('Contoso HR Service Tickets');

$requestBody->setDescription('Connection to index HR service tickets');



$result = $graphServiceClient->external()->connectionsById('externalConnection-id')->patch($requestBody);


```
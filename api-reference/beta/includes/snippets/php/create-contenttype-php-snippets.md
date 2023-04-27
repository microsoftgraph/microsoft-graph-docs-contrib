---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ContentType();
$requestBody->setName('docSet');

$requestBody->setDescription('custom docset');

$base = new ContentType();
$base->setName('Document Set');

$base->setId('0x0120D520');


$requestBody->setBase($base);
$requestBody->setGroup('Document Set Content Types');



$result = $graphServiceClient->sitesById('site-id')->contentTypes()->post($requestBody);


```
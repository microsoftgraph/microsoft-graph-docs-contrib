---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Acronym();
$requestBody->setDescription('A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.');



$result = $graphServiceClient->search()->acronymsById('acronym-id')->patch($requestBody);


```
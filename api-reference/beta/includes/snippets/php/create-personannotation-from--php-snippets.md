---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PersonAnnotation();
$detail = new ItemBody();
$detail->setContentType(new BodyType('text'));

$detail->setContent('I am originally from Australia, but grew up in Moscow, Russia.');


$requestBody->setDetail($detail);
$requestBody->setDisplayName('About Me');



$result = $graphServiceClient->me()->profile()->notes()->post($requestBody);


```
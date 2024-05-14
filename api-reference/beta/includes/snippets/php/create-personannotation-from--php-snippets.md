---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PersonAnnotation;
use Microsoft\Graph\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnotation();
$detail = new ItemBody();
$detail->setContentType(new BodyType('text'));
$detail->setContent('I am originally from Australia, but grew up in Moscow, Russia.');
$requestBody->setDetail($detail);
$requestBody->setDisplayName('About Me');

$result = $graphServiceClient->me()->profile()->notes()->post($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PersonAnnotation;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PersonAnnotation();
$detail = new ItemBody();
$detail->setContentType(new BodyType('text'));
$detail->setContent('I am originally from Australia, but grew up in Moscow, Russia.');
$requestBody->setDetail($detail);
$requestBody->setDisplayName('About Me');

$result = $graphServiceClient->me()->profile()->notes()->post($requestBody)->wait();

```
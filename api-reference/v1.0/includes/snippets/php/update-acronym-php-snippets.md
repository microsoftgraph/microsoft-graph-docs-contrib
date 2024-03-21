---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Acronym();
$requestBody->setDescription('A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.');

$result = $graphServiceClient->search()->acronyms()->byAcronymId('acronym-id')->patch($requestBody)->wait();

```
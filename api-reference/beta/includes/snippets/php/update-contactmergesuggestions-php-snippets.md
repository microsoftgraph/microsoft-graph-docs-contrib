---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContactMergeSuggestions();
$requestBody->setIsEnabled(false);

$result = $graphServiceClient->me()->settings()->contactMergeSuggestions()->patch($requestBody)->wait();

```
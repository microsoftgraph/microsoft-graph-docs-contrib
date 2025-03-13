---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\LanguageProficiency;
use Microsoft\Graph\Beta\Generated\Models\LanguageProficiencyLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LanguageProficiency();
$requestBody->setDisplayName('Norwegian Bokmål');
$requestBody->setTag('nb-NO');
$requestBody->setSpoken(new LanguageProficiencyLevel('nativeOrBilingual'));
$requestBody->setWritten(new LanguageProficiencyLevel('nativeOrBilingual'));
$requestBody->setReading(new LanguageProficiencyLevel('nativeOrBilingual'));

$result = $graphServiceClient->me()->profile()->languages()->post($requestBody)->wait();

```
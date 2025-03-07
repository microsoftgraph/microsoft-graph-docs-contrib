---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TermStore\Term;
use Microsoft\Graph\Beta\Generated\Models\TermStore\LocalizedLabel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Term();
$labelsLocalizedLabel1 = new LocalizedLabel();
$labelsLocalizedLabel1->setLanguageTag('en-US');
$labelsLocalizedLabel1->setName('Car');
$labelsLocalizedLabel1->setIsDefault(true);
$labelsArray []= $labelsLocalizedLabel1;
$requestBody->setLabels($labelsArray);


$result = $graphServiceClient->termStore()->sets()->bySetId('set-id')->children()->post($requestBody)->wait();

```
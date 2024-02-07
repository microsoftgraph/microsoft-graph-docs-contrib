---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPostRequestBody();
$requestBody->setCurrencyCode('USD');
$requestBody->setAttributeSet(new AttributeSet('full'));
$requestBody->setBillingPeriod(new BillingPeriod('current'));

$result = $graphServiceClient->reports()->partners()->billing()->usage()->unbilled()->microsoftGraphPartnersBillingExport()->post($requestBody)->wait();

```
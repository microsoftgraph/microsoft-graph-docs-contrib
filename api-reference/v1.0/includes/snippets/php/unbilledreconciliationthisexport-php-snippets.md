---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Reports\Partners\Billing\Reconciliation\Unbilled\MicrosoftGraphPartnersBillingExport\ExportPostRequestBody;
use Microsoft\Graph\Generated\Models\Partners\Billing\AttributeSet;
use Microsoft\Graph\Generated\Models\Partners\Billing\BillingPeriod;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPostRequestBody();
$requestBody->setAttributeSet(new AttributeSet('full'));
$requestBody->setBillingPeriod(new BillingPeriod('current'));
$requestBody->setCurrencyCode('USD');

$result = $graphServiceClient->reports()->partners()->billing()->reconciliation()->unbilled()->microsoftGraphPartnersBillingExport()->post($requestBody)->wait();

```
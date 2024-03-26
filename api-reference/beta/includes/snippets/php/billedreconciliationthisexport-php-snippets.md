---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExportPostRequestBody();
$requestBody->setInvoiceId('G016907411');
$requestBody->setAttributeSet(new AttributeSet('full'));

$result = $graphServiceClient->reports()->partners()->billing()->reconciliation()->billed()->microsoftGraphPartnersBillingExport()->post($requestBody)->wait();

```
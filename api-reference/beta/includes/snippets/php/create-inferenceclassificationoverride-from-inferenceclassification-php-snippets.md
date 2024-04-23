---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\InferenceClassificationOverride;
use Microsoft\Graph\Generated\Models\EmailAddress;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InferenceClassificationOverride();
$requestBody->setClassifyAs(new InferenceClassificationType('focused'));
$senderEmailAddress = new EmailAddress();
$senderEmailAddress->setName('Samantha Booth');
$senderEmailAddress->setAddress('samanthab@contoso.com');
$requestBody->setSenderEmailAddress($senderEmailAddress);

$result = $graphServiceClient->me()->inferenceClassification()->overrides()->post($requestBody)->wait();

```
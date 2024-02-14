---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InferenceClassificationOverride();
$requestBody->setClassifyAs(new InferenceClassificationType('focused'));
$senderEmailAddress = new EmailAddress();
$senderEmailAddress->setName('Samantha Booth');
$senderEmailAddress->setAddress('samanthab@contoso.com');
$requestBody->setSenderEmailAddress($senderEmailAddress);

$result = $graphServiceClient->me()->inferenceClassification()->overrides()->post($requestBody)->wait();

```
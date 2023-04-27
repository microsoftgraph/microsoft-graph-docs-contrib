---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InferenceClassificationOverride();
$requestBody->setClassifyAs(new InferenceClassificationType('focused'));

$senderEmailAddress = new EmailAddress();
$senderEmailAddress->setName('Samantha Booth');

$senderEmailAddress->setAddress('samanthab@adatum.onmicrosoft.com');


$requestBody->setSenderEmailAddress($senderEmailAddress);


$result = $graphServiceClient->me()->inferenceClassification()->overrides()->post($requestBody);


```
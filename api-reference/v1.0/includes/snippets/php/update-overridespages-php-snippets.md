---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new $valuePutRequestBody();
$additionalData = [
		'LocalizedStrings' => $localizedStrings1 = new ();
$		localizedStrings1->setElementType('UxElement');

		$localizedStrings1->setElementId(null);

$		localizedStrings1->setStringId('alert_message');

		$localizedStrings1->setOverride(true);

$		localizedStrings1->setValue('Are you sure that you want to cancel entering your information?');


$localizedStringsArray []= $localizedStrings1;
$requestBody->setLocalizedStrings($localizedStringsArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identity()->b2xUserFlows()->byB2xUserFlowId('b2xIdentityUserFlow-id')->languages()->byLanguageId('userFlowLanguageConfiguration-id')->overridesPages()->byOverridesPageId('userFlowLanguagePage-id')->value()->put($requestBody);


```
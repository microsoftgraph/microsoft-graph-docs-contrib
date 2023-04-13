---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Application();
$additionalData = [
		'onPremisesPublishing' => $requestBody = new OnPremisesPublishing();
$singleSignOnSettings = new SingleSignOnSettings();
$singleSignOnSettingsKerberosSignOnSettings = new KerberosSignOnSettings();
$		singleSignOnSettingsKerberosSignOnSettings->setKerberosServicePrincipalName('HTTP/iwademo.contoso.com');

$		singleSignOnSettingsKerberosSignOnSettings->setKerberosSignOnMappingAttributeType('userPrincipalName');


$singleSignOnSettings->setKerberosSignOnSettings($singleSignOnSettingsKerberosSignOnSettings);
$		singleSignOnSettings->setSingleSignOnMode('onPremisesKerberos');


$requestBody->setSingleSignOnSettings($singleSignOnSettings);

$requestBody->setOnPremisesPublishing($onPremisesPublishing);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->applicationsById('application-id')->patch($requestBody);


```
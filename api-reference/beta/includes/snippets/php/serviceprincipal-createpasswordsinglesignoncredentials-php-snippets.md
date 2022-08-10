---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreatePasswordSingleSignOnCredentialsPostRequestBody();
$requestBody->setId('5793aa3b-cca9-4794-679a240f8b58');

$credentialsCredential1 = new Credential();
$additionalData = [
'fieldId' => 'param_username', 
'value' => 'myusername', 
'type' => 'username', 
];
$credentialsCredential1->setAdditionalData($additionalData);



$credentialsArray []= $credentialsCredential1;
$credentialsCredential2 = new Credential();
$additionalData = [
'fieldId' => 'param_password', 
'value' => 'pa$$w0rd', 
'type' => 'password', 
];
$credentialsCredential2->setAdditionalData($additionalData);



$credentialsArray []= $credentialsCredential2;
$requestBody->setCredentials($credentialsArray);




$requestResult = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->createPasswordSingleSignOnCredentials()->post($requestBody);


```
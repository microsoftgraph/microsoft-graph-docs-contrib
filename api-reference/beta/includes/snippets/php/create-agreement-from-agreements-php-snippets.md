---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Agreement();
$requestBody->setDisplayName('Contoso ToU for guest users');

$requestBody->setIsViewingBeforeAcceptanceRequired(true);

$filesAgreementFileLocalization1 = new AgreementFileLocalization();
$additionalData = [
'fileName' => 'TOU.pdf', 
'language' => 'en', 
'isDefault' => true,
'fileData' => $filesAgreementFileLocalization1 = new FileData();
$		filesAgreementFileLocalization1->setData('SGVsbG8gd29ybGQ=//truncated-binary');


$filesAgreementFileLocalization1->setFileData($fileData);

];
$filesAgreementFileLocalization1->setAdditionalData($additionalData);



$filesArray []= $filesAgreementFileLocalization1;
$requestBody->setFiles($filesArray);




$requestResult = $graphServiceClient->identityGovernance()->termsOfUse()->agreements()->post($requestBody);


```
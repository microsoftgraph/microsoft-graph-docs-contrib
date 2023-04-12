---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AgreementFileLocalization();
$requestBody->setFileName('Contoso ToU for guest users (French)');

$requestBody->setLanguage('fr-FR');

$requestBody->setIsDefault(false);

$requestBody->setIsMajorVersion(false);

$requestBody->setDisplayName('Contoso ToU for guest users (French)');

$fileData = new AgreementFileData();
$FileData->setData(base64_decode('base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data'));


$requestBody->setFileData($fileData);


$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreementsById('agreement-id')->files()->post($requestBody);


```
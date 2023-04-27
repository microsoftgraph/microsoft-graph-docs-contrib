---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FederatedIdentityCredential();
$requestBody->setName('testing02');

$requestBody->setIssuer('https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0');

$requestBody->setSubject('a7d388c3-5e3f-4959-ac7d-786b3383006a');

$requestBody->setDescription('Updated description');

$requestBody->setAudiences(['api://AzureADTokenExchange', ]);



$result = $graphServiceClient->applicationsById('application-id')->federatedIdentityCredentialsById('federatedIdentityCredential-id')->patch($requestBody);


```
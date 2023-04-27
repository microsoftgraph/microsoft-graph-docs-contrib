---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Application();
$onPremisesPublishing = new OnPremisesPublishing();
$onPremisesPublishing->setExternalAuthenticationType(new ExternalAuthenticationType('aadpreauthentication'));

$onPremisesPublishing->setInternalUrl('https://contosoiwaapp.com');

$onPremisesPublishing->setExternalUrl('https://contosoiwaapp-contoso.msappproxy.net');

$onPremisesPublishing->setIsHttpOnlyCookieEnabled(true);

$onPremisesPublishing->setIsOnPremPublishingEnabled(true);

$onPremisesPublishing->setIsPersistentCookieEnabled(true);

$onPremisesPublishing->setIsSecureCookieEnabled(true);

$onPremisesPublishing->setIsStateSessionEnabled(true);

$onPremisesPublishing->setIsTranslateHostHeaderEnabled(true);

$onPremisesPublishing->setIsTranslateLinksInBodyEnabled(true);


$requestBody->setOnPremisesPublishing($onPremisesPublishing);


$result = $graphServiceClient->applicationsById('application-id')->patch($requestBody);


```
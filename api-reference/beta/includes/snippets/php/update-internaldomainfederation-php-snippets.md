---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InternalDomainFederation();
$requestBody->setDisplayName('Contoso name change');

$requestBody->setFederatedIdpMfaBehavior(new FederatedIdpMfaBehavior('acceptifmfadonebyfederatedidp'));



$result = $graphServiceClient->domains()->byDomainId('domain-id')->federationConfiguration()->byFederationConfiguration()Id('internalDomainFederation-id')->patch($requestBody);


```
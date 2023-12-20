---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InternalDomainFederation();
$requestBody->setDisplayName('Contoso name change');
$requestBody->setFederatedIdpMfaBehavior(new FederatedIdpMfaBehavior('acceptIfMfaDoneByFederatedIdp'));

$result = $graphServiceClient->domains()->byDomainId('domain-id')->federationConfiguration()->byInternalDomainFederationId('internalDomainFederation-id')->patch($requestBody)->wait();

```
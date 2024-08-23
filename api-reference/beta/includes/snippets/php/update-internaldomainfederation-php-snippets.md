---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\InternalDomainFederation;
use Microsoft\Graph\Beta\Generated\Models\FederatedIdpMfaBehavior;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InternalDomainFederation();
$requestBody->setDisplayName('Contoso name change');
$requestBody->setFederatedIdpMfaBehavior(new FederatedIdpMfaBehavior('acceptIfMfaDoneByFederatedIdp'));

$result = $graphServiceClient->domains()->byDomainId('domain-id')->federationConfiguration()->byInternalDomainFederationId('internalDomainFederation-id')->patch($requestBody)->wait();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CrossTenantAccessPolicyConfigurationDefault;
use Microsoft\Graph\Beta\Generated\Models\DefaultInvitationRedemptionIdentityProviderConfiguration;
use Microsoft\Graph\Beta\Generated\Models\B2bIdentityProvidersType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationDefault();
$invitationRedemptionIdentityProviderConfiguration = new DefaultInvitationRedemptionIdentityProviderConfiguration();
$invitationRedemptionIdentityProviderConfiguration->setPrimaryIdentityProviderPrecedenceOrder([new B2bIdentityProvidersType('externalFederation'),new B2bIdentityProvidersType('azureActiveDirectory'),new B2bIdentityProvidersType('socialIdentityProviders'),	]);
$invitationRedemptionIdentityProviderConfiguration->setFallbackIdentityProvider(new B2bIdentityProvidersType('defaultConfiguredIdp'));
$requestBody->setInvitationRedemptionIdentityProviderConfiguration($invitationRedemptionIdentityProviderConfiguration);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->patch($requestBody)->wait();

```
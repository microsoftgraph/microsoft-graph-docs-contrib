---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessPolicyConfigurationDefault();
$invitationRedemptionIdentityProviderConfiguration = new DefaultInvitationRedemptionIdentityProviderConfiguration();
$invitationRedemptionIdentityProviderConfiguration->setPrimaryIdentityProviderPrecedenceOrder([new B2bIdentityProvidersType('externalFederation'),new B2bIdentityProvidersType('azureActiveDirectory'),new B2bIdentityProvidersType('socialIdentityProviders'),	]);
$invitationRedemptionIdentityProviderConfiguration->setFallbackIdentityProvider(new B2bIdentityProvidersType('defaultConfiguredIdp'));
$requestBody->setInvitationRedemptionIdentityProviderConfiguration($invitationRedemptionIdentityProviderConfiguration);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->patch($requestBody)->wait();

```
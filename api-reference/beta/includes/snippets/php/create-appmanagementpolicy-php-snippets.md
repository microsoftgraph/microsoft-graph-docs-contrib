---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AppManagementPolicy;
use Microsoft\Graph\Beta\Generated\Models\CustomAppManagementConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PasswordCredentialConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AppCredentialRestrictionType;
use Microsoft\Graph\Beta\Generated\Models\AppManagementRestrictionState;
use Microsoft\Graph\Beta\Generated\Models\KeyCredentialConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CustomAppManagementApplicationConfiguration;
use Microsoft\Graph\Beta\Generated\Models\IdentifierUriConfiguration;
use Microsoft\Graph\Beta\Generated\Models\IdentifierUriRestriction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppManagementPolicy();
$requestBody->setDisplayName('Credential management policy');
$requestBody->setDescription('Cred policy sample');
$requestBody->setIsEnabled(true);
$restrictions = new CustomAppManagementConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictionType(new AppCredentialRestrictionType('passwordAddition'));
$passwordCredentialsPasswordCredentialConfiguration1->setState(new AppManagementRestrictionState('enabled'));
$passwordCredentialsPasswordCredentialConfiguration1->setMaxLifetime(null);
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2019-10-19T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration1;
$passwordCredentialsPasswordCredentialConfiguration2 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration2->setRestrictionType(new AppCredentialRestrictionType('passwordLifetime'));
$passwordCredentialsPasswordCredentialConfiguration2->setState(new AppManagementRestrictionState('enabled'));
$passwordCredentialsPasswordCredentialConfiguration2->setMaxLifetime(new \DateInterval('P90D'));
$passwordCredentialsPasswordCredentialConfiguration2->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2014-10-19T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration2;
$passwordCredentialsPasswordCredentialConfiguration3 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration3->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyAddition'));
$passwordCredentialsPasswordCredentialConfiguration3->setState(new AppManagementRestrictionState('enabled'));
$passwordCredentialsPasswordCredentialConfiguration3->setMaxLifetime(null);
$passwordCredentialsPasswordCredentialConfiguration3->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2019-10-19T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration3;
$passwordCredentialsPasswordCredentialConfiguration4 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration4->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyLifetime'));
$passwordCredentialsPasswordCredentialConfiguration4->setState(new AppManagementRestrictionState('enabled'));
$passwordCredentialsPasswordCredentialConfiguration4->setMaxLifetime(new \DateInterval('P90D'));
$passwordCredentialsPasswordCredentialConfiguration4->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2014-10-19T10:37:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration4;
$restrictions->setPasswordCredentials($passwordCredentialsArray);

$restrictions->setKeyCredentials([]);
$restrictionsApplicationRestrictions = new CustomAppManagementApplicationConfiguration();
$restrictionsApplicationRestrictionsIdentifierUris = new IdentifierUriConfiguration();
$restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition = new IdentifierUriRestriction();
$restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition->setState(new AppManagementRestrictionState('disabled'));
$restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition->setRestrictForAppsCreatedAfterDateTime(null);
$restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition->setExcludeAppsReceivingV2Tokens(true);
$restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition->setExcludeSaml(true);
$restrictionsApplicationRestrictionsIdentifierUris->setNonDefaultUriAddition($restrictionsApplicationRestrictionsIdentifierUrisNonDefaultUriAddition);
$restrictionsApplicationRestrictions->setIdentifierUris($restrictionsApplicationRestrictionsIdentifierUris);
$restrictions->setApplicationRestrictions($restrictionsApplicationRestrictions);
$requestBody->setRestrictions($restrictions);

$result = $graphServiceClient->policies()->appManagementPolicies()->post($requestBody)->wait();

```
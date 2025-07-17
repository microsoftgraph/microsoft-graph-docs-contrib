---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TenantAppManagementPolicy;
use Microsoft\Graph\Generated\Models\AppManagementApplicationConfiguration;
use Microsoft\Graph\Generated\Models\PasswordCredentialConfiguration;
use Microsoft\Graph\Generated\Models\AppCredentialRestrictionType;
use Microsoft\Graph\Generated\Models\KeyCredentialConfiguration;
use Microsoft\Graph\Generated\Models\AppKeyCredentialRestrictionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantAppManagementPolicy();
$requestBody->setId('d015220e-9789-4e8e-bbcc-270fe419229d');
$requestBody->setDescription('Lorem ipsum');
$requestBody->setDisplayName('Credential management policy');
$requestBody->setIsEnabled(true);
$applicationRestrictions = new AppManagementApplicationConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictionType(new AppCredentialRestrictionType('passwordLifetime'));
$passwordCredentialsPasswordCredentialConfiguration1->setMaxLifetime(new \DateInterval('P14D'));
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2020-01-01T07:00:00Z'));
$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration1;
$applicationRestrictions->setPasswordCredentials($passwordCredentialsArray);

$keyCredentialsKeyCredentialConfiguration1 = new KeyCredentialConfiguration();
$keyCredentialsKeyCredentialConfiguration1->setRestrictionType(new AppKeyCredentialRestrictionType('certificateLifetime'));
$keyCredentialsKeyCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2020-01-01T10:37:00Z'));
$keyCredentialsKeyCredentialConfiguration1->setMaxLifetime(new \DateInterval('P90D'));
$keyCredentialsArray []= $keyCredentialsKeyCredentialConfiguration1;
$keyCredentialsKeyCredentialConfiguration2 = new KeyCredentialConfiguration();
$keyCredentialsKeyCredentialConfiguration2->setRestrictionType(new AppKeyCredentialRestrictionType('trustedCertificateAuthority'));
$keyCredentialsKeyCredentialConfiguration2->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2019-10-19T10:37:00Z'));
$additionalData = [
'certificateBasedApplicationConfigurationIds' => [
'eec5ba11-2fc0-4113-83a2-ed986ed13743', ],
];
$keyCredentialsKeyCredentialConfiguration2->setAdditionalData($additionalData);
$keyCredentialsArray []= $keyCredentialsKeyCredentialConfiguration2;
$applicationRestrictions->setKeyCredentials($keyCredentialsArray);

$requestBody->setApplicationRestrictions($applicationRestrictions);

$result = $graphServiceClient->policies()->defaultAppManagementPolicy()->patch($requestBody)->wait();

```
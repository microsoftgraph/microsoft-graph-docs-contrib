---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantAppManagementPolicy();
$requestBody->setIsEnabled(true);

$applicationRestrictions = new AppManagementConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration1->setRestrictionType(new AppCredentialRestrictionType('passwordAddition'));

$passwordCredentialsPasswordCredentialConfiguration1->setMaxLifetime(null);

$passwordCredentialsPasswordCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2021-01-01T10:37:00Z'));


$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration1;
$passwordCredentialsPasswordCredentialConfiguration2 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration2->setRestrictionType(new AppCredentialRestrictionType('passwordLifetime'));

$passwordCredentialsPasswordCredentialConfiguration2->setMaxLifetime(new \DateInterval('P4DT12H30M5S'));

$passwordCredentialsPasswordCredentialConfiguration2->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2017-01-01T10:37:00Z'));


$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration2;
$passwordCredentialsPasswordCredentialConfiguration3 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration3->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyAddition'));

$passwordCredentialsPasswordCredentialConfiguration3->setMaxLifetime(null);

$passwordCredentialsPasswordCredentialConfiguration3->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2021-01-01T10:37:00Z'));


$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration3;
$passwordCredentialsPasswordCredentialConfiguration4 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration4->setRestrictionType(new AppCredentialRestrictionType('customPasswordAddition'));

$passwordCredentialsPasswordCredentialConfiguration4->setMaxLifetime(null);

$passwordCredentialsPasswordCredentialConfiguration4->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));


$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration4;
$passwordCredentialsPasswordCredentialConfiguration5 = new PasswordCredentialConfiguration();
$passwordCredentialsPasswordCredentialConfiguration5->setRestrictionType(new AppCredentialRestrictionType('symmetricKeyLifetime'));

$passwordCredentialsPasswordCredentialConfiguration5->setMaxLifetime(new \DateInterval('P40D'));

$passwordCredentialsPasswordCredentialConfiguration5->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));


$passwordCredentialsArray []= $passwordCredentialsPasswordCredentialConfiguration5;
$applicationRestrictions->setPasswordCredentials($passwordCredentialsArray);


$keyCredentialsKeyCredentialConfiguration1 = new KeyCredentialConfiguration();
$keyCredentialsKeyCredentialConfiguration1->setRestrictionType(new AppKeyCredentialRestrictionType('asymmetricKeyLifetime'));

$keyCredentialsKeyCredentialConfiguration1->setMaxLifetime(new \DateInterval('P30D'));

$keyCredentialsKeyCredentialConfiguration1->setRestrictForAppsCreatedAfterDateTime(new \DateTime('2015-01-01T10:37:00Z'));


$keyCredentialsArray []= $keyCredentialsKeyCredentialConfiguration1;
$applicationRestrictions->setKeyCredentials($keyCredentialsArray);



$requestBody->setApplicationRestrictions($applicationRestrictions);


$result = $graphServiceClient->policies()->defaultAppManagementPolicy()->patch($requestBody);


```
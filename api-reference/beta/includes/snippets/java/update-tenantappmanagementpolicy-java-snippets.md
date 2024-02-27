---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TenantAppManagementPolicy tenantAppManagementPolicy = new TenantAppManagementPolicy();
tenantAppManagementPolicy.setIsEnabled(true);
AppManagementConfiguration applicationRestrictions = new AppManagementConfiguration();
LinkedList<PasswordCredentialConfiguration> passwordCredentials = new LinkedList<PasswordCredentialConfiguration>();
PasswordCredentialConfiguration passwordCredentialConfiguration = new PasswordCredentialConfiguration();
passwordCredentialConfiguration.setRestrictionType(AppCredentialRestrictionType.PasswordAddition);
passwordCredentialConfiguration.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime = OffsetDateTime.parse("2021-01-01T10:37:00Z");
passwordCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime);
passwordCredentials.add(passwordCredentialConfiguration);
PasswordCredentialConfiguration passwordCredentialConfiguration1 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration1.setRestrictionType(AppCredentialRestrictionType.PasswordLifetime);
PeriodAndDuration maxLifetime1 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
passwordCredentialConfiguration1.setMaxLifetime(maxLifetime1);
OffsetDateTime restrictForAppsCreatedAfterDateTime1 = OffsetDateTime.parse("2017-01-01T10:37:00Z");
passwordCredentialConfiguration1.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime1);
passwordCredentials.add(passwordCredentialConfiguration1);
PasswordCredentialConfiguration passwordCredentialConfiguration2 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration2.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyAddition);
passwordCredentialConfiguration2.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime2 = OffsetDateTime.parse("2021-01-01T10:37:00Z");
passwordCredentialConfiguration2.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime2);
passwordCredentials.add(passwordCredentialConfiguration2);
PasswordCredentialConfiguration passwordCredentialConfiguration3 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration3.setRestrictionType(AppCredentialRestrictionType.CustomPasswordAddition);
passwordCredentialConfiguration3.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime3 = OffsetDateTime.parse("2015-01-01T10:37:00Z");
passwordCredentialConfiguration3.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime3);
passwordCredentials.add(passwordCredentialConfiguration3);
PasswordCredentialConfiguration passwordCredentialConfiguration4 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration4.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyLifetime);
PeriodAndDuration maxLifetime4 = PeriodAndDuration.ofDuration(Duration.parse("P30D"));
passwordCredentialConfiguration4.setMaxLifetime(maxLifetime4);
OffsetDateTime restrictForAppsCreatedAfterDateTime4 = OffsetDateTime.parse("2015-01-01T10:37:00Z");
passwordCredentialConfiguration4.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime4);
passwordCredentials.add(passwordCredentialConfiguration4);
applicationRestrictions.setPasswordCredentials(passwordCredentials);
LinkedList<KeyCredentialConfiguration> keyCredentials = new LinkedList<KeyCredentialConfiguration>();
KeyCredentialConfiguration keyCredentialConfiguration = new KeyCredentialConfiguration();
keyCredentialConfiguration.setRestrictionType(AppKeyCredentialRestrictionType.AsymmetricKeyLifetime);
PeriodAndDuration maxLifetime5 = PeriodAndDuration.ofDuration(Duration.parse("P30D"));
keyCredentialConfiguration.setMaxLifetime(maxLifetime5);
OffsetDateTime restrictForAppsCreatedAfterDateTime5 = OffsetDateTime.parse("2015-01-01T10:37:00Z");
keyCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime5);
keyCredentials.add(keyCredentialConfiguration);
KeyCredentialConfiguration keyCredentialConfiguration1 = new KeyCredentialConfiguration();
keyCredentialConfiguration1.setRestrictionType(AppKeyCredentialRestrictionType.TrustedCertificateAuthority);
OffsetDateTime restrictForAppsCreatedAfterDateTime6 = OffsetDateTime.parse("2019-10-19T10:37:00Z");
keyCredentialConfiguration1.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime6);
LinkedList<String> certificateBasedApplicationConfigurationIds = new LinkedList<String>();
certificateBasedApplicationConfigurationIds.add("eec5ba11-2fc0-4113-83a2-ed986ed13743");
certificateBasedApplicationConfigurationIds.add("bb8e164b-f9ed-4b98-bc45-65eddc14f4c1");
keyCredentialConfiguration1.setCertificateBasedApplicationConfigurationIds(certificateBasedApplicationConfigurationIds);
keyCredentialConfiguration1.setMaxLifetime(null);
keyCredentials.add(keyCredentialConfiguration1);
applicationRestrictions.setKeyCredentials(keyCredentials);
tenantAppManagementPolicy.setApplicationRestrictions(applicationRestrictions);
TenantAppManagementPolicy result = graphClient.policies().defaultAppManagementPolicy().patch(tenantAppManagementPolicy);


```
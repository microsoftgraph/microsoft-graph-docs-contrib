---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppManagementPolicy appManagementPolicy = new AppManagementPolicy();
appManagementPolicy.setDisplayName("Credential management policy");
appManagementPolicy.setDescription("Cred policy sample");
appManagementPolicy.setIsEnabled(true);
CustomAppManagementConfiguration restrictions = new CustomAppManagementConfiguration();
LinkedList<PasswordCredentialConfiguration> passwordCredentials = new LinkedList<PasswordCredentialConfiguration>();
PasswordCredentialConfiguration passwordCredentialConfiguration = new PasswordCredentialConfiguration();
passwordCredentialConfiguration.setRestrictionType(AppCredentialRestrictionType.PasswordAddition);
passwordCredentialConfiguration.setState(AppManagementRestrictionState.Enabled);
passwordCredentialConfiguration.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime = OffsetDateTime.parse("2019-10-19T10:37:00Z");
passwordCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime);
passwordCredentials.add(passwordCredentialConfiguration);
PasswordCredentialConfiguration passwordCredentialConfiguration1 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration1.setRestrictionType(AppCredentialRestrictionType.PasswordLifetime);
passwordCredentialConfiguration1.setState(AppManagementRestrictionState.Enabled);
PeriodAndDuration maxLifetime1 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
passwordCredentialConfiguration1.setMaxLifetime(maxLifetime1);
OffsetDateTime restrictForAppsCreatedAfterDateTime1 = OffsetDateTime.parse("2014-10-19T10:37:00Z");
passwordCredentialConfiguration1.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime1);
passwordCredentials.add(passwordCredentialConfiguration1);
PasswordCredentialConfiguration passwordCredentialConfiguration2 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration2.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyAddition);
passwordCredentialConfiguration2.setState(AppManagementRestrictionState.Enabled);
passwordCredentialConfiguration2.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime2 = OffsetDateTime.parse("2019-10-19T10:37:00Z");
passwordCredentialConfiguration2.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime2);
passwordCredentials.add(passwordCredentialConfiguration2);
PasswordCredentialConfiguration passwordCredentialConfiguration3 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration3.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyLifetime);
passwordCredentialConfiguration3.setState(AppManagementRestrictionState.Enabled);
PeriodAndDuration maxLifetime3 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
passwordCredentialConfiguration3.setMaxLifetime(maxLifetime3);
OffsetDateTime restrictForAppsCreatedAfterDateTime3 = OffsetDateTime.parse("2014-10-19T10:37:00Z");
passwordCredentialConfiguration3.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime3);
passwordCredentials.add(passwordCredentialConfiguration3);
restrictions.setPasswordCredentials(passwordCredentials);
LinkedList<KeyCredentialConfiguration> keyCredentials = new LinkedList<KeyCredentialConfiguration>();
restrictions.setKeyCredentials(keyCredentials);
CustomAppManagementApplicationConfiguration applicationRestrictions = new CustomAppManagementApplicationConfiguration();
IdentifierUriConfiguration identifierUris = new IdentifierUriConfiguration();
IdentifierUriRestriction nonDefaultUriAddition = new IdentifierUriRestriction();
nonDefaultUriAddition.setState(AppManagementRestrictionState.Disabled);
nonDefaultUriAddition.setRestrictForAppsCreatedAfterDateTime(null);
nonDefaultUriAddition.setExcludeAppsReceivingV2Tokens(true);
nonDefaultUriAddition.setExcludeSaml(true);
identifierUris.setNonDefaultUriAddition(nonDefaultUriAddition);
applicationRestrictions.setIdentifierUris(identifierUris);
restrictions.setApplicationRestrictions(applicationRestrictions);
appManagementPolicy.setRestrictions(restrictions);
AppManagementPolicy result = graphClient.policies().appManagementPolicies().post(appManagementPolicy);


```
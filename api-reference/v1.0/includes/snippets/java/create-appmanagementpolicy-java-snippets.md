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
passwordCredentialConfiguration.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime = OffsetDateTime.parse("2019-10-19T10:37:00Z");
passwordCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("state", "enabled");
passwordCredentialConfiguration.setAdditionalData(additionalData);
passwordCredentials.add(passwordCredentialConfiguration);
PasswordCredentialConfiguration passwordCredentialConfiguration1 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration1.setRestrictionType(AppCredentialRestrictionType.PasswordLifetime);
PeriodAndDuration maxLifetime1 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
passwordCredentialConfiguration1.setMaxLifetime(maxLifetime1);
OffsetDateTime restrictForAppsCreatedAfterDateTime1 = OffsetDateTime.parse("2014-10-19T10:37:00Z");
passwordCredentialConfiguration1.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("state", "enabled");
passwordCredentialConfiguration1.setAdditionalData(additionalData1);
passwordCredentials.add(passwordCredentialConfiguration1);
PasswordCredentialConfiguration passwordCredentialConfiguration2 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration2.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyAddition);
passwordCredentialConfiguration2.setMaxLifetime(null);
OffsetDateTime restrictForAppsCreatedAfterDateTime2 = OffsetDateTime.parse("2019-10-19T10:37:00Z");
passwordCredentialConfiguration2.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime2);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("state", "enabled");
passwordCredentialConfiguration2.setAdditionalData(additionalData2);
passwordCredentials.add(passwordCredentialConfiguration2);
PasswordCredentialConfiguration passwordCredentialConfiguration3 = new PasswordCredentialConfiguration();
passwordCredentialConfiguration3.setRestrictionType(AppCredentialRestrictionType.SymmetricKeyLifetime);
PeriodAndDuration maxLifetime3 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
passwordCredentialConfiguration3.setMaxLifetime(maxLifetime3);
OffsetDateTime restrictForAppsCreatedAfterDateTime3 = OffsetDateTime.parse("2014-10-19T10:37:00Z");
passwordCredentialConfiguration3.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime3);
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
additionalData3.put("state", "enabled");
passwordCredentialConfiguration3.setAdditionalData(additionalData3);
passwordCredentials.add(passwordCredentialConfiguration3);
restrictions.setPasswordCredentials(passwordCredentials);
LinkedList<KeyCredentialConfiguration> keyCredentials = new LinkedList<KeyCredentialConfiguration>();
restrictions.setKeyCredentials(keyCredentials);
HashMap<String, Object> additionalData4 = new HashMap<String, Object>();
 applicationRestrictions = new ();
 identifierUris = new ();
 nonDefaultUriAddition = new ();
nonDefaultUriAddition.setState("disabled");
nonDefaultUriAddition.setRestrictForAppsCreatedAfterDateTime(null);
nonDefaultUriAddition.setExcludeAppsReceivingV2Tokens(true);
nonDefaultUriAddition.setExcludeSaml(true);
identifierUris.setNonDefaultUriAddition(nonDefaultUriAddition);
applicationRestrictions.setIdentifierUris(identifierUris);
additionalData4.put("applicationRestrictions", applicationRestrictions);
restrictions.setAdditionalData(additionalData4);
appManagementPolicy.setRestrictions(restrictions);
AppManagementPolicy result = graphClient.policies().appManagementPolicies().post(appManagementPolicy);


```
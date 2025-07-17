---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TenantAppManagementPolicy tenantAppManagementPolicy = new TenantAppManagementPolicy();
tenantAppManagementPolicy.setId("d015220e-9789-4e8e-bbcc-270fe419229d");
tenantAppManagementPolicy.setDescription("Lorem ipsum");
tenantAppManagementPolicy.setDisplayName("Credential management policy");
tenantAppManagementPolicy.setIsEnabled(true);
AppManagementApplicationConfiguration applicationRestrictions = new AppManagementApplicationConfiguration();
LinkedList<PasswordCredentialConfiguration> passwordCredentials = new LinkedList<PasswordCredentialConfiguration>();
PasswordCredentialConfiguration passwordCredentialConfiguration = new PasswordCredentialConfiguration();
passwordCredentialConfiguration.setRestrictionType(AppCredentialRestrictionType.PasswordLifetime);
PeriodAndDuration maxLifetime = PeriodAndDuration.ofDuration(Duration.parse("P14D"));
passwordCredentialConfiguration.setMaxLifetime(maxLifetime);
OffsetDateTime restrictForAppsCreatedAfterDateTime = OffsetDateTime.parse("2020-01-01T07:00:00Z");
passwordCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime);
passwordCredentials.add(passwordCredentialConfiguration);
applicationRestrictions.setPasswordCredentials(passwordCredentials);
LinkedList<KeyCredentialConfiguration> keyCredentials = new LinkedList<KeyCredentialConfiguration>();
KeyCredentialConfiguration keyCredentialConfiguration = new KeyCredentialConfiguration();
keyCredentialConfiguration.setRestrictionType(AppKeyCredentialRestrictionType.AsymmetricKeyLifetime);
OffsetDateTime restrictForAppsCreatedAfterDateTime1 = OffsetDateTime.parse("2020-01-01T10:37:00Z");
keyCredentialConfiguration.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime1);
PeriodAndDuration maxLifetime1 = PeriodAndDuration.ofDuration(Duration.parse("P90D"));
keyCredentialConfiguration.setMaxLifetime(maxLifetime1);
keyCredentials.add(keyCredentialConfiguration);
KeyCredentialConfiguration keyCredentialConfiguration1 = new KeyCredentialConfiguration();
keyCredentialConfiguration1.setRestrictionType(AppKeyCredentialRestrictionType.AsymmetricKeyLifetime);
OffsetDateTime restrictForAppsCreatedAfterDateTime2 = OffsetDateTime.parse("2019-10-19T10:37:00Z");
keyCredentialConfiguration1.setRestrictForAppsCreatedAfterDateTime(restrictForAppsCreatedAfterDateTime2);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> certificateBasedApplicationConfigurationIds = new LinkedList<String>();
certificateBasedApplicationConfigurationIds.add("eec5ba11-2fc0-4113-83a2-ed986ed13743");
additionalData.put("certificateBasedApplicationConfigurationIds", certificateBasedApplicationConfigurationIds);
keyCredentialConfiguration1.setAdditionalData(additionalData);
keyCredentials.add(keyCredentialConfiguration1);
applicationRestrictions.setKeyCredentials(keyCredentials);
tenantAppManagementPolicy.setApplicationRestrictions(applicationRestrictions);
TenantAppManagementPolicy result = graphClient.policies().defaultAppManagementPolicy().patch(tenantAppManagementPolicy);


```
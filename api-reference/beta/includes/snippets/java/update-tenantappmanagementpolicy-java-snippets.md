---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantAppManagementPolicy tenantAppManagementPolicy = new TenantAppManagementPolicy();
tenantAppManagementPolicy.isEnabled = true;
AppManagementConfiguration applicationRestrictions = new AppManagementConfiguration();
LinkedList<PasswordCredentialConfiguration> passwordCredentialsList = new LinkedList<PasswordCredentialConfiguration>();
PasswordCredentialConfiguration passwordCredentials = new PasswordCredentialConfiguration();
passwordCredentials.restrictionType = AppCredentialRestrictionType.PASSWORD_ADDITION;
passwordCredentials.maxLifetime = DatatypeFactory.newInstance().newDuration("null");
passwordCredentials.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2021-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials);
PasswordCredentialConfiguration passwordCredentials1 = new PasswordCredentialConfiguration();
passwordCredentials1.restrictionType = AppCredentialRestrictionType.PASSWORD_LIFETIME;
passwordCredentials1.maxLifetime = DatatypeFactory.newInstance().newDuration("P90D");
passwordCredentials1.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials1);
PasswordCredentialConfiguration passwordCredentials2 = new PasswordCredentialConfiguration();
passwordCredentials2.restrictionType = AppCredentialRestrictionType.SYMMETRIC_KEY_ADDITION;
passwordCredentials2.maxLifetime = DatatypeFactory.newInstance().newDuration("null");
passwordCredentials2.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2021-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials2);
PasswordCredentialConfiguration passwordCredentials3 = new PasswordCredentialConfiguration();
passwordCredentials3.restrictionType = AppCredentialRestrictionType.CUSTOM_PASSWORD_ADDITION;
passwordCredentials3.maxLifetime = DatatypeFactory.newInstance().newDuration("null");
passwordCredentials3.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2015-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials3);
PasswordCredentialConfiguration passwordCredentials4 = new PasswordCredentialConfiguration();
passwordCredentials4.restrictionType = AppCredentialRestrictionType.SYMMETRIC_KEY_LIFETIME;
passwordCredentials4.maxLifetime = DatatypeFactory.newInstance().newDuration("P30D");
passwordCredentials4.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2015-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials4);
applicationRestrictions.passwordCredentials = passwordCredentialsList;
LinkedList<KeyCredentialConfiguration> keyCredentialsList = new LinkedList<KeyCredentialConfiguration>();
KeyCredentialConfiguration keyCredentials = new KeyCredentialConfiguration();
keyCredentials.restrictionType = AppKeyCredentialRestrictionType.ASYMMETRIC_KEY_LIFETIME;
keyCredentials.maxLifetime = DatatypeFactory.newInstance().newDuration("P30D");
keyCredentials.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2015-01-01T10:37:00Z");
keyCredentialsList.add(keyCredentials);
KeyCredentialConfiguration keyCredentials1 = new KeyCredentialConfiguration();
keyCredentials1.restrictionType = AppKeyCredentialRestrictionType.TRUSTED_CERTIFICATE_AUTHORITY;
keyCredentials1.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2019-10-19T10:37:00Z");
LinkedList<String> certificateBasedApplicationConfigurationIdsList = new LinkedList<String>();
certificateBasedApplicationConfigurationIdsList.add("eec5ba11-2fc0-4113-83a2-ed986ed13743");
certificateBasedApplicationConfigurationIdsList.add("bb8e164b-f9ed-4b98-bc45-65eddc14f4c1");
keyCredentials1.certificateBasedApplicationConfigurationIds = certificateBasedApplicationConfigurationIdsList;
keyCredentials1.maxLifetime = DatatypeFactory.newInstance().newDuration("null");
keyCredentialsList.add(keyCredentials1);
applicationRestrictions.keyCredentials = keyCredentialsList;
tenantAppManagementPolicy.applicationRestrictions = applicationRestrictions;

graphClient.policies().defaultAppManagementPolicy()
	.buildRequest()
	.patch(tenantAppManagementPolicy);

```
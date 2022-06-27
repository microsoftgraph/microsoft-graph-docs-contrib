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
passwordCredentials1.maxLifetime = DatatypeFactory.newInstance().newDuration("P4DT12H30M5S");
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
passwordCredentials4.maxLifetime = DatatypeFactory.newInstance().newDuration("P40D");
passwordCredentials4.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2015-01-01T10:37:00Z");
passwordCredentialsList.add(passwordCredentials4);
applicationRestrictions.passwordCredentials = passwordCredentialsList;
LinkedList<KeyCredentialConfiguration> keyCredentialsList = new LinkedList<KeyCredentialConfiguration>();
KeyCredentialConfiguration keyCredentials = new KeyCredentialConfiguration();
keyCredentials.restrictionType = AppKeyCredentialRestrictionType.ASYMMETRIC_KEY_LIFETIME;
keyCredentials.maxLifetime = DatatypeFactory.newInstance().newDuration("P30D");
keyCredentials.restrictForAppsCreatedAfterDateTime = OffsetDateTimeSerializer.deserialize("2015-01-01T10:37:00Z");
keyCredentialsList.add(keyCredentials);
applicationRestrictions.keyCredentials = keyCredentialsList;
tenantAppManagementPolicy.applicationRestrictions = applicationRestrictions;

graphClient.policies().defaultAppManagementPolicy()
	.buildRequest()
	.patch(tenantAppManagementPolicy);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AppManagementPolicy()
request_body.display_name = 'Credential management policy'

request_body.description = 'Cred policy sample'

request_body.is_enabled = True

restrictions = AppManagementConfiguration()
password_credentials_password_credential_configuration1 = PasswordCredentialConfiguration()
password_credentials_password_credential_configuration1.restrictiontype(AppCredentialRestrictionType.PasswordAddition('appcredentialrestrictiontype.passwordaddition'))

password_credentials_password_credential_configuration1.maxLifetime=null

password_credentials_password_credential_configuration1.restrictForAppsCreatedAfterDateTime = DateTime('2019-10-19T10:37:00Z')


passwordCredentialsArray []= passwordCredentialsPasswordCredentialConfiguration1;
password_credentials_password_credential_configuration2 = PasswordCredentialConfiguration()
password_credentials_password_credential_configuration2.restrictiontype(AppCredentialRestrictionType.PasswordLifetime('appcredentialrestrictiontype.passwordlifetime'))

password_credentials_password_credential_configuration2.maxlifetime =  \DateInterval('P4DT12H30M5S')

password_credentials_password_credential_configuration2.restrictForAppsCreatedAfterDateTime = DateTime('2014-10-19T10:37:00Z')


passwordCredentialsArray []= passwordCredentialsPasswordCredentialConfiguration2;
password_credentials_password_credential_configuration3 = PasswordCredentialConfiguration()
password_credentials_password_credential_configuration3.restrictiontype(AppCredentialRestrictionType.SymmetricKeyAddition('appcredentialrestrictiontype.symmetrickeyaddition'))

password_credentials_password_credential_configuration3.maxLifetime=null

password_credentials_password_credential_configuration3.restrictForAppsCreatedAfterDateTime = DateTime('2019-10-19T10:37:00Z')


passwordCredentialsArray []= passwordCredentialsPasswordCredentialConfiguration3;
password_credentials_password_credential_configuration4 = PasswordCredentialConfiguration()
password_credentials_password_credential_configuration4.restrictiontype(AppCredentialRestrictionType.SymmetricKeyLifetime('appcredentialrestrictiontype.symmetrickeylifetime'))

password_credentials_password_credential_configuration4.maxlifetime =  \DateInterval('P4D')

password_credentials_password_credential_configuration4.restrictForAppsCreatedAfterDateTime = DateTime('2014-10-19T10:37:00Z')


passwordCredentialsArray []= passwordCredentialsPasswordCredentialConfiguration4;
restrictions.passwordcredentials(passwordCredentialsArray)


key_credentials_key_credential_configuration1 = KeyCredentialConfiguration()
key_credentials_key_credential_configuration1.restrictiontype(AppKeyCredentialRestrictionType.AsymmetricKeyLifetime('appkeycredentialrestrictiontype.asymmetrickeylifetime'))

key_credentials_key_credential_configuration1.maxlifetime =  \DateInterval('P90D')

key_credentials_key_credential_configuration1.restrictForAppsCreatedAfterDateTime = DateTime('2014-10-19T10:37:00Z')


keyCredentialsArray []= keyCredentialsKeyCredentialConfiguration1;
restrictions.keycredentials(keyCredentialsArray)



request_body.restrictions = restrictions



result = await client.policies.app_management_policies.post(request_body = request_body)


```
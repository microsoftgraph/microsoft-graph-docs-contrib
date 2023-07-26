---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidWorkProfileGeneralDeviceConfiguration()
request_body.@odata_type = '#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.password_block_fingerprint_unlock = True

request_body.password_block_trust_agents = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.PasswordSignInFailureCountBeforeFactoryReset = 12

request_body.passwordrequiredtype(AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric('androidworkprofilerequiredpasswordtype.lowsecuritybiometric'))

request_body.workprofiledatasharingtype(AndroidWorkProfileCrossProfileDataSharingType.PreventAny('androidworkprofilecrossprofiledatasharingtype.preventany'))

request_body.work_profile_block_notifications_while_device_locked = True

request_body.work_profile_block_adding_accounts = True

request_body.work_profile_bluetooth_enable_contact_sharing = True

request_body.work_profile_block_screen_capture = True

request_body.work_profile_block_cross_profile_caller_id = True

request_body.work_profile_block_camera = True

request_body.work_profile_block_cross_profile_contacts_search = True

request_body.work_profile_block_cross_profile_copy_paste = True

request_body.workprofiledefaultapppermissionpolicy(AndroidWorkProfileDefaultAppPermissionPolicyType.Prompt('androidworkprofiledefaultapppermissionpolicytype.prompt'))

request_body.work_profile_password_block_fingerprint_unlock = True

request_body.work_profile_password_block_trust_agents = True

request_body.WorkProfilePasswordExpirationDays = 1

request_body.WorkProfilePasswordMinimumLength = 0

request_body.WorkProfilePasswordMinNumericCharacters = 7

request_body.WorkProfilePasswordMinNonLetterCharacters = 9

request_body.WorkProfilePasswordMinLetterCharacters = 6

request_body.WorkProfilePasswordMinLowerCaseCharacters = 9

request_body.WorkProfilePasswordMinUpperCaseCharacters = 9

request_body.WorkProfilePasswordMinSymbolCharacters = 6

request_body.WorkProfilePasswordMinutesOfInactivityBeforeScreenTimeout = 9

request_body.WorkProfilePasswordPreviousPasswordBlockCount = 13

request_body.WorkProfilePasswordSignInFailureCountBeforeFactoryReset = 7

request_body.workprofilepasswordrequiredtype(AndroidWorkProfileRequiredPasswordType.LowSecurityBiometric('androidworkprofilerequiredpasswordtype.lowsecuritybiometric'))

request_body.work_profile_require_password = True

request_body.security_require_verify_apps = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```
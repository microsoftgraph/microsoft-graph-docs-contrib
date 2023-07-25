---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Windows81GeneralConfiguration()
request_body.@odata_type = '#microsoft.graph.windows81GeneralConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.accounts_block_adding_non_microsoft_account_email = True

request_body.apply_only_to_windows81 = True

request_body.browser_block_autofill = True

request_body.browser_block_automatic_detection_of_intranet_sites = True

request_body.browser_block_enterprise_mode_access = True

request_body.browser_block_java_script = True

request_body.browser_block_plugins = True

request_body.browser_block_popups = True

request_body.browser_block_sending_do_not_track_header = True

request_body.browser_block_single_word_entry_on_intranet_sites = True

request_body.browser_require_smart_screen = True

request_body.browser_enterprise_mode_site_list_location = 'Browser Enterprise Mode Site List Location value'

request_body.browserinternetsecuritylevel(InternetSiteSecurityLevel.Medium('internetsitesecuritylevel.medium'))

request_body.browserintranetsecuritylevel(SiteSecurityLevel.Low('sitesecuritylevel.low'))

request_body.browser_logging_report_location = 'Browser Logging Report Location value'

request_body.browser_require_high_security_for_restricted_sites = True

request_body.browser_require_firewall = True

request_body.browser_require_fraud_warning = True

request_body.browsertrustedsitessecuritylevel(SiteSecurityLevel.Low('sitesecuritylevel.low'))

request_body.cellular_block_data_roaming = True

request_body.diagnostics_block_data_submission = True

request_body.password_block_picture_password_and_pin = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasswordMinimumCharacterSetCount = 0

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.PasswordSignInFailureCountBeforeFactoryReset = 12

request_body.storage_require_device_encryption = True

request_body.updates_require_automatic_updates = True

request_body.useraccountcontrolsettings(WindowsUserAccountControlSettings.AlwaysNotify('windowsuseraccountcontrolsettings.alwaysnotify'))

request_body.work_folders_url = 'https://example.com/workFoldersUrl/'




result = await client.device_management.device_configurations.post(request_body = request_body)


```
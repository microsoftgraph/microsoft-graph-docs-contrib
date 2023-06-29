---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidGeneralDeviceConfiguration()
request_body.@odata_type = '#microsoft.graph.androidGeneralDeviceConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.apps_block_clipboard_sharing = True

request_body.apps_block_copy_paste = True

request_body.apps_block_you_tube = True

request_body.bluetooth_blocked = True

request_body.camera_blocked = True

request_body.cellular_block_data_roaming = True

request_body.cellular_block_messaging = True

request_body.cellular_block_voice_roaming = True

request_body.cellular_block_wi_fi_tethering = True

compliant_apps_list_app_list_item1 = AppListItem()
compliant_apps_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

compliant_apps_list_app_list_item1.name = 'Name value'

compliant_apps_list_app_list_item1.publisher = 'Publisher value'

compliant_apps_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

compliant_apps_list_app_list_item1.app_id = 'App Id value'


compliantAppsListArray []= compliantAppsListAppListItem1;
request_body.compliantappslist(compliantAppsListArray)


request_body.compliantapplisttype(AppListType.AppsInListCompliant('applisttype.appsinlistcompliant'))

request_body.diagnostic_data_block_submission = True

request_body.location_services_blocked = True

request_body.google_account_block_auto_sync = True

request_body.google_play_store_blocked = True

request_body.kiosk_mode_block_sleep_button = True

request_body.kiosk_mode_block_volume_buttons = True

kiosk_mode_apps_app_list_item1 = AppListItem()
kiosk_mode_apps_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

kiosk_mode_apps_app_list_item1.name = 'Name value'

kiosk_mode_apps_app_list_item1.publisher = 'Publisher value'

kiosk_mode_apps_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

kiosk_mode_apps_app_list_item1.app_id = 'App Id value'


kioskModeAppsArray []= kioskModeAppsAppListItem1;
request_body.kioskmodeapps(kioskModeAppsArray)


request_body.nfc_blocked = True

request_body.password_block_fingerprint_unlock = True

request_body.password_block_trust_agents = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.PasswordSignInFailureCountBeforeFactoryReset = 12

request_body.passwordrequiredtype(AndroidRequiredPasswordType.Alphabetic('androidrequiredpasswordtype.alphabetic'))

request_body.password_required = True

request_body.power_off_blocked = True

request_body.factory_reset_blocked = True

request_body.screen_capture_blocked = True

request_body.device_sharing_allowed = True

request_body.storage_block_google_backup = True

request_body.storage_block_removable_storage = True

request_body.storage_require_device_encryption = True

request_body.storage_require_removable_storage_encryption = True

request_body.voice_assistant_blocked = True

request_body.voice_dialing_blocked = True

request_body.web_browser_block_popups = True

request_body.web_browser_block_autofill = True

request_body.web_browser_block_java_script = True

request_body.web_browser_blocked = True

request_body.webbrowsercookiesettings(WebBrowserCookieSettings.BlockAlways('webbrowsercookiesettings.blockalways'))

request_body.wi_fi_blocked = True

apps_install_allow_list_app_list_item1 = AppListItem()
apps_install_allow_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

apps_install_allow_list_app_list_item1.name = 'Name value'

apps_install_allow_list_app_list_item1.publisher = 'Publisher value'

apps_install_allow_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

apps_install_allow_list_app_list_item1.app_id = 'App Id value'


appsInstallAllowListArray []= appsInstallAllowListAppListItem1;
request_body.appsinstallallowlist(appsInstallAllowListArray)


apps_launch_block_list_app_list_item1 = AppListItem()
apps_launch_block_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

apps_launch_block_list_app_list_item1.name = 'Name value'

apps_launch_block_list_app_list_item1.publisher = 'Publisher value'

apps_launch_block_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

apps_launch_block_list_app_list_item1.app_id = 'App Id value'


appsLaunchBlockListArray []= appsLaunchBlockListAppListItem1;
request_body.appslaunchblocklist(appsLaunchBlockListArray)


apps_hide_list_app_list_item1 = AppListItem()
apps_hide_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

apps_hide_list_app_list_item1.name = 'Name value'

apps_hide_list_app_list_item1.publisher = 'Publisher value'

apps_hide_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

apps_hide_list_app_list_item1.app_id = 'App Id value'


appsHideListArray []= appsHideListAppListItem1;
request_body.appshidelist(appsHideListArray)


request_body.security_require_verify_apps = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```
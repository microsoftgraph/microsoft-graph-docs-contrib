---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WindowsPhone81GeneralConfiguration()
request_body.@odata_type = '#microsoft.graph.windowsPhone81GeneralConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.apply_only_to_windows_phone81 = True

request_body.apps_block_copy_paste = True

request_body.bluetooth_blocked = True

request_body.camera_blocked = True

request_body.cellular_block_wifi_tethering = True

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

request_body.email_block_adding_accounts = True

request_body.location_services_blocked = True

request_body.microsoft_account_blocked = True

request_body.nfc_blocked = True

request_body.password_block_simple = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasswordMinimumCharacterSetCount = 0

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.PasswordSignInFailureCountBeforeFactoryReset = 12

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.password_required = True

request_body.screen_capture_blocked = True

request_body.storage_block_removable_storage = True

request_body.storage_require_encryption = True

request_body.web_browser_blocked = True

request_body.wifi_blocked = True

request_body.wifi_block_automatic_connect_hotspots = True

request_body.wifi_block_hotspot_reporting = True

request_body.windows_store_blocked = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```
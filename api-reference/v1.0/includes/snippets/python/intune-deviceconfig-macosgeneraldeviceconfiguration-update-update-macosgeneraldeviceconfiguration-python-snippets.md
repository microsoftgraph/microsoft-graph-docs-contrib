---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MacOSGeneralDeviceConfiguration()
request_body.@odata_type = '#microsoft.graph.macOSGeneralDeviceConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

compliant_apps_list_app_list_item1 = AppListItem()
compliant_apps_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

compliant_apps_list_app_list_item1.name = 'Name value'

compliant_apps_list_app_list_item1.publisher = 'Publisher value'

compliant_apps_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

compliant_apps_list_app_list_item1.app_id = 'App Id value'


compliantAppsListArray []= compliantAppsListAppListItem1;
request_body.compliantappslist(compliantAppsListArray)


request_body.compliantapplisttype(AppListType.AppsInListCompliant('applisttype.appsinlistcompliant'))

request_body.EmailInDomainSuffixes(['Email In Domain Suffixes value', ])

request_body.password_block_simple = True

request_body.PasswordExpirationDays = 6

request_body.PasswordMinimumCharacterSetCount = 0

request_body.PasswordMinimumLength = 5

request_body.PasswordMinutesOfInactivityBeforeLock = 5

request_body.PasswordMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasswordPreviousPasswordBlockCount = 2

request_body.passwordrequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.password_required = True




result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```
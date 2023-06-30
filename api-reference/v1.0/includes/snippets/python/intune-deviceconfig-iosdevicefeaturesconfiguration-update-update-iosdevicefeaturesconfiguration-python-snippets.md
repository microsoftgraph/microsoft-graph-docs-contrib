---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosDeviceFeaturesConfiguration()
request_body.@odata_type = '#microsoft.graph.iosDeviceFeaturesConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.asset_tag_template = 'Asset Tag Template value'

request_body.lock_screen_footnote = 'Lock Screen Footnote value'

home_screen_dock_icons_ios_home_screen_item1 = IosHomeScreenFolder()
home_screen_dock_icons_ios_home_screen_item1.@odata_type = 'microsoft.graph.iosHomeScreenFolder'

home_screen_dock_icons_ios_home_screen_item1.display_name = 'Display Name value'

pages_ios_home_screen_folder_page1 = IosHomeScreenFolderPage()
pages_ios_home_screen_folder_page1.@odata_type = 'microsoft.graph.iosHomeScreenFolderPage'

pages_ios_home_screen_folder_page1.display_name = 'Display Name value'

apps_ios_home_screen_app1 = IosHomeScreenApp()
apps_ios_home_screen_app1.@odata_type = 'microsoft.graph.iosHomeScreenApp'

apps_ios_home_screen_app1.display_name = 'Display Name value'

apps_ios_home_screen_app1.bundle_i_d = 'Bundle ID value'


appsArray []= appsIosHomeScreenApp1;
pages_ios_home_screen_folder_page1.apps(appsArray)



pagesArray []= pagesIosHomeScreenFolderPage1;
home_screen_dock_icons_ios_home_screen_item1.pages(pagesArray)



homeScreenDockIconsArray []= homeScreenDockIconsIosHomeScreenItem1;
request_body.homescreendockicons(homeScreenDockIconsArray)


home_screen_pages_ios_home_screen_page1 = IosHomeScreenPage()
home_screen_pages_ios_home_screen_page1.@odata_type = 'microsoft.graph.iosHomeScreenPage'

home_screen_pages_ios_home_screen_page1.display_name = 'Display Name value'

icons_ios_home_screen_item1 = IosHomeScreenFolder()
icons_ios_home_screen_item1.@odata_type = 'microsoft.graph.iosHomeScreenFolder'

icons_ios_home_screen_item1.display_name = 'Display Name value'

pages_ios_home_screen_folder_page1 = IosHomeScreenFolderPage()
pages_ios_home_screen_folder_page1.@odata_type = 'microsoft.graph.iosHomeScreenFolderPage'

pages_ios_home_screen_folder_page1.display_name = 'Display Name value'

apps_ios_home_screen_app1 = IosHomeScreenApp()
apps_ios_home_screen_app1.@odata_type = 'microsoft.graph.iosHomeScreenApp'

apps_ios_home_screen_app1.display_name = 'Display Name value'

apps_ios_home_screen_app1.bundle_i_d = 'Bundle ID value'


appsArray []= appsIosHomeScreenApp1;
pages_ios_home_screen_folder_page1.apps(appsArray)



pagesArray []= pagesIosHomeScreenFolderPage1;
icons_ios_home_screen_item1.pages(pagesArray)



iconsArray []= iconsIosHomeScreenItem1;
home_screen_pages_ios_home_screen_page1.icons(iconsArray)



homeScreenPagesArray []= homeScreenPagesIosHomeScreenPage1;
request_body.homescreenpages(homeScreenPagesArray)


notification_settings_ios_notification_settings1 = IosNotificationSettings()
notification_settings_ios_notification_settings1.@odata_type = 'microsoft.graph.iosNotificationSettings'

notification_settings_ios_notification_settings1.bundle_i_d = 'Bundle ID value'

notification_settings_ios_notification_settings1.app_name = 'App Name value'

notification_settings_ios_notification_settings1.publisher = 'Publisher value'

notification_settings_ios_notification_settings1.enabled = True

notification_settings_ios_notification_settings1.show_in_notification_center = True

notification_settings_ios_notification_settings1.show_on_lock_screen = True

notification_settings_ios_notification_settings1.alerttype(IosNotificationAlertType.Banner('iosnotificationalerttype.banner'))

notification_settings_ios_notification_settings1.badges_enabled = True

notification_settings_ios_notification_settings1.sounds_enabled = True


notificationSettingsArray []= notificationSettingsIosNotificationSettings1;
request_body.notificationsettings(notificationSettingsArray)





result = await client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body = request_body)


```
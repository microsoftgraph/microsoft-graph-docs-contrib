---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosDeviceFeaturesConfiguration(
	odata_type = "#microsoft.graph.iosDeviceFeaturesConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	asset_tag_template = "Asset Tag Template value",
	lock_screen_footnote = "Lock Screen Footnote value",
	home_screen_dock_icons = [
		IosHomeScreenFolder(
			odata_type = "microsoft.graph.iosHomeScreenFolder",
			display_name = "Display Name value",
			pages = [
				IosHomeScreenFolderPage(
					odata_type = "microsoft.graph.iosHomeScreenFolderPage",
					display_name = "Display Name value",
					apps = [
						IosHomeScreenApp(
							odata_type = "microsoft.graph.iosHomeScreenApp",
							display_name = "Display Name value",
							bundle_i_d = "Bundle ID value",
						),
					],
				),
			],
		),
	],
	home_screen_pages = [
		IosHomeScreenPage(
			odata_type = "microsoft.graph.iosHomeScreenPage",
			display_name = "Display Name value",
			icons = [
				IosHomeScreenFolder(
					odata_type = "microsoft.graph.iosHomeScreenFolder",
					display_name = "Display Name value",
					pages = [
						IosHomeScreenFolderPage(
							odata_type = "microsoft.graph.iosHomeScreenFolderPage",
							display_name = "Display Name value",
							apps = [
								IosHomeScreenApp(
									odata_type = "microsoft.graph.iosHomeScreenApp",
									display_name = "Display Name value",
									bundle_i_d = "Bundle ID value",
								),
							],
						),
					],
				),
			],
		),
	],
	notification_settings = [
		IosNotificationSettings(
			odata_type = "microsoft.graph.iosNotificationSettings",
			bundle_i_d = "Bundle ID value",
			app_name = "App Name value",
			publisher = "Publisher value",
			enabled = True,
			show_in_notification_center = True,
			show_on_lock_screen = True,
			alert_type = IosNotificationAlertType.Banner,
			badges_enabled = True,
			sounds_enabled = True,
		),
	],
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```
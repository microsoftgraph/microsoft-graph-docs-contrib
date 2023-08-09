---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AndroidManagedAppProtection()
request_body.@odata_type = '#microsoft.graph.androidManagedAppProtection'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.version = 'Version value'

request_body.periodofflinebeforeaccesscheck =  \DateInterval('-PT17.1357909S')

request_body.periodonlinebeforeaccesscheck =  \DateInterval('PT35.0018757S')

request_body.allowedinbounddatatransfersources(ManagedAppDataTransferLevel.ManagedApps('managedappdatatransferlevel.managedapps'))

request_body.allowedoutbounddatatransferdestinations(ManagedAppDataTransferLevel.ManagedApps('managedappdatatransferlevel.managedapps'))

request_body.organizational_credentials_required = True

request_body.allowedoutboundclipboardsharinglevel(ManagedAppClipboardSharingLevel.ManagedAppsWithPasteIn('managedappclipboardsharinglevel.managedappswithpastein'))

request_body.data_backup_blocked = True

request_body.device_compliance_required = True

request_body.managed_browser_to_open_links_required = True

request_body.save_as_blocked = True

request_body.periodofflinebeforewipeisenforced =  \DateInterval('-PT3M22.1587532S')

request_body.pin_required = True

request_body.MaximumPinRetries = 1

request_body.simple_pin_blocked = True

request_body.MinimumPinLength = 0

request_body.pincharacterset(ManagedAppPinCharacterSet.AlphanumericAndSymbol('managedapppincharacterset.alphanumericandsymbol'))

request_body.periodbeforepinreset =  \DateInterval('PT3M29.6631862S')

request_body.AllowedDataStorageLocations([request_body.managedappdatastoragelocation(ManagedAppDataStorageLocation.SharePoint('managedappdatastoragelocation.sharepoint'))
])

request_body.contact_sync_blocked = True

request_body.print_blocked = True

request_body.fingerprint_blocked = True

request_body.disable_app_pin_if_device_pin_is_set = True

request_body.minimum_required_os_version = 'Minimum Required Os Version value'

request_body.minimum_warning_os_version = 'Minimum Warning Os Version value'

request_body.minimum_required_app_version = 'Minimum Required App Version value'

request_body.minimum_warning_app_version = 'Minimum Warning App Version value'

request_body.managedbrowser(ManagedBrowserType.MicrosoftEdge('managedbrowsertype.microsoftedge'))

request_body.is_assigned = True

request_body.screen_capture_blocked = True

request_body.disable_app_encryption_if_device_encryption_is_enabled = True

request_body.encrypt_app_data = True

request_body.DeployedAppCount = 0

request_body.minimum_required_patch_version = 'Minimum Required Patch Version value'

request_body.minimum_warning_patch_version = 'Minimum Warning Patch Version value'

request_body.custom_browser_package_id = 'Custom Browser Package Id value'

request_body.custom_browser_display_name = 'Custom Browser Display Name value'




result = await client.device_app_management.android_managed_app_protections.by_android_managed_app_protection_id('androidManagedAppProtection-id').patch(request_body = request_body)


```
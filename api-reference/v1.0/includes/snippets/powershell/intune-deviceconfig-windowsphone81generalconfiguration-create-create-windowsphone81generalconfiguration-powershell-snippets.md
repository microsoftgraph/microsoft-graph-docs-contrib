---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.windowsPhone81GeneralConfiguration"
	description = "Description value"
	displayName = "Display Name value"
	version = 7
	applyOnlyToWindowsPhone81 = $true
	appsBlockCopyPaste = $true
	bluetoothBlocked = $true
	cameraBlocked = $true
	cellularBlockWifiTethering = $true
	compliantAppsList = @(
		@{
			"@odata.type" = "microsoft.graph.appListItem"
			name = "Name value"
			publisher = "Publisher value"
			appStoreUrl = "https://example.com/appStoreUrl/"
			appId = "App Id value"
		}
	)
	compliantAppListType = "appsInListCompliant"
	diagnosticDataBlockSubmission = $true
	emailBlockAddingAccounts = $true
	locationServicesBlocked = $true
	microsoftAccountBlocked = $true
	nfcBlocked = $true
	passwordBlockSimple = $true
	passwordExpirationDays = 
	passwordMinimumLength = 
	passwordMinutesOfInactivityBeforeScreenTimeout = 
	passwordMinimumCharacterSetCount = 
	passwordPreviousPasswordBlockCount = 
	passwordSignInFailureCountBeforeFactoryReset = 
	passwordRequiredType = "alphanumeric"
	passwordRequired = $true
	screenCaptureBlocked = $true
	storageBlockRemovableStorage = $true
	storageRequireEncryption = $true
	webBrowserBlocked = $true
	wifiBlocked = $true
	wifiBlockAutomaticConnectHotspots = $true
	wifiBlockHotspotReporting = $true
	windowsStoreBlocked = $true
}

New-MgDeviceManagementDeviceConfiguration -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Enrolment

$params = @{
	"@odata.type" = "#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration"
	displayName = "Display Name value"
	description = "Description value"
	priority = 8
	version = 7
	iosRestriction = @{
		"@odata.type" = "microsoft.graph.deviceEnrollmentPlatformRestriction"
		platformBlocked = $true
		personalDeviceEnrollmentBlocked = $true
		osMinimumVersion = "Os Minimum Version value"
		osMaximumVersion = "Os Maximum Version value"
	}
	windowsRestriction = @{
		"@odata.type" = "microsoft.graph.deviceEnrollmentPlatformRestriction"
		platformBlocked = $true
		personalDeviceEnrollmentBlocked = $true
		osMinimumVersion = "Os Minimum Version value"
		osMaximumVersion = "Os Maximum Version value"
	}
	windowsMobileRestriction = @{
		"@odata.type" = "microsoft.graph.deviceEnrollmentPlatformRestriction"
		platformBlocked = $true
		personalDeviceEnrollmentBlocked = $true
		osMinimumVersion = "Os Minimum Version value"
		osMaximumVersion = "Os Maximum Version value"
	}
	androidRestriction = @{
		"@odata.type" = "microsoft.graph.deviceEnrollmentPlatformRestriction"
		platformBlocked = $true
		personalDeviceEnrollmentBlocked = $true
		osMinimumVersion = "Os Minimum Version value"
		osMaximumVersion = "Os Maximum Version value"
	}
	macOSRestriction = @{
		"@odata.type" = "microsoft.graph.deviceEnrollmentPlatformRestriction"
		platformBlocked = $true
		personalDeviceEnrollmentBlocked = $true
		osMinimumVersion = "Os Minimum Version value"
		osMaximumVersion = "Os Maximum Version value"
	}
}

New-MgDeviceManagementDeviceEnrollmentConfiguration -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$directorySettingId = "e40f3033-9c35-4a1d-a1e1-5a8565a51193"
$params = @{
	values = @(
		@{
			Name = "BannedPasswordCheckOnPremisesMode"
			value = "Audit"
		},
		@{
			Name = "EnableBannedPasswordCheckOnPremises"
			value = "True"
		},
		@{
			Name = "EnableBannedPasswordCheck"
			value = "True"
		},
		@{
			Name = "LockoutDurationInSeconds"
			value = "60"
		},
		@{
			Name = "LockoutThreshold"
			value = "10"
		},
		@{
			Name = "BannedPasswordList"
			Value = "pwd1`tpwd2`tpwd3`tpwd4"
		}
	)
}
Update-MgBetaDirectorySetting -DirectorySettingId $directorySettingId -BodyParameter $params

```

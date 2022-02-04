---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	DisplayName = "Myprefix_test_mysuffix"
	MailNickname = "Myprefix_test_mysuffix"
	OnBehalfOfUserId = "onBehalfOfUserId-value"
}

Test-MgGroupProperty -GroupId $groupId -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Notes

$params = @{
	DisplayName = "Section group name"
}

# A UPN can also be used as -UserId.
New-MgUserOnenoteSectionGroup -UserId $userId -SectionGroupId $sectionGroupId -BodyParameter $params

```
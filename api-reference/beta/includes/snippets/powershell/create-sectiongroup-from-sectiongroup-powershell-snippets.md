---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Notes

$params = @{
	DisplayName = "Section group name"
}

New-MgUserOnenoteSectionGroup -UserId $userId -SectionGroupId $sectionGroupId -BodyParameter $params

```
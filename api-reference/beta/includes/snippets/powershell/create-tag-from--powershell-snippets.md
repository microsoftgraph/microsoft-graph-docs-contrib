---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	displayName = "Privileged"
	description = "The document is privileged"
	"parent@odata.bind" = "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3"
}

New-MgComplianceEdiscoveryCaseTag -CaseId $caseId -BodyParameter $params

```
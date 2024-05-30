---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	displayName = "GDPR"
	standsFor = "General Data Protection Regulation"
	description = "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas."
	webUrl = "http://contoso.com/GDPR"
	state = "published"
}

New-MgSearchAcronym -BodyParameter $params

```
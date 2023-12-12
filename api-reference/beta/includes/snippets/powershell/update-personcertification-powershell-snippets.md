---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	issuingAuthority = "International Academy of Marketing Excellence"
	issuingCompany = "International Academy of Marketing Excellence"
}

Update-MgBetaUserProfileCertification -UserId $userId -PersonCertificationId $personCertificationId -BodyParameter $params

```
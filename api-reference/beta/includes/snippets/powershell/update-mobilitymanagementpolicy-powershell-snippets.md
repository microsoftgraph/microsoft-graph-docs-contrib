---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.mobilityManagementPolicy"
	ComplianceUrl = "https://portal.uem.contoso.com/?portalAction=Compliance"
	DiscoveryUrl = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc"
	TermsOfUseUrl = "https://portal.uem.contoso.com/TermsofUse.aspx"
}

Update-MgPolicyMobileDeviceManagementPolicy -MobilityManagementPolicyId $mobilityManagementPolicyId -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.mobilityManagementPolicy"
	ComplianceUrl = "https://portal.mg.contoso.com/?portalAction=Compliance"
	DiscoveryUrl = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc"
	TermsOfUseUrl = "https://portal.mg.contoso.com/TermsofUse.aspx"
}

Update-MgPolicyMobileAppManagementPolicy -MobilityManagementPolicyId $mobilityManagementPolicyId -BodyParameter $params

```
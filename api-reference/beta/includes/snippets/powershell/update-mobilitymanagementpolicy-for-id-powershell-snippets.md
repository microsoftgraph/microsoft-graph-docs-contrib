---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.mobilityManagementPolicy"
	complianceUrl = "https://portal.mg.contoso.com/?portalAction=Compliance"
	discoveryUrl = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc"
	termsOfUseUrl = "https://portal.mg.contoso.com/TermsofUse.aspx"
}

Update-MgPolicyMobileAppManagementPolicy -MobilityManagementPolicyId $mobilityManagementPolicyId -BodyParameter $params

```
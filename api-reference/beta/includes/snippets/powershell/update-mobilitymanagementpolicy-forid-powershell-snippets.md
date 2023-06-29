---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.mobilityManagementPolicy"
	complianceUrl = "https://portal.uem.contoso.com/?portalAction=Compliance"
	discoveryUrl = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc"
	termsOfUseUrl = "https://portal.uem.contoso.com/TermsofUse.aspx"
}

Update-MgPolicyMobileDeviceManagementPolicy -MobilityManagementPolicyId $mobilityManagementPolicyId -BodyParameter $params

```
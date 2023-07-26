---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.enterpriseCodeSigningCertificate"
	content = [System.Text.Encoding]::ASCII.GetBytes("Y29udGVudA==")
	status = "provisioned"
	subjectName = "Subject Name value"
	subject = "Subject value"
	issuerName = "Issuer Name value"
	issuer = "Issuer value"
	expirationDateTime = [System.DateTime]::Parse("2016-12-31T23:57:57.2481234-08:00")
	uploadDateTime = [System.DateTime]::Parse("2016-12-31T23:58:46.5747426-08:00")
}

New-MgDeviceAppMgtEnterpriseCodeSigningCertificate -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	keyCredentials = @(
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
			endDateTime = [System.DateTime]::Parse("2027-01-22T00:00:00Z")
			keyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			startDateTime = [System.DateTime]::Parse("2024-02-21T17:09:35Z")
			type = "X509CertAndPassword"
			usage = "Sign"
			key = [System.Text.Encoding]::ASCII.GetBytes("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=")
			displayName = "CN=AWSContoso"
		}
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
			endDateTime = [System.DateTime]::Parse("2027-01-22T00:00:00Z")
			keyId = "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"
			startDateTime = [System.DateTime]::Parse("2024-02-21T17:09:35Z")
			type = "AsymmetricX509Cert"
			usage = "Verify"
			key = [System.Text.Encoding]::ASCII.GetBytes("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=")
			displayName = "CN=AWSContoso"
		}
	)
	passwordCredentials = @(
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A")
			keyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			endDateTime = [System.DateTime]::Parse("2022-01-27T19:40:33Z")
			startDateTime = [System.DateTime]::Parse("2027-01-22T00:00:00Z")
			secretText = "61891f4ee44d"
		}
	)
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```
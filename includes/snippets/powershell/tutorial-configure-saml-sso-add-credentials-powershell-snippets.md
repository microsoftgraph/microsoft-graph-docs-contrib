---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	KeyCredentials = @(
		@{
			CustomKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			EndDateTime = [System.DateTime]::Parse("2021-04-22T22:10:13Z")
			KeyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			StartDateTime = [System.DateTime]::Parse("2020-04-22T21:50:13Z")
			Type = "X509CertAndPassword"
			Usage = "Sign"
			Key = [System.Text.Encoding]::ASCII.GetBytes("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==")
			DisplayName = "CN=awsAPI"
		}
		@{
			CustomKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			EndDateTime = [System.DateTime]::Parse("2021-04-22T22:10:13Z")
			KeyId = "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"
			StartDateTime = [System.DateTime]::Parse("2020-04-22T21:50:13Z")
			Type = "AsymmetricX509Cert"
			Usage = "Verify"
			Key = [System.Text.Encoding]::ASCII.GetBytes("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==")
			DisplayName = "CN=awsAPI"
		}
	)
	PasswordCredentials = @(
		@{
			CustomKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			KeyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			EndDateTime = [System.DateTime]::Parse("2022-01-27T19:40:33Z")
			StartDateTime = [System.DateTime]::Parse("2020-04-20T19:40:33Z")
			SecretText = "61891f4ee44d"
		}
	)
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```
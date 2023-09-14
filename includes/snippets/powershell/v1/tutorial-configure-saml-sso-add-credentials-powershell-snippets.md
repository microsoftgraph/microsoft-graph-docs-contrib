---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	keyCredentials = @(
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			endDateTime = [System.DateTime]::Parse("2021-04-22T22:10:13Z")
			keyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			startDateTime = [System.DateTime]::Parse("2020-04-22T21:50:13Z")
			type = "X509CertAndPassword"
			usage = "Sign"
			key = [System.Text.Encoding]::ASCII.GetBytes("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A==")
			displayName = "CN=awsAPI"
		}
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			endDateTime = [System.DateTime]::Parse("2021-04-22T22:10:13Z")
			keyId = "e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"
			startDateTime = [System.DateTime]::Parse("2020-04-22T21:50:13Z")
			type = "AsymmetricX509Cert"
			usage = "Verify"
			key = [System.Text.Encoding]::ASCII.GetBytes("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg==")
			displayName = "CN=awsAPI"
		}
	)
	passwordCredentials = @(
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA=")
			keyId = "4c266507-3e74-4b91-aeba-18a25b450f6e"
			endDateTime = [System.DateTime]::Parse("2022-01-27T19:40:33Z")
			startDateTime = [System.DateTime]::Parse("2020-04-20T19:40:33Z")
			secretText = "61891f4ee44d"
		}
	)
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```
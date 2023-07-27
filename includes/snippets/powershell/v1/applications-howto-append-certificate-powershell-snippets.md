---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	keyCredentials = @(
		@{
			endDateTime = [System.DateTime]::Parse("2024-01-11T15:31:26Z")
			startDateTime = [System.DateTime]::Parse("2023-01-12T09:31:26Z")
			type = "AsymmetricX509Cert"
			usage = "Verify"
			key = [System.Text.Encoding]::ASCII.GetBytes("base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ==")
			displayName = "CN=20230114"
		}
		@{
			customKeyIdentifier = [System.Text.Encoding]::ASCII.GetBytes("52ED9B5038A47B9E2E2190715CC238359D4F8F73")
			type = "AsymmetricX509Cert"
			usage = "Verify"
			key = [System.Text.Encoding]::ASCII.GetBytes("base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA==")
			displayName = "CN=20230113"
		}
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```
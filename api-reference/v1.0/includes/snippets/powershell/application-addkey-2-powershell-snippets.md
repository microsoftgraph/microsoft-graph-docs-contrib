---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	KeyCredential = @{
		Type = "X509CertAndPassword"
		Usage = "Sign"
		Key = [System.Text.Encoding]::ASCII.GetBytes("MIIDYDCCAki...")
	}
	PasswordCredential = @{
		SecretText = "MKTr0w1..."
	}
	Proof = "eyJ0eXAiOiJ..."
}

Add-MgApplicationKey -ApplicationId $applicationId -BodyParameter $params

```
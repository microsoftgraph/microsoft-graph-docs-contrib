---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

$params = @{
	parentFolderId = "AQMkADIxYjJiYgEzLTFmNjYALTRjYTMtODA1NC0wZDkxZGNmOTcxNTQALgAAA8RJzXYaLKZPlmn0ge0edZkBADa3qi2IMXRNg6RwQSHe_F8AAAIBDgAAAA=="
	displayName = "Important contacts"
}

# A UPN can also be used as -UserId.
New-MgBetaUserContactFolder -UserId $userId -BodyParameter $params

```
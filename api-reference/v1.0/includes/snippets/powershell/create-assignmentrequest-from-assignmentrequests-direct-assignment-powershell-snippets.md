---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "AdminAdd"
	assignment = @{
		target = @{
			email = "user@contoso.com"
		}
		assignmentPolicy = @{
			id = "11114b50-0a08-4f96-83e9-1d714aa2cd79"
		}
		accessPackage = @{
			id = "11115C72-0612-4C43-A044-FC0A4E71A4C5"
		}
	}
}

New-MgEntitlementManagementAssignmentRequest -BodyParameter $params

```
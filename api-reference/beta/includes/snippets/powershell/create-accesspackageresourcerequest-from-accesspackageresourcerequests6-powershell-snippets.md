---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	catalogId = "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
	requestType = "AdminAdd"
	justification = ""
	accessPackageResource = @{
		displayName = "Faculty cafeteria ordering"
		description = "Example application"
		url = "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/"
		resourceType = "Application"
		originId = "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e"
		originSystem = "AadApplication"
		attributes = @(
			@{
				attributeName = "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle"
				isEditable = $true
				isPersistedOnAssignmentRemoval = $true
				attributeSource = @{
					"@odata.type" = "#microsoft.graph.accessPackageResourceAttributeQuestion"
					question = @{
						"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
						isRequired = $false
						sequence = 
						isSingleLineQuestion = $true
					}
				}
				attributeDestination = @{
					"@odata.type" = "#microsoft.graph.accessPackageUserDirectoryAttributeStore"
				}
			}
		)
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	CatalogId = "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
	RequestType = "AdminAdd"
	Justification = ""
	AccessPackageResource = @{
		DisplayName = "Faculty cafeteria ordering"
		Description = "Example application"
		Url = "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/"
		ResourceType = "Application"
		OriginId = "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e"
		OriginSystem = "AadApplication"
		Attributes = @(
			@{
				AttributeName = "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle"
				IsEditable = $true
				IsPersistedOnAssignmentRemoval = $true
				AttributeSource = @{
					"@odata.type" = "#microsoft.graph.accessPackageResourceAttributeQuestion"
					Question = @{
						"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
						IsRequired = $false
						Sequence = 
						IsSingleLineQuestion = $true
					}
				}
				AttributeDestination = @{
					"@odata.type" = "#microsoft.graph.accessPackageUserDirectoryAttributeStore"
				}
			}
		)
	}
}

New-MgEntitlementManagementAccessPackageResourceRequest -BodyParameter $params

```
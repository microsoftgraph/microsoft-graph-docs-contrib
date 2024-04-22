---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	requestType = "adminUpdate"
	resource = @{
		originId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f"
		originSystem = "AadApplication"
		attributes = @(
			@{
				destination = @{
					"@odata.type" = "microsoft.graph.accessPackageUserDirectoryAttributeStore"
				}
				name = "officeLocation"
				source = @{
					"@odata.type" = "#microsoft.graph.accessPackageResourceAttributeQuestion"
					question = @{
						"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
						sequence = 
						isRequired = $true
						isAnswerEditable = $true
						text = "What office do you work at?"
						isSingleLineQuestion = $true
						regexPattern = "[a-zA-Z]+[a-zA-Z\s]*"
					}
				}
			}
			@{
				destination = @{
					"@odata.type" = "microsoft.graph.accessPackageUserDirectoryAttributeStore"
				}
				name = "extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter"
				source = @{
					"@odata.type" = "#microsoft.graph.accessPackageResourceAttributeQuestion"
					question = @{
						"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
						isRequired = $false
						text = "What is your cost center number?"
						sequence = 
						isSingleLineQuestion = $true
						regexPattern = "[0-9]*"
					}
				}
			}
		)
	}
	catalog = @{
		id = "beedadfe-01d5-4025-910b-84abb9369997"
	}
}

New-MgEntitlementManagementResourceRequest -BodyParameter $params

```
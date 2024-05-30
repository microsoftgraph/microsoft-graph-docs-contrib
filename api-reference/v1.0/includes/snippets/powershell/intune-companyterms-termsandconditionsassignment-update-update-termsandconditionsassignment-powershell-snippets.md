---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement.Administration

$params = @{
	"@odata.type" = "#microsoft.graph.termsAndConditionsAssignment"
	target = @{
		"@odata.type" = "microsoft.graph.configurationManagerCollectionAssignmentTarget"
		collectionId = "Collection Id value"
	}
}

Update-MgDeviceManagementTermAndConditionAssignment -TermsAndConditionsId $termsAndConditionsId -TermsAndConditionsAssignmentId $termsAndConditionsAssignmentId -BodyParameter $params

```
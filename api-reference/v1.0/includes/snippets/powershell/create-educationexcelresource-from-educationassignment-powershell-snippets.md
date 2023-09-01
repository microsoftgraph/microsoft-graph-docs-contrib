---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	distributeForStudentWork = $false
	resource = @{
		"@odata.type" = "microsoft.graph.educationExcelResource"
		displayName = "Graph Doc pages.xlsx"
		fileUrl = "https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RIR7PSV4JJSFJHKNPUVUWGPW4O2"
	}
}

New-MgEducationClassAssignmentResource -EducationClassId $educationClassId -EducationAssignmentId $educationAssignmentId -BodyParameter $params

```
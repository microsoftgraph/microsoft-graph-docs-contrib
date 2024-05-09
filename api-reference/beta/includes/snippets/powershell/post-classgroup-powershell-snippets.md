---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	"@odata.type" = "#microsoft.graph.industryData.classGroupProvisioningFlow"
	configuration = @{
		"@odata.type" = "#microsoft.graph.industryData.classGroupConfiguration"
		additionalAttributes = @(
		"courseTitle"
	"courseCode"
"courseSubject"
"courseGradeLevel"
"courseExternalId"
"academicSessionTitle"
"academicSessionExternalId"
)
additionalOptions = @{
"@odata.type" = "#microsoft.graph.industryData.additionalClassGroupOptions"
createTeam = $true
writeDisplayNameOnCreateOnly = $true
}
enrollmentMappings = @{
"@odata.type" = "#microsoft.graph.industryData.enrollmentMappings"
ownerEnrollmentMappings = @(
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "teacher"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "proctor"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "teacherAssistant"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "paraProfessional"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "physicalTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "speechTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "visionTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "occupationalTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "staff"
}
)
memberEnrollmentMappings = @(
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "student"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "substitute"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "aide"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "proctor"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "teacherAssistant"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "paraProfessional"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "physicalTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "speechTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "visionTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "occupationalTherapist"
}
@{
"@odata.type" = "#microsoft.graph.industryData.sectionRoleReferenceValue"
code = "staff"
}
)
}
}
}

New-MgBetaExternalIndustryDataOutboundProvisioningFlowSetProvisioningFlow -OutboundProvisioningFlowSetId $outboundProvisioningFlowSetId -BodyParameter $params

```
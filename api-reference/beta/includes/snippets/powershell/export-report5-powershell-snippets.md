---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Export 5"
	exportCriteria = "partiallyIndexed"
	exportLocation = "responsiveLocations"
	additionalOptions = "cloudAttachments"
	cloudAttachmentVersion = "all"
	doucmentVersion = "recent100"
}

Export-MgBetaSecurityCaseEdiscoveryCaseSearchReport -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```
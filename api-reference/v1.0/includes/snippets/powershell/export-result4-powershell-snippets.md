---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	displayName = "Export 4"
	exportCriteria = "partiallyIndexed"
	exportLocation = "responsiveLocations, nonresponsiveLocations"
	additionalOptions = "teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments"
	exportFormat = "eml"
}

Export-MgBetaSecurityCaseEdiscoveryCaseSearchResult -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```
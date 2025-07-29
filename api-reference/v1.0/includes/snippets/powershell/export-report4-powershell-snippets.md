---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	displayName = "Export 4"
	exportCriteria = "partiallyIndexed"
	exportLocation = "responsiveLocations, nonresponsiveLocations"
	additionalOptions = "teamsAndYammerConversations, cloudAttachments, allDocumentVersions, subfolderContents, listAttachments"
}

Export-MgSecurityCaseEdiscoveryCaseSearchReport -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

```
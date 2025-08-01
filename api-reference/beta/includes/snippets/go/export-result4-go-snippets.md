---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewExportResultPostRequestBody()
displayName := "Export 4"
requestBody.SetDisplayName(&displayName) 
exportCriteria := graphmodels.PARTIALLYINDEXED_EXPORTCRITERIA 
requestBody.SetExportCriteria(&exportCriteria) 
exportLocation := graphmodels.RESPONSIVELOCATIONS, NONRESPONSIVELOCATIONS_EXPORTLOCATION 
requestBody.SetExportLocation(&exportLocation) 
additionalOptions := graphmodels.ADVANCEDINDEXING, SUBFOLDERCONTENTS, ALLITEMSINFOLDER, LISTATTACHMENTS, TEAMSANDYAMMERCONVERSATIONS, HTMLTRANSCRIPTS, CLOUDATTACHMENTS, INCLUDEFOLDERANDPATH, SPLITSOURCE, CONDENSEPATHS, FRIENDLYNAME, INCLUDEREPORT_ADDITIONALOPTIONS 
requestBody.SetAdditionalOptions(&additionalOptions) 
exportFormat := graphmodels.EML_EXPORTFORMAT 
requestBody.SetExportFormat(&exportFormat) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Searches().ByEdiscoverySearchId("ediscoverySearch-id").MicrosoftGraphSecurityExportResult().Post(context.Background(), requestBody, nil)


```
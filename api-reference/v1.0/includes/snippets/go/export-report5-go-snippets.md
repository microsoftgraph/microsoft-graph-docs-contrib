---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewExportReportPostRequestBody()
displayName := "Export 5"
requestBody.SetDisplayName(&displayName) 
exportCriteria := graphmodels.PARTIALLYINDEXED_EXPORTCRITERIA 
requestBody.SetExportCriteria(&exportCriteria) 
exportLocation := graphmodels.RESPONSIVELOCATIONS_EXPORTLOCATION 
requestBody.SetExportLocation(&exportLocation) 
additionalOptions := graphmodels.CLOUDATTACHMENTS_ADDITIONALOPTIONS 
requestBody.SetAdditionalOptions(&additionalOptions) 
cloudAttachmentVersion := graphmodels.ALL_CLOUDATTACHMENTVERSION 
requestBody.SetCloudAttachmentVersion(&cloudAttachmentVersion) 
additionalData := map[string]interface{}{
	"doucmentVersion" : "recent100", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Searches().ByEdiscoverySearchId("ediscoverySearch-id").MicrosoftGraphSecurityExportReport().Post(context.Background(), requestBody, nil)


```
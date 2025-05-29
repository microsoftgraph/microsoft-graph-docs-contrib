---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemProcessContentPostRequestBody()
contentToProcess := graphmodels.NewProcessContentRequest()


processContentMetadataBase := graphmodels.NewProcessContentMetadataBase()
odataType := "microsoft.graph.processFileMetadata"
processContentMetadataBase.SetOdataType(&odataType) 
identifier := "91e1ca70-6e5b-4120-abf0-472034ba05c3"
processContentMetadataBase.SetIdentifier(&identifier) 
content := graphmodels.NewContentBase()
odataType := "microsoft.graph.binaryContent"
content.SetOdataType(&odataType) 
additionalData := map[string]interface{}{
	"data" : "<some-binary-data>", 
}
content.SetAdditionalData(additionalData)
processContentMetadataBase.SetContent(content)
name := "Example.docx"
processContentMetadataBase.SetName(&name) 
createdDateTime , err := time.Parse(time.RFC3339, "2024-07-23T01:31:40.2020463Z")
processContentMetadataBase.SetCreatedDateTime(&createdDateTime) 
correlationId := "54689"
processContentMetadataBase.SetCorrelationId(&correlationId) 
sequenceNumber := int64(1)
processContentMetadataBase.SetSequenceNumber(&sequenceNumber) 
length := int64(17352)
processContentMetadataBase.SetLength(&length) 
isTruncated := false
processContentMetadataBase.SetIsTruncated(&isTruncated) 
additionalData := map[string]interface{}{
	"updatedDateTime" : "2024-09-17T13:45:21.0000000Z", 
	"ownerId" : "ffe1ca70-6e5b-4120-abf0-472034ba05d4", 
customProperties := graph.New()
department := "Finance"
customProperties.SetDepartment(&department) 
reviewerName := "John Smith"
customProperties.SetReviewerName(&reviewerName) 
	processContentMetadataBase.SetCustomProperties(customProperties)
}
processContentMetadataBase.SetAdditionalData(additionalData)

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentToProcess.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADFILE_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
additionalData := map[string]interface{}{
	"applicationLocation" : "bing.com", 
}
activityMetadata.SetAdditionalData(additionalData)
contentToProcess.SetActivityMetadata(activityMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "ContosoIsvApplication"
integratedAppMetadata.SetName(&name) 
version := "1.2"
integratedAppMetadata.SetVersion(&version) 
contentToProcess.SetIntegratedAppMetadata(integratedAppMetadata)
additionalData := map[string]interface{}{
deviceMetadata := graph.New()
deviceType := "unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
operatingSystemSpecifications := graph.New()
operatingSystemPlatform := "windows"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "10.0.2.4"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
	deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
	contentToProcess.SetDeviceMetadata(deviceMetadata)
}
contentToProcess.SetAdditionalData(additionalData)
requestBody.SetContentToProcess(contentToProcess)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
processContent, err := graphClient.Me().DataSecurityAndGovernance().ProcessContent().Post(context.Background(), requestBody, nil)


```
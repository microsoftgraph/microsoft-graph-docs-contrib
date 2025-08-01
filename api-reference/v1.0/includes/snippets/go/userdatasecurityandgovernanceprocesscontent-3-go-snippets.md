---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewProcessContentPostRequestBody()
contentToProcess := graphmodels.NewProcessContentRequest()


processContentMetadataBase := graphmodels.NewProcessFileMetadata()
identifier := "f7af180f-dc2e-467c-9719-757e1c61eabf"
processContentMetadataBase.SetIdentifier(&identifier) 
content := graphmodels.NewTextContent()
data := "Base64 encoded content"
content.SetData(&data) 
processContentMetadataBase.SetContent(content)
name := "Test File.docx"
processContentMetadataBase.SetName(&name) 
correlationId := "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822"
processContentMetadataBase.SetCorrelationId(&correlationId) 
createdDateTime , err := time.Parse(time.RFC3339, "2024-07-23T01:31:40.2020463Z")
processContentMetadataBase.SetCreatedDateTime(&createdDateTime) 
modifiedDateTime , err := time.Parse(time.RFC3339, "2024-09-17T13:45:21.0000000Z")
processContentMetadataBase.SetModifiedDateTime(&modifiedDateTime) 
correlationId := "9d84223c-521c-42f4-8f35-3cdeabe515d3"
processContentMetadataBase.SetCorrelationId(&correlationId) 
length := int64(17352)
processContentMetadataBase.SetLength(&length) 
isTruncated := false
processContentMetadataBase.SetIsTruncated(&isTruncated) 
ownerId := "ffe1ca70-6e5b-4120-abf0-472034ba05d4"
processContentMetadataBase.SetOwnerId(&ownerId) 
customProperties := graphmodels.NewCustomMetadataDictionary()
additionalData := map[string]interface{}{
	"Department" : "Finance", 
	"ReviewerName" : "John Smith", 
}
customProperties.SetAdditionalData(additionalData)
processContentMetadataBase.SetCustomProperties(customProperties)

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentToProcess.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADFILE_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentToProcess.SetActivityMetadata(activityMetadata)
deviceMetadata := graphmodels.NewDeviceMetadata()
deviceType := "unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
operatingSystemSpecifications := graphmodels.NewOperatingSystemSpecifications()
operatingSystemPlatform := "Windows"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "11.1"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
contentToProcess.SetDeviceMetadata(deviceMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "Network Proxy App"
integratedAppMetadata.SetName(&name) 
version := "1.0.0"
integratedAppMetadata.SetVersion(&version) 
contentToProcess.SetIntegratedAppMetadata(integratedAppMetadata)
protectedAppMetadata := graphmodels.NewProtectedApplicationMetadata()
name := "My App"
protectedAppMetadata.SetName(&name) 
version := "0.1"
protectedAppMetadata.SetVersion(&version) 
applicationLocation := graphmodels.NewPolicyLocationUrl()
value := "https://gemini.google.com"
applicationLocation.SetValue(&value) 
protectedAppMetadata.SetApplicationLocation(applicationLocation)
contentToProcess.SetProtectedAppMetadata(protectedAppMetadata)
requestBody.SetContentToProcess(contentToProcess)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
processContent, err := graphClient.Users().ByUserId("user-id").DataSecurityAndGovernance().ProcessContent().Post(context.Background(), requestBody, nil)


```
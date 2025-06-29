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


processContentMetadataBase := graphmodels.NewProcessConversationMetadata()
identifier := "f7af180f-dc2e-467c-9719-757e1c61eabf"
processContentMetadataBase.SetIdentifier(&identifier) 
content := graphmodels.NewBinaryContent()
data := []byte("base64 encoded content")
content.SetData(&data) 
processContentMetadataBase.SetContent(content)
name := "Some name"
processContentMetadataBase.SetName(&name) 
correlationId := "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822"
processContentMetadataBase.SetCorrelationId(&correlationId) 

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentToProcess.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADFILE_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentToProcess.SetActivityMetadata(activityMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "Some integrated app name"
integratedAppMetadata.SetName(&name) 
version := "1.0.0"
integratedAppMetadata.SetVersion(&version) 
contentToProcess.SetIntegratedAppMetadata(integratedAppMetadata)
protectedAppMetadata := graphmodels.NewProtectedApplicationMetadata()
applicationLocation := graphmodels.NewPolicyLocationUrl()
value := "https://gemini.google.com"
applicationLocation.SetValue(&value) 
protectedAppMetadata.SetApplicationLocation(applicationLocation)
contentToProcess.SetProtectedAppMetadata(protectedAppMetadata)
additionalData := map[string]interface{}{
deviceMetadata := graph.New()
deviceType := "Unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
	ipAddress := null
deviceMetadata.SetIpAddress(&ipAddress) 
operatingSystemSpecifications := graph.New()
operatingSystemPlatform := "Windows"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "11.1"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
	deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
	contentToProcess.SetDeviceMetadata(deviceMetadata)
}
contentToProcess.SetAdditionalData(additionalData)
requestBody.SetContentToProcess(contentToProcess)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
processContent, err := graphClient.Me().DataSecurityAndGovernance().ProcessContent().Post(context.Background(), requestBody, nil)


```
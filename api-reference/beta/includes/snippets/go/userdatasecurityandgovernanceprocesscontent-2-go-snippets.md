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


processContentMetadataBase := graphmodels.NewProcessConversationMetadata()
identifier := "f7af180f-dc2e-467c-9719-757e1c61eabf"
processContentMetadataBase.SetIdentifier(&identifier) 
content := graphmodels.NewTextContent()
data := "some data"
content.SetData(&data) 
processContentMetadataBase.SetContent(content)
correlationId := "d63eafd2-e3a9-4c1a-b726-a2e9b9d95811"
processContentMetadataBase.SetCorrelationId(&correlationId) 
sequenceNumber := int64(0)
processContentMetadataBase.SetSequenceNumber(&sequenceNumber) 
name := "Test Content"
processContentMetadataBase.SetName(&name) 

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentToProcess.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADTEXT_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentToProcess.SetActivityMetadata(activityMetadata)
deviceMetadata := graphmodels.NewDeviceMetadata()
deviceType := "unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
ipAddress := null
deviceMetadata.SetIpAddress(&ipAddress) 
operatingSystemSpecifications := graphmodels.NewOperatingSystemSpecifications()
operatingSystemPlatform := "Windows"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "11.1"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
contentToProcess.SetDeviceMetadata(deviceMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "My Entra App"
integratedAppMetadata.SetName(&name) 
version := "0.1"
integratedAppMetadata.SetVersion(&version) 
contentToProcess.SetIntegratedAppMetadata(integratedAppMetadata)
protectedAppMetadata := graphmodels.NewProtectedApplicationMetadata()
name := "My Entra App"
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
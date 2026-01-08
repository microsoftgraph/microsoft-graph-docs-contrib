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

requestBody := graphusers.NewItemProcessContentPostRequestBody()
contentToProcess := graphmodels.NewProcessContentRequest()


processContentMetadataBase := graphmodels.NewProcessConversationMetadata()
identifier := "07785517-9081-4fe7-a9dc-85bcdf5e9075"
processContentMetadataBase.SetIdentifier(&identifier) 
content := graphmodels.NewTextContent()
data := "Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052"
content.SetData(&data) 
processContentMetadataBase.SetContent(content)
name := "PC Purview API Explorer message"
processContentMetadataBase.SetName(&name) 
correlationId := "d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d"
processContentMetadataBase.SetCorrelationId(&correlationId) 
sequenceNumber := int64(0)
processContentMetadataBase.SetSequenceNumber(&sequenceNumber) 
isTruncated := false
processContentMetadataBase.SetIsTruncated(&isTruncated) 
createdDateTime , err := time.Parse(time.RFC3339, "2025-05-27T17:23:20")
processContentMetadataBase.SetCreatedDateTime(&createdDateTime) 
modifiedDateTime , err := time.Parse(time.RFC3339, "2025-05-27T17:23:20")
processContentMetadataBase.SetModifiedDateTime(&modifiedDateTime) 

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentToProcess.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADTEXT_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentToProcess.SetActivityMetadata(activityMetadata)
deviceMetadata := graphmodels.NewDeviceMetadata()
deviceType := "Unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
operatingSystemSpecifications := graphmodels.NewOperatingSystemSpecifications()
operatingSystemPlatform := "Windows 11"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "10.0.26100.0"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
ipAddress := "127.0.0.1"
deviceMetadata.SetIpAddress(&ipAddress) 
contentToProcess.SetDeviceMetadata(deviceMetadata)
protectedAppMetadata := graphmodels.NewProtectedApplicationMetadata()
name := "PC Purview API Explorer"
protectedAppMetadata.SetName(&name) 
version := "0.2"
protectedAppMetadata.SetVersion(&version) 
applicationLocation := graphmodels.NewPolicyLocationApplication()
value := "83ef208a-0396-4893-9d4f-d36efbffc8bd"
applicationLocation.SetValue(&value) 
protectedAppMetadata.SetApplicationLocation(applicationLocation)
contentToProcess.SetProtectedAppMetadata(protectedAppMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "PC Purview API Explorer"
integratedAppMetadata.SetName(&name) 
version := "0.2"
integratedAppMetadata.SetVersion(&version) 
contentToProcess.SetIntegratedAppMetadata(integratedAppMetadata)
requestBody.SetContentToProcess(contentToProcess)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
processContent, err := graphClient.Me().DataSecurityAndGovernance().ProcessContent().Post(context.Background(), requestBody, nil)


```
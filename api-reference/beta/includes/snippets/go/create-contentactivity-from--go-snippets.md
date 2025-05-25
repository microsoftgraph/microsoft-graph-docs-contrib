---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewContentActivity()
contentMetadata := graphmodels.NewProcessContentRequest()


processContentMetadataBase := graphmodels.NewProcessConversationMetadata()
identifier := "68fa951a-898a-4427-8e9e-6f8c05e9fe2b"
processContentMetadataBase.SetIdentifier(&identifier) 
name := "API Explorer message"
processContentMetadataBase.SetName(&name) 
correlationId := "559a2343-7aa2-4912-93fe-72c47b2706ed"
processContentMetadataBase.SetCorrelationId(&correlationId) 
isTruncated := false
processContentMetadataBase.SetIsTruncated(&isTruncated) 
createdDateTime , err := time.Parse(time.RFC3339, "2025-04-28T20:17:55")
processContentMetadataBase.SetCreatedDateTime(&createdDateTime) 
modifiedDateTime , err := time.Parse(time.RFC3339, "2025-04-28T20:17:55")
processContentMetadataBase.SetModifiedDateTime(&modifiedDateTime) 
additionalData := map[string]interface{}{
	"sequenceNo" : int32(0) , 
}
processContentMetadataBase.SetAdditionalData(additionalData)

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentMetadata.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.UPLOADTEXT_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentMetadata.SetActivityMetadata(activityMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "API Explorer"
integratedAppMetadata.SetName(&name) 
version := "0.1"
integratedAppMetadata.SetVersion(&version) 
contentMetadata.SetIntegratedAppMetadata(integratedAppMetadata)
additionalData := map[string]interface{}{
deviceMetadata := graph.New()
deviceType := "unmanaged"
deviceMetadata.SetDeviceType(&deviceType) 
operatingSystemSpecifications := graph.New()
operatingSystemPlatform := "Windows 11"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "10.0.26100.0"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
	deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
	contentMetadata.SetDeviceMetadata(deviceMetadata)
	"userId" : "7c2f8f10-cba8-4a8d-9449-db4b76d17390", 
	"scopeIdentifier" : "0", 
}
contentMetadata.SetAdditionalData(additionalData)
requestBody.SetContentMetadata(contentMetadata)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contentActivities, err := graphClient.Me().DataSecurityAndGovernance().Activities().ContentActivities().Post(context.Background(), requestBody, nil)


```
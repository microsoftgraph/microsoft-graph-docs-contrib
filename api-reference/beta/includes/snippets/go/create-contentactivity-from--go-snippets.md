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
identifier := "d6ab5054-e111-45c3-9fba-9f2a59c9bbf8"
processContentMetadataBase.SetIdentifier(&identifier) 
name := "CA Purview API Explorer message"
processContentMetadataBase.SetName(&name) 
correlationId := "edfb7f88-b963-4ef2-8b30-5cb90f80e01e"
processContentMetadataBase.SetCorrelationId(&correlationId) 
sequenceNumber := int64(0)
processContentMetadataBase.SetSequenceNumber(&sequenceNumber) 
isTruncated := false
processContentMetadataBase.SetIsTruncated(&isTruncated) 
createdDateTime , err := time.Parse(time.RFC3339, "2025-05-28T20:20:37")
processContentMetadataBase.SetCreatedDateTime(&createdDateTime) 
modifiedDateTime , err := time.Parse(time.RFC3339, "2025-05-28T20:20:37")
processContentMetadataBase.SetModifiedDateTime(&modifiedDateTime) 

contentEntries := []graphmodels.ProcessContentMetadataBaseable {
	processContentMetadataBase,
}
contentMetadata.SetContentEntries(contentEntries)
activityMetadata := graphmodels.NewActivityMetadata()
activity := graphmodels.DOWNLOADTEXT_USERACTIVITYTYPE 
activityMetadata.SetActivity(&activity) 
contentMetadata.SetActivityMetadata(activityMetadata)
integratedAppMetadata := graphmodels.NewIntegratedApplicationMetadata()
name := "CA Purview API Explorer"
integratedAppMetadata.SetName(&name) 
version := "0.1"
integratedAppMetadata.SetVersion(&version) 
contentMetadata.SetIntegratedAppMetadata(integratedAppMetadata)
additionalData := map[string]interface{}{
deviceMetadata := graph.New()
operatingSystemSpecifications := graph.New()
operatingSystemPlatform := "Windows 11"
operatingSystemSpecifications.SetOperatingSystemPlatform(&operatingSystemPlatform) 
operatingSystemVersion := "10.0.26100.0"
operatingSystemSpecifications.SetOperatingSystemVersion(&operatingSystemVersion) 
	deviceMetadata.SetOperatingSystemSpecifications(operatingSystemSpecifications)
	contentMetadata.SetDeviceMetadata(deviceMetadata)
	"userId" : "7c497f10-cba8-4a8d-9449-db4b76d1ef80", 
	"scopeIdentifier" : "0", 
}
contentMetadata.SetAdditionalData(additionalData)
requestBody.SetContentMetadata(contentMetadata)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
contentActivities, err := graphClient.Me().DataSecurityAndGovernance().Activities().ContentActivities().Post(context.Background(), requestBody, nil)


```
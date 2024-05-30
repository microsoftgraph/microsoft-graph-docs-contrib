---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMessage()


multiValueLegacyExtendedProperty := graphmodels.NewMultiValueLegacyExtendedProperty()
id := "StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette"
multiValueLegacyExtendedProperty.SetId(&id) 
value := []string {
	"Green",
	"Aqua",
	"Blue",
}
multiValueLegacyExtendedProperty.SetValue(value)

multiValueExtendedProperties := []graphmodels.MultiValueLegacyExtendedPropertyable {
	multiValueLegacyExtendedProperty,
}
requestBody.SetMultiValueExtendedProperties(multiValueExtendedProperties)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Me().Messages().ByMessageId("message-id").Patch(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

messages, err := graphClient.Me().Messages().ByMessageId("message-id").Patch(context.Background(), requestBody, nil)


```
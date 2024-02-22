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


singleValueLegacyExtendedProperty := graphmodels.NewSingleValueLegacyExtendedProperty()
id := "String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color"
singleValueLegacyExtendedProperty.SetId(&id) 
value := "Green"
singleValueLegacyExtendedProperty.SetValue(&value) 

singleValueExtendedProperties := []graphmodels.SingleValueLegacyExtendedPropertyable {
	singleValueLegacyExtendedProperty,
}
requestBody.SetSingleValueExtendedProperties(singleValueExtendedProperties)

messages, err := graphClient.Me().Messages().ByMessageId("message-id").Patch(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLOBApp/1.0")

configuration := &graphusers.UserItemSecurityInformationProtectionSensitivityLabelsMicrosoft.graph.security.extractContentLabelRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewExtractContentLabelPostRequestBody()
contentInfo := graphmodelssecurity.NewContentInfo()
identifier := "MyDoc.docx"
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 


keyValuePair := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled"
keyValuePair.SetName(&name) 
value := "True"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method"
keyValuePair1.SetName(&name) 
value := "Standard"
keyValuePair1.SetValue(&value) 
keyValuePair2 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate"
keyValuePair2.SetName(&name) 
value := "1/1/0001 12:00:00 AM"
keyValuePair2.SetValue(&value) 
keyValuePair3 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId"
keyValuePair3.SetName(&name) 
value := "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
keyValuePair3.SetValue(&value) 
keyValuePair4 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name"
keyValuePair4.SetName(&name) 
value := "LabelScopedToBob_Tests"
keyValuePair4.SetValue(&value) 
keyValuePair5 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits"
keyValuePair5.SetName(&name) 
value := "0"
keyValuePair5.SetValue(&value) 
keyValuePair6 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ActionId"
keyValuePair6.SetName(&name) 
value := "00000000-0000-0000-0000-000000000000"
keyValuePair6.SetValue(&value) 

metadata := []graphmodelssecurity.KeyValuePairable {
	keyValuePair,
	keyValuePair1,
	keyValuePair2,
	keyValuePair3,
	keyValuePair4,
	keyValuePair5,
	keyValuePair6,
}
contentInfo.SetMetadata(metadata)
additionalData := map[string]interface{}{
	"format" : "default", 
}
contentInfo.SetAdditionalData(additionalData)
requestBody.SetContentInfo(contentInfo)

result, err := graphClient.Users().ByUserId("user-id").Security().InformationProtection().SensitivityLabels().MicrosoftGraphSecurityExtractContentLabel().Post(context.Background(), requestBody, configuration)


```
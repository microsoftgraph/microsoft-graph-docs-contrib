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

configuration := &graphusers.UserItemSecurityInformationProtectionSensitivityLabelsMicrosoft.graph.security.evaluateRemovalRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewEvaluateRemovalPostRequestBody()
contentInfo := graphmodelssecurity.NewContentInfo()
identifier := null
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 


keyValuePair := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled"
keyValuePair.SetName(&name) 
value := "True"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method"
keyValuePair1.SetName(&name) 
value := "Standard"
keyValuePair1.SetValue(&value) 
keyValuePair2 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate"
keyValuePair2.SetName(&name) 
value := "1/1/0001 12:00:00 AM"
keyValuePair2.SetValue(&value) 
keyValuePair3 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId"
keyValuePair3.SetName(&name) 
value := "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
keyValuePair3.SetValue(&value) 
keyValuePair4 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name"
keyValuePair4.SetName(&name) 
value := "LabelScopedToBob_Tests"
keyValuePair4.SetValue(&value) 
keyValuePair5 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits"
keyValuePair5.SetName(&name) 
value := "0"
keyValuePair5.SetValue(&value) 
keyValuePair6 := graphmodelssecurity.NewKeyValuePair()
name := "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId"
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
requestBody.SetContentInfo(contentInfo)
downgradeJustification := graphmodelssecurity.NewDowngradeJustification()
justificationMessage := "The information has been declassified."
downgradeJustification.SetJustificationMessage(&justificationMessage) 
isDowngradeJustified := true
downgradeJustification.SetIsDowngradeJustified(&isDowngradeJustified) 
requestBody.SetDowngradeJustification(downgradeJustification)

result, err := graphClient.Users().ByUserId("user-id").Security().InformationProtection().SensitivityLabels().MicrosoftGraphSecurityEvaluateRemoval().Post(context.Background(), requestBody, configuration)


```
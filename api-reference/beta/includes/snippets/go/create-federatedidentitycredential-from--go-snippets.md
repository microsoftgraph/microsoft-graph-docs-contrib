---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"name": "testing02",
	"issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
	"subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
	"audiences":  []String {
		"api://AzureADTokenExchange",
	}
}
options := &msgraphsdk.FederatedIdentityCredentialRequestBuilderPostOptions{
	Body: requestBody,
}
applicationId := "application-id"
federatedIdentityCredentialId := "federatedIdentityCredential-id"
graphClient.ApplicationsById(&applicationId).FederatedIdentityCredentialsById(&federatedIdentityCredentialId).Post(options);


```
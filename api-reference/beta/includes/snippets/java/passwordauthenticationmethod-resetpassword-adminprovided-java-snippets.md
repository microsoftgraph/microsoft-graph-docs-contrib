---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.authentication.methods.item.resetpassword.ResetPasswordPostRequestBody resetPasswordPostRequestBody = new com.microsoft.graph.beta.users.item.authentication.methods.item.resetpassword.ResetPasswordPostRequestBody();
resetPasswordPostRequestBody.setNewPassword("Cuyo5459");
var result = graphClient.users().byUserId("{user-id}").authentication().methods().byAuthenticationMethodId("{authenticationMethod-id}").resetPassword().post(resetPasswordPostRequestBody);


```
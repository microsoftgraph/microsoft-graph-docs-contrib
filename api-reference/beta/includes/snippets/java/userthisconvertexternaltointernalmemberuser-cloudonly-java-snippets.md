---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.convertexternaltointernalmemberuser.ConvertExternalToInternalMemberUserPostRequestBody convertExternalToInternalMemberUserPostRequestBody = new com.microsoft.graph.beta.users.item.convertexternaltointernalmemberuser.ConvertExternalToInternalMemberUserPostRequestBody();
convertExternalToInternalMemberUserPostRequestBody.setUserPrincipalName("AdeleVance@contoso.com");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setPassword("Zdi087#2jhkahf");
passwordProfile.setForceChangePasswordNextSignIn(true);
convertExternalToInternalMemberUserPostRequestBody.setPasswordProfile(passwordProfile);
var result = graphClient.users().byUserId("{user-id}").convertExternalToInternalMemberUser().post(convertExternalToInternalMemberUserPostRequestBody);


```
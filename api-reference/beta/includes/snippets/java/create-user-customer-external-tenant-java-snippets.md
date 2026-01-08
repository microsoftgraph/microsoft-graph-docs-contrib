---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
user.setDisplayName("Test User");
LinkedList<ObjectIdentity> identities = new LinkedList<ObjectIdentity>();
ObjectIdentity objectIdentity = new ObjectIdentity();
objectIdentity.setSignInType("emailAddress");
objectIdentity.setIssuer("contoso.onmicrosoft.com");
objectIdentity.setIssuerAssignedId("adelev@adatum.com");
identities.add(objectIdentity);
user.setIdentities(identities);
user.setMail("adelev@adatum.com");
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setPassword("passwordValue");
passwordProfile.setForceChangePasswordNextSignIn(true);
user.setPasswordProfile(passwordProfile);
user.setPasswordPolicies("DisablePasswordExpiration");
User result = graphClient.users().post(user);


```
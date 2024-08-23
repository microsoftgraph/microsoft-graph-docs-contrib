---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
user.setDisplayName("John Smith");
LinkedList<ObjectIdentity> identities = new LinkedList<ObjectIdentity>();
ObjectIdentity objectIdentity = new ObjectIdentity();
objectIdentity.setSignInType("userName");
objectIdentity.setIssuer("contoso.com");
objectIdentity.setIssuerAssignedId("johnsmith");
identities.add(objectIdentity);
ObjectIdentity objectIdentity1 = new ObjectIdentity();
objectIdentity1.setSignInType("emailAddress");
objectIdentity1.setIssuer("contoso.com");
objectIdentity1.setIssuerAssignedId("jsmith@yahoo.com");
identities.add(objectIdentity1);
ObjectIdentity objectIdentity2 = new ObjectIdentity();
objectIdentity2.setSignInType("federated");
objectIdentity2.setIssuer("facebook.com");
objectIdentity2.setIssuerAssignedId("5eecb0cd");
identities.add(objectIdentity2);
user.setIdentities(identities);
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.setPassword("password-value");
passwordProfile.setForceChangePasswordNextSignIn(false);
user.setPasswordProfile(passwordProfile);
user.setPasswordPolicies("DisablePasswordExpiration");
User result = graphClient.users().post(user);


```
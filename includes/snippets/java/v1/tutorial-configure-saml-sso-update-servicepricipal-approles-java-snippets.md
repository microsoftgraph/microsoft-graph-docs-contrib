---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
LinkedList<AppRole> appRoles = new LinkedList<AppRole>();
AppRole appRole = new AppRole();
LinkedList<String> allowedMemberTypes = new LinkedList<String>();
allowedMemberTypes.add("User");
appRole.setAllowedMemberTypes(allowedMemberTypes);
appRole.setDescription("User");
appRole.setDisplayName("User");
appRole.setId(UUID.fromString("8774f594-1d59-4279-b9d9-59ef09a23530"));
appRole.setIsEnabled(true);
appRole.setOrigin("Application");
appRole.setValue(null);
appRoles.add(appRole);
AppRole appRole1 = new AppRole();
LinkedList<String> allowedMemberTypes1 = new LinkedList<String>();
allowedMemberTypes1.add("User");
appRole1.setAllowedMemberTypes(allowedMemberTypes1);
appRole1.setDescription("msiam_access");
appRole1.setDisplayName("msiam_access");
appRole1.setId(UUID.fromString("e7f1a7f3-9eda-48e0-9963-bd67bf531afd"));
appRole1.setIsEnabled(true);
appRole1.setOrigin("Application");
appRole1.setValue(null);
appRoles.add(appRole1);
AppRole appRole2 = new AppRole();
LinkedList<String> allowedMemberTypes2 = new LinkedList<String>();
allowedMemberTypes2.add("User");
appRole2.setAllowedMemberTypes(allowedMemberTypes2);
appRole2.setDescription("Admin,WAAD");
appRole2.setDisplayName("Admin,WAAD");
appRole2.setId(UUID.fromString("3a84e31e-bffa-470f-b9e6-754a61e4dc63"));
appRole2.setIsEnabled(true);
appRole2.setValue("arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD");
appRoles.add(appRole2);
AppRole appRole3 = new AppRole();
LinkedList<String> allowedMemberTypes3 = new LinkedList<String>();
allowedMemberTypes3.add("User");
appRole3.setAllowedMemberTypes(allowedMemberTypes3);
appRole3.setDescription("Finance,WAAD");
appRole3.setDisplayName("Finance,WAAD");
appRole3.setId(UUID.fromString("7a960000-ded3-455b-8c04-4f2ace00319b"));
appRole3.setIsEnabled(true);
appRole3.setValue("arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD");
appRoles.add(appRole3);
servicePrincipal.setAppRoles(appRoles);
ServicePrincipal result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").patch(servicePrincipal);


```
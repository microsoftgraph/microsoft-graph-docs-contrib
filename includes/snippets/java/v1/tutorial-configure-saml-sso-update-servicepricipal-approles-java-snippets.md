---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
LinkedList<AppRole> appRolesList = new LinkedList<AppRole>();
AppRole appRoles = new AppRole();
LinkedList<String> allowedMemberTypesList = new LinkedList<String>();
allowedMemberTypesList.add("User");
appRoles.allowedMemberTypes = allowedMemberTypesList;
appRoles.displayName = "User";
appRoles.id = UUID.fromString("8774f594-1d59-4279-b9d9-59ef09a23530");
appRoles.isEnabled = true;
appRoles.description = "User";
appRoles.value = null;
appRoles.origin = "Application";
appRolesList.add(appRoles);
AppRole appRoles1 = new AppRole();
LinkedList<String> allowedMemberTypesList1 = new LinkedList<String>();
allowedMemberTypesList1.add("User");
appRoles1.allowedMemberTypes = allowedMemberTypesList1;
appRoles1.displayName = "msiam_access";
appRoles1.id = UUID.fromString("e7f1a7f3-9eda-48e0-9963-bd67bf531afd");
appRoles1.isEnabled = true;
appRoles1.description = "msiam_access";
appRoles1.value = null;
appRoles1.origin = "Application";
appRolesList.add(appRoles1);
AppRole appRoles2 = new AppRole();
LinkedList<String> allowedMemberTypesList2 = new LinkedList<String>();
allowedMemberTypesList2.add("User");
appRoles2.allowedMemberTypes = allowedMemberTypesList2;
appRoles2.description = "Admin,WAAD";
appRoles2.displayName = "Admin,WAAD";
appRoles2.id = UUID.fromString("3a84e31e-bffa-470f-b9e6-754a61e4dc63");
appRoles2.isEnabled = true;
appRoles2.value = "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD";
appRolesList.add(appRoles2);
AppRole appRoles3 = new AppRole();
LinkedList<String> allowedMemberTypesList3 = new LinkedList<String>();
allowedMemberTypesList3.add("User");
appRoles3.allowedMemberTypes = allowedMemberTypesList3;
appRoles3.description = "Finance,WAAD";
appRoles3.displayName = "Finance,WAAD";
appRoles3.id = UUID.fromString("7a960000-ded3-455b-8c04-4f2ace00319b");
appRoles3.isEnabled = true;
appRoles3.value = "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD";
appRolesList.add(appRoles3);
servicePrincipal.appRoles = appRolesList;

graphClient.serviceprincipals("a750f6cf-2319-464a-bcc3-456926736a91")
	.buildRequest()
	.patch(servicePrincipal);

```
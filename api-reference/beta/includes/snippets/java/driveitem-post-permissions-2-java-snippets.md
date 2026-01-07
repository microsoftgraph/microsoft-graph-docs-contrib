---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
SharePointIdentitySet grantedToIdentitiesV2 = new SharePointIdentitySet();
SharePointIdentity siteGroup = new SharePointIdentity();
siteGroup.setId("10");
siteGroup.setDisplayName("Internal Collaborators");
grantedToIdentitiesV2.setSiteGroup(siteGroup);
permission.setGrantedToIdentitiesV2(grantedToIdentitiesV2);
LinkedList<String> roles = new LinkedList<String>();
roles.add("write");
permission.setRoles(roles);
Permission result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").permissions().post(permission);


```
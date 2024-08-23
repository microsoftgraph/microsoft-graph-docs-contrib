---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ScopedRoleMembership scopedRoleMembership = new ScopedRoleMembership();
scopedRoleMembership.setRoleId("roleId-value");
Identity roleMemberInfo = new Identity();
roleMemberInfo.setId("id-value");
scopedRoleMembership.setRoleMemberInfo(roleMemberInfo);
ScopedRoleMembership result = graphClient.directory().administrativeUnits().byAdministrativeUnitId("{administrativeUnit-id}").scopedRoleMembers().post(scopedRoleMembership);


```
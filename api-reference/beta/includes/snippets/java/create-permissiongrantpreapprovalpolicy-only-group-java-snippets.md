---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionGrantPreApprovalPolicy permissionGrantPreApprovalPolicy = new PermissionGrantPreApprovalPolicy();
LinkedList<PreApprovalDetail> conditions = new LinkedList<PreApprovalDetail>();
PreApprovalDetail preApprovalDetail = new PreApprovalDetail();
preApprovalDetail.setScopeType(ResourceScopeType.Group);
AllScopeSensitivityLabels sensitivityLabels = new AllScopeSensitivityLabels();
sensitivityLabels.setOdataType("#microsoft.graph.allScopeSensitivityLabels");
sensitivityLabels.setLabelKind(LabelKind.All);
preApprovalDetail.setSensitivityLabels(sensitivityLabels);
PreApprovedPermissions permissions = new PreApprovedPermissions();
permissions.setOdataType("#microsoft.graph.allPermissionsOnResourceApp");
permissions.setPermissionKind(PermissionKind.AllPermissionsOnResourceApp);
permissions.setPermissionType(PermissionType.Application);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("resourceApplicationId", "00000003-0000-0000-c000-000000000000");
permissions.setAdditionalData(additionalData);
preApprovalDetail.setPermissions(permissions);
conditions.add(preApprovalDetail);
permissionGrantPreApprovalPolicy.setConditions(conditions);
PermissionGrantPreApprovalPolicy result = graphClient.policies().permissionGrantPreApprovalPolicies().post(permissionGrantPreApprovalPolicy);


```
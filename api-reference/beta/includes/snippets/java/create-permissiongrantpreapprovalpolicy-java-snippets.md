---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionGrantPreApprovalPolicy permissionGrantPreApprovalPolicy = new PermissionGrantPreApprovalPolicy();
LinkedList<PreApprovalDetail> conditions = new LinkedList<PreApprovalDetail>();
PreApprovalDetail preApprovalDetail = new PreApprovalDetail();
preApprovalDetail.setScopeType(ResourceScopeType.Chat);
AllScopeSensitivityLabels sensitivityLabels = new AllScopeSensitivityLabels();
sensitivityLabels.setOdataType("#microsoft.graph.allScopeSensitivityLabels");
sensitivityLabels.setLabelKind(LabelKind.All);
preApprovalDetail.setSensitivityLabels(sensitivityLabels);
AllPreApprovedPermissions permissions = new AllPreApprovedPermissions();
permissions.setOdataType("#microsoft.graph.allPreApprovedPermissions");
permissions.setPermissionKind(PermissionKind.All);
permissions.setPermissionType(PermissionType.Application);
preApprovalDetail.setPermissions(permissions);
conditions.add(preApprovalDetail);
PreApprovalDetail preApprovalDetail1 = new PreApprovalDetail();
preApprovalDetail1.setScopeType(ResourceScopeType.Group);
EnumeratedPreApprovedPermissions permissions1 = new EnumeratedPreApprovedPermissions();
permissions1.setOdataType("#microsoft.graph.enumeratedPreApprovedPermissions");
permissions1.setPermissionKind(PermissionKind.Enumerated);
permissions1.setPermissionType(PermissionType.Application);
permissions1.setResourceApplicationId("00000003-0000-0000-c000-000000000000");
LinkedList<String> permissionIds = new LinkedList<String>();
permissionIds.add("134483aa-3dda-4d65-ac91-b8dda1417875");
permissionIds.add("9d33613d-f855-483b-bca7-ea63ac9f5485");
permissions1.setPermissionIds(permissionIds);
preApprovalDetail1.setPermissions(permissions1);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
EnumeratedScopeSensitivityLabels scopeSensitivityLabels = new EnumeratedScopeSensitivityLabels();
scopeSensitivityLabels.setOdataType("microsoft.graph.enumeratedScopeSensitivityLabels");
scopeSensitivityLabels.setLabelKind(LabelKind.Enumerated);
LinkedList<String> sensitivityLabels1 = new LinkedList<String>();
sensitivityLabels1.add("d9c43deb-f3e1-4422-9fd6-ccf22a3206b8");
sensitivityLabels1.add("c99dade2-aa54-4890-ac1c-a146fa26bd1e");
scopeSensitivityLabels.setSensitivityLabels(sensitivityLabels1);
additionalData.put("scopeSensitivityLabels", scopeSensitivityLabels);
preApprovalDetail1.setAdditionalData(additionalData);
conditions.add(preApprovalDetail1);
permissionGrantPreApprovalPolicy.setConditions(conditions);
PermissionGrantPreApprovalPolicy result = graphClient.policies().permissionGrantPreApprovalPolicies().post(permissionGrantPreApprovalPolicy);


```
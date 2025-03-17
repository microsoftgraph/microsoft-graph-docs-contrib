---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PermissionGrantPreApprovalPolicy permissionGrantPreApprovalPolicy = new PermissionGrantPreApprovalPolicy();
permissionGrantPreApprovalPolicy.setId("71ba13dc-5947-4e59-bcc5-0ad5c339a853");
permissionGrantPreApprovalPolicy.setDeletedDateTime(null);
LinkedList<PreApprovalDetail> conditions = new LinkedList<PreApprovalDetail>();
PreApprovalDetail preApprovalDetail = new PreApprovalDetail();
preApprovalDetail.setScopeType(ResourceScopeType.Chat);
EnumeratedScopeSensitivityLabels sensitivityLabels = new EnumeratedScopeSensitivityLabels();
sensitivityLabels.setOdataType("#microsoft.graph.enumeratedScopeSensitivityLabels");
sensitivityLabels.setLabelKind(LabelKind.Enumerated);
LinkedList<String> sensitivityLabels1 = new LinkedList<String>();
sensitivityLabels1.add("d9c43deb-f3e1-4422-9fd6-ccf22a3206b8");
sensitivityLabels.setSensitivityLabels(sensitivityLabels1);
preApprovalDetail.setSensitivityLabels(sensitivityLabels);
AllPreApprovedPermissions permissions = new AllPreApprovedPermissions();
permissions.setOdataType("#microsoft.graph.allPreApprovedPermissions");
permissions.setPermissionKind(PermissionKind.All);
permissions.setPermissionType(PermissionType.Application);
preApprovalDetail.setPermissions(permissions);
conditions.add(preApprovalDetail);
PreApprovalDetail preApprovalDetail1 = new PreApprovalDetail();
preApprovalDetail1.setScopeType(ResourceScopeType.Group);
AllScopeSensitivityLabels sensitivityLabels2 = new AllScopeSensitivityLabels();
sensitivityLabels2.setOdataType("#microsoft.graph.allScopeSensitivityLabels");
sensitivityLabels2.setLabelKind(LabelKind.All);
preApprovalDetail1.setSensitivityLabels(sensitivityLabels2);
EnumeratedPreApprovedPermissions permissions1 = new EnumeratedPreApprovedPermissions();
permissions1.setOdataType("#microsoft.graph.enumeratedPreApprovedPermissions");
permissions1.setPermissionKind(PermissionKind.Enumerated);
permissions1.setResourceApplicationId("00000003-0000-0000-c000-000000000000");
LinkedList<String> permissionIds = new LinkedList<String>();
permissionIds.add("134483aa-3dda-4d65-ac91-b8dda1417875");
permissionIds.add("9d33613d-f855-483b-bca7-ea63ac9f5485");
permissions1.setPermissionIds(permissionIds);
permissions1.setPermissionType(PermissionType.Application);
preApprovalDetail1.setPermissions(permissions1);
conditions.add(preApprovalDetail1);
permissionGrantPreApprovalPolicy.setConditions(conditions);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.context", "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity");
permissionGrantPreApprovalPolicy.setAdditionalData(additionalData);
PermissionGrantPreApprovalPolicy result = graphClient.policies().permissionGrantPreApprovalPolicies().byPermissionGrantPreApprovalPolicyId("{permissionGrantPreApprovalPolicy-id}").patch(permissionGrantPreApprovalPolicy);


```
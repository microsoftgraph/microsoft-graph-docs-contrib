---
title: "Create permissionGrantPreApprovalPolicy"
description: "Create a new permissionGrantPreApprovalPolicy object."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Create permissionGrantPreApprovalPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "policyroot_post_permissiongrantpreapprovalpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-post-permissiongrantpreapprovalpolicies-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-write](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/permissionGrantPreApprovalPolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.

You can specify the following properties when creating a **permissionGrantPreApprovalPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|conditions|[preApprovalDetail](../resources/preapprovaldetail.md) collection| A list of conditions that are preapproved in the policy. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object in the response body.

## Examples

### Example 1: Create a preapproval policy for both group and chat scope

In the following example:

- The condition for the `chat` resource type:
  - Indicates that all chats regardless of sensitivity labels are in scope
  - Specifies that all application permissions for all APIs are preapproved
- The condition for the `group` resource type:
  - Specifies two sensitivity labels that are in scope
  - Specifies two application permissions for the `00000003-0000-0000-c000-000000000000` resource app are preapproved

#### Request
<!-- {
  "blockType": "request",
  "name": "create_permissiongrantpreapprovalpolicy"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies
Content-Type: application/json

{
    "conditions": [
        {
            "scopeType": "chat",
            "sensitivityLabels": {
                "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
                "labelKind": "all"
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.allPreApprovedPermissions",
                "permissionKind": "all",
                "permissionType": "application"
            }
        },
        {
            "scopeType": "group",
            "scopeSensitivityLabels": {
                "@odata.type": "microsoft.graph.enumeratedScopeSensitivityLabels",
                "labelKind": "enumerated",
                "sensitivityLabels": [
                    "d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
                    "c99dade2-aa54-4890-ac1c-a146fa26bd1e"
                ]
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.enumeratedPreApprovedPermissions",
                "permissionKind": "enumerated",
                "permissionType": "application",
                "resourceApplicationId": "00000003-0000-0000-c000-000000000000",
                "permissionIds": [
                    "134483aa-3dda-4d65-ac91-b8dda1417875",
                    "9d33613d-f855-483b-bca7-ea63ac9f5485"
                ]
            }
        }
    ]
}
```


#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPreApprovalPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity",
    "id": "71ba13dc-5947-4e59-bcc5-0ad5c339a853",
    "deletedDateTime": null,
    "conditions": [
        {
            "scopeType": "chat",
            "sensitivityLabels": {
                "@odata.type": "#microsoft.graph.enumeratedScopeSensitivityLabels",
                "labelKind": "enumerated",
                "sensitivityLabels": [
                    "d9c43deb-f3e1-4422-9fd6-ccf22a3206b8",
                    "c99dade2-aa54-4890-ac1c-a146fa26bd1e"
                ]
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.allPreApprovedPermissions",
                "permissionKind": "all",
                "permissionType": "application"
            }
        },
        {
            "scopeType": "group",
            "sensitivityLabels": {
                "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
                "labelKind": "all"
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.enumeratedPreApprovedPermissions",
                "permissionKind": "enumerated",
                "resourceApplicationId": "00000003-0000-0000-c000-000000000000",
                "permissionIds": [
                    "134483aa-3dda-4d65-ac91-b8dda1417875",
                    "9d33613d-f855-483b-bca7-ea63ac9f5485"
                ],
                "permissionType": "application"
            }
        }
    ]
}
```

### Example 2: Create a preapproval policy for group scope and preapprove all permissions from a given API

#### Request
<!-- {
  "blockType": "request",
  "name": "create_permissiongrantpreapprovalpolicy_only_group"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies
Content-Type: application/json

{
    "conditions": [
        {
            "scopeType": "group",
            "sensitivityLabels": {
                "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
                "labelKind": "all"
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.allPermissionsOnResourceApp",
                "permissionKind": "allPermissionsOnResourceApp",
                "permissionType": "application",
                "resourceApplicationId": "00000003-0000-0000-c000-000000000000"
            }
        }
    ]
}
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPreApprovalPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity",
    "id": "81cc4c53-1333-47b3-9fa5-1963876e0c5c",
    "deletedDateTime": null,
    "conditions": [
        {
            "scopeType": "group",
            "sensitivityLabels": {
                "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
                "labelKind": "all"
            },
            "permissions": {
                "@odata.type": "#microsoft.graph.allPermissionsOnResourceApp",
                "permissionKind": "allPermissionsOnResourceApp",
                "permissionType": "application",
                "resourceApplicationId": "00000003-0000-0000-c000-000000000000"
            }
        }
    ]
}
```

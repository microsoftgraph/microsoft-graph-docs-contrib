---
title: "Get permissionGrantPreApprovalPolicy"
description: "Read the properties and relationships of a permissionGrantPreApprovalPolicy object."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Get permissionGrantPreApprovalPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissiongrantpreapprovalpolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissiongrantpreapprovalpolicy-get-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-read](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/permissionGrantPreApprovalPolicies/{id}
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_permissiongrantpreapprovalpolicies"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies/71ba13dc-5947-4e59-bcc5-0ad5c339a853
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionGrantPreApprovalPolicy"
}
-->
``` http
HTTP/1.1 200 OK
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

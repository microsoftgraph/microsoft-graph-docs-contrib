---
title: "List permissionGrantPreApprovalPolicies"
description: "Get the permissionGrantPreApprovalPolicy objects in the tenant."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.topic: reference
---

# List permissionGrantPreApprovalPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of permissionGrantPreApprovalPolicy objects in the tenant.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "policyroot_list_permissiongrantpreapprovalpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-list-permissiongrantpreapprovalpolicies-permissions.md)]

[!INCLUDE [rbac-permission-grant-preapproval-policy-read](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/permissionGrantPreApprovalPolicies
```

## Optional query parameters
This method does not support the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_permissiongrantpreapprovalpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/permissionGrantPreApprovalPolicies
```


### Response
>**Note:** The response object shown here might be shortened for readability.

In the following example:

- Policy ID `71ba13dc-5947-4e59-bcc5-0ad5c339a853` has the following settings:
  - The condition for the `chat` resource type:
    - Indicates that all chats regardless of sensitivity labels are in scope
    - Specifies that all application permissions for all APIs are preapproved
  - The condition for the `group` resource type:
    - Specifies two sensitivity labels that are in scope
    - Specifies **two** application permissions for the `00000003-0000-0000-c000-000000000000` resource app are preapproved

- Policy ID `bd4b701c-a54e-42b8-9f56-e4b4b229be3b` has the following settings:
  - The condition for the `group` resource type:
    - Indicates that all groups regardless of sensitivity labels are in scope
    - Specifies that **all** application permissions for the `00000003-0000-0000-c000-000000000000` resource app are preapproved

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permissionGrantPreApprovalPolicy)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies",
    "value": [
        {
            "id": "71ba13dc-5947-4e59-bcc5-0ad5c339a853",
            "deletedDateTime": null,
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
        },
        {
            "id": "bd4b701c-a54e-42b8-9f56-e4b4b229be3b",
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
    ]
}
```

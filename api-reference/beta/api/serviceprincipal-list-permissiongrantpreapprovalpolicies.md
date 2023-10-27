---
title: "List permissionGrantPreApprovalPolicies for a servicePrincipal"
description: "Retrieve the permissionGrantPreApprovalPolicy object from a servicePrincipal."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# List permissionGrantPreApprovalPolicies for a servicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object for the [servicePrincipal](../resources/serviceprincipal.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Application.Read.All and Policy.Read.PermissionGrant, Application.Read.All and Policy.ReadWrite.PermissionGrant|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application.Read.All and Policy.Read.PermissionGrant, Application.Read.All and Policy.ReadWrite.PermissionGrant|

[!INCLUDE [rbac-permission-grant-preapproval-policy-read](../includes/rbac-for-apis/rbac-permission-grant-preapproval-policy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{id}/permissionGrantPreApprovalPolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Don't supply a request body for this method.



## Response

If successful, this method returns a `200 OK` response code and a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) object in the response body.

## Examples


### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_get_permissionGrantPreApprovalPolicies"
}
-->
``` http
GET /servicePrincipals/{id}/permissionGrantPreApprovalPolicies/{id}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-get-permissiongrantpreapprovalpolicies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-get-permissiongrantpreapprovalpolicies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/permissionGrantPreApprovalPolicies/$entity",
    "id": "{ id }",
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

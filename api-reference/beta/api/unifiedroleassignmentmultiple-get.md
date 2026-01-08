---
title: "Get unifiedRoleAssignmentMultiple"
description: "Retrieve the properties and relationships of a unifiedRoleAssignmentMultiple object."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "apiPageType"
ms.date: 04/05/2024
ms.custom: sfi-ga-nochange
---

# Get unifiedRoleAssignmentMultiple

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object of an RBAC provider. 

The following RBAC providers are currently supported:
- Cloud PC 
- device management (Intune)
- Defender (Microsoft Defender XDR Unified RBAC)

For other Microsoft 365 applications (like Microsoft Entra ID), use [unifiedRoleAssignment](../resources/unifiedroleassignment.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### For Cloud PC provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-get-permissions.md)]

### For Device management (Intune) provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_get_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-get-2-permissions.md)]

### For Defender provider

<!-- { "blockType": "permissions", "name": "unifiedroleassignmentmultiple_get_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleassignmentmultiple-get-3-permissions.md)]

## HTTP request

To get the properties and relationships of a unifiedRoleAssignmentMultiple for a Cloud PC provider:
<!-- { "blockType": "ignored" } -->
```http
GET /roleManagement/cloudPC/roleAssignments/{id}
```

To get the properties and relationships of a unifiedRoleAssignmentMultiple for an Intune provider:
<!-- { "blockType": "ignored" } -->
```http
GET /roleManagement/deviceManagement/roleAssignments/{id}
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name  | Description |
|:----- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object in the response body.

## Examples

### Example 1: Get a directory-scoped roleAssignmentMultiple in an Intune provider

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentmultiple_Intune",
  "sampleKeys": ["lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignmentmultiple-intune-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignmentmultiple-intune-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignmentmultiple-intune-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignmentmultiple-intune-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignmentmultiple-intune-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignmentmultiple-intune-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignmentmultiple-intune-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/deviceManagement/roleAssignments/$entity",
    "@odata.type": "#microsoft.graph.unifiedRoleAssignmentMultiple",
    "id": "lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1",
    "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
    "principalIds[]": ["4ab0b690-479b-47ff-af8f-2576cf521872", "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"],
    "directoryScopeIds[]": ["28ca5a85-489a-49a0-b555-0a6d81e56f0", "8152656a-cf9a-4928-a457-1512d4cae295"]
}
```

### Example 2: Get a roleAssignmentMultiple assigned to a group in an Intune provider

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentmultiple_in_intune_provider",
  "sampleKeys": ["564ae70c-73d9-476b-820b-fb61eb7384b9"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments?$filter = principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignmentmultiple-in-intune-provider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignmentmultiple-in-intune-provider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignmentmultiple-in-intune-provider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignmentmultiple-in-intune-provider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignmentmultiple-in-intune-provider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignmentmultiple-in-intune-provider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignmentmultiple-in-intune-provider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/deviceManagement/roleAssignments",
    "@odata.count": 7,
    "value": [
        {
            "id": "893fc648-73fc-482b-b964-ddd1cabf0db4",
            "condition": null,
            "displayName": "Assign Contoso_App_Admin to School Admin",
            "description": "test",
            "roleDefinitionId": "2f9f4f7e-2d13-427b-adf2-361a1eef7ae8",
            "principalIds": [
                "564ae70c-73d9-476b-820b-fb61eb7384b9"
            ],
            "directoryScopeIds": [],
            "appScopeIds": [
                "0",
                "AllLicensedUsers"
            ]
        }
    ]
}
```

### Example 3: Get a directory-scoped roleAssignmentMultiple in an Intune provider with `$expand`

#### Request

The following example shows a request with the `$expand` query parameter.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_with_expand",
  "sampleKeys": ["lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments/lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1?$expand=roleDefinition,principals,directoryScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignment-with-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignment-with-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignment-with-expand-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignment-with-expand-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignment-with-expand-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignment-with-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignment-with-expand-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#roleManagement/deviceManagement/roleAssignments/$entity",
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentMultiple",
  "id": "lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1",
  "roleDefinitionId": "c2cf284d-6c41-4e6b-afac-4b80928c9034",
  "roleDefinition": {
    "id": "c2cf284d-6c41-4e6b-afac-4b80928c9034",
    "displayName": "Application Manager",
    "description": "Manages mobile and managed applications",
    "rolePermissions": [
      {
        "allowedResourceActions": [],
        "excludedResourceActions": [],
    }],
    "isEnabled": true,
    "isBuiltIn": true,
  },
  "principalIds": ["f8ca5a85-489a-49a0-b555-0a6d81e56f0d", "c1518aa9-4da5-4c84-a902-a31404023890"],
  "principals": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
      "id": "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
      "displayName": "Global IT"
    },
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
      "id": "c1518aa9-4da5-4c84-a902-a31404023890",
      "displayName": "Americas IT"
    }
],
  "directoryScopeIds": ["28ca5a85-489a-49a0-b555-0a6d81e56f0d", "8152656a-cf9a-4928-a457-1512d4cae295"],
  "directoryScopes": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
      "id": "28ca5a85-489a-49a0-b555-0a6d81e56f0d",
      "displayName": "Washington Sales Region"
    },
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
      "id": "8152656a-cf9a-4928-a457-1512d4cae295",
      "displayName": "Oregon Sales Region"
    }
  ]
}
```
### Example 4: Get a roleAssignmentMultiple in a Cloud PC provider

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentmultiple_cloud_pc_provider",
  "sampleKeys": ["dbe9d288-fd87-41f4-b33d-b498ed207096"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/cloudPC/roleAssignments/dbe9d288-fd87-41f4-b33d-b498ed207096
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignmentmultiple-cloud-pc-provider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignmentmultiple-cloud-pc-provider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignmentmultiple-cloud-pc-provider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignmentmultiple-cloud-pc-provider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignmentmultiple-cloud-pc-provider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignmentmultiple-cloud-pc-provider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignmentmultiple-cloud-pc-provider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/cloudPC/roleAssignments/$entity",
    "id": "dbe9d288-fd87-41f4-b33d-b498ed207096",
    "description": null,
    "displayName": "My test role assignment 1",
    "roleDefinitionId": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
    "principalIds": [
        "8e811502-ebda-4782-8f81-071d17f0f892",
        "30e3492f-964c-4d73-88c6-986a53c6e2a0"
    ],
    "directoryScopeIds": [
        "/"
    ],
    "appScopeIds": []
}
```

### Example 5: Get a roleAssignmentMultiple in a Cloud PC provider with `$expand`

#### Request

The following example shows a request with the `$expand` query parameter.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_cloud_pc_provider_expand",
  "sampleKeys": ["dbe9d288-fd87-41f4-b33d-b498ed207096"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/cloudPC/roleAssignments/dbe9d288-fd87-41f4-b33d-b498ed207096?$expand=roleDefinition
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignment-cloud-pc-provider-expand-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignment-cloud-pc-provider-expand-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignment-cloud-pc-provider-expand-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignment-cloud-pc-provider-expand-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignment-cloud-pc-provider-expand-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignment-cloud-pc-provider-expand-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignment-cloud-pc-provider-expand-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/cloudPC/roleAssignments/$entity",
    "@odata.type": "#microsoft.graph.unifiedRoleAssignmentMultiple",
    "id": "dbe9d288-fd87-41f4-b33d-b498ed207096",
    "roleDefinitionId": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
    "principalIds": ["8e811502-ebda-4782-8f81-071d17f0f892", "30e3492f-964c-4d73-88c6-986a53c6e2a0"],
    "directoryScopeIds": [
        "/"
    ],
    "appScopeIds": [],
    "roleDefinitions": {
        "id": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
        "description": "Have read and write access to all Cloud PC features.",
        "displayName": "Cloud PC Administrator",
        "isBuiltIn": true,
        "isEnabled": true,
        "resourceScopes": [
            "/"
        ],
        "templateId": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
        "version": null,
        "rolePermissions": [
            {
                "allowedResourceActions": [
                    "Microsoft.CloudPC/CloudPCs/Read",
                    "Microsoft.CloudPC/CloudPCs/Reprovision",
                    "Microsoft.CloudPC/DeviceImages/Create",
                    "Microsoft.CloudPC/DeviceImages/Delete",
                    "Microsoft.CloudPC/DeviceImages/Read",
                    "Microsoft.CloudPC/OnPremisesConnections/Create",
                    "Microsoft.CloudPC/OnPremisesConnections/Delete",
                    "Microsoft.CloudPC/OnPremisesConnections/Read",
                    "Microsoft.CloudPC/OnPremisesConnections/Update",
                    "Microsoft.CloudPC/OnPremisesConnections/RunHealthChecks",
                    "Microsoft.CloudPC/OnPremisesConnections/UpdateAdDomainPassword",
                    "Microsoft.CloudPC/ProvisioningPolicies/Assign",
                    "Microsoft.CloudPC/ProvisioningPolicies/Create",
                    "Microsoft.CloudPC/ProvisioningPolicies/Delete",
                    "Microsoft.CloudPC/ProvisioningPolicies/Read",
                    "Microsoft.CloudPC/ProvisioningPolicies/Update",
                    "Microsoft.CloudPC/RoleAssignments/Create",
                    "Microsoft.CloudPC/RoleAssignments/Update",
                    "Microsoft.CloudPC/RoleAssignments/Delete",
                    "Microsoft.CloudPC/Roles/Read",
                    "Microsoft.CloudPC/SelfServiceSettings/Read",
                    "Microsoft.CloudPC/SelfServiceSettings/Update"
                ],
                "condition": null
            }
        ]
    }
}
```

### Example 6: Get a roleAssignmentMultiple in a Defender provider

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignmentmultiple_defender_provider",
  "sampleKeys": ["dbe9d288-fd87-41f4-b33d-b498ed207096"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/defender/roleAssignments/dbe9d288-fd87-41f4-b33d-b498ed207096
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignmentmultiple-defender-provider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignmentmultiple-defender-provider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignmentmultiple-defender-provider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignmentmultiple-defender-provider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignmentmultiple-defender-provider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignmentmultiple-defender-provider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/defender/roleAssignments/$entity",
    "id": "dbe9d288-fd87-41f4-b33d-b498ed207096",
    "displayName": "My test role assignment 1",
    "roleDefinitionId": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
    "principalIds": [
        "8e811502-ebda-4782-8f81-071d17f0f892",
        "30e3492f-964c-4d73-88c6-986a53c6e2a0"
    ],
    "appScopeIds": [
        "Mdi"
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get unifiedRoleAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

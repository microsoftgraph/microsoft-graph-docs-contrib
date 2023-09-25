---
title: "Create deviceAndAppManagementRoleAssignment"
description: "Create a new deviceAndAppManagementRoleAssignment object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create deviceAndAppManagementRoleAssignment

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementRBAC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementRBAC.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/roleAssignments
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceAndAppManagementRoleAssignment object.

The following table shows the properties that are required when you create the deviceAndAppManagementRoleAssignment.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This is read-only and automatically generated. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|displayName|String|The display or friendly name of the role Assignment. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|description|String|Description of the Role Assignment. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|resourceScopes|String collection|List of ids of role scope member security groups.  These are IDs from Azure Active Directory. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|members|String collection|The list of ids of role member security groups. These are IDs from Azure Active Directory.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_rbac_deviceandappmanagementroleassignment_create_create_deviceandappmanagementroleassignment" }-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/roleAssignments
Content-type: application/json
Content-length: 258

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleAssignment",
  "displayName": "Display Name value",
  "description": "Description value",
  "resourceScopes": [
    "Resource Scopes value"
  ],
  "members": [
    "Members value"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-rbac-deviceandappmanagementroleassignment-create-create-deviceandappmanagementroleassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.deviceAndAppManagementRoleAssignment" }-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 307

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleAssignment",
  "id": "a12e8ebb-8ebb-a12e-bb8e-2ea1bb8e2ea1",
  "displayName": "Display Name value",
  "description": "Description value",
  "resourceScopes": [
    "Resource Scopes value"
  ],
  "members": [
    "Members value"
  ]
}
```

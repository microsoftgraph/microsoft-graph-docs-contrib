---
title: "Create deviceAndAppManagementRoleAssignment"
description: "Create a new deviceAndAppManagementRoleAssignment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create deviceAndAppManagementRoleAssignment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
```http
POST /deviceManagement/roleAssignments
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceAndAppManagementRoleAssignment object.

The following table shows the properties that are required when you create the deviceAndAppManagementRoleAssignment.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the request. This ID is assigned at when the entity is created. Read-only. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|displayName|String|Indicates the display name of the role assignment. For example: 'Houston administrators and users'. Max length is 128 characters. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|description|String|Indicates the description of the role assignment. For example: 'All administrators, employees and scope tags associated with the Houston office.' Max length is 1024 characters. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|scopeMembers|String collection|Indicates the list of role scope member security groups Entra IDs. For example, {dec942f4-6777-4998-96b4-522e383b08e2}. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|scopeType|[roleAssignmentScopeType](../resources/intune-rbac-roleassignmentscopetype.md)|Indicates the groups included as scope groups for the role assignment. Possible values are: `resourceScope`, `allDevices`, `allLicensedUsers`, `allDevicesAndLicensedUsers`. Default value is `resourceScope`. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md). Possible values are: `resourceScope`, `allDevices`, `allLicensedUsers`, `allDevicesAndLicensedUsers`, `unknownFutureValue`.|
|resourceScopes|String collection|Indicates the list of resource scope security group Entra IDs. For example: {dec942f4-6777-4998-96b4-522e383b08e2}. Inherited from [roleAssignment](../resources/intune-rbac-roleassignment.md)|
|members|String collection|Indicates the list of role member security group Entra IDs. For example: {dec942f4-6777-4998-96b4-522e383b08e2}.|
|roleScopeTagIds|String collection|Indicates the set of role scope tag IDs for the role assignment. These scope tags will limit the visibility of any Intune resources to those that match any of the scope tags in this collection.|



## Response
If successful, this method returns a `201 Created` response code and a [deviceAndAppManagementRoleAssignment](../resources/intune-rbac-deviceandappmanagementroleassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/roleAssignments
Content-type: application/json
Content-length: 404

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleAssignment",
  "displayName": "Display Name value",
  "description": "Description value",
  "scopeMembers": [
    "Scope Members value"
  ],
  "scopeType": "allDevices",
  "resourceScopes": [
    "Resource Scopes value"
  ],
  "members": [
    "Members value"
  ],
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 453

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRoleAssignment",
  "id": "a12e8ebb-8ebb-a12e-bb8e-2ea1bb8e2ea1",
  "displayName": "Display Name value",
  "description": "Description value",
  "scopeMembers": [
    "Scope Members value"
  ],
  "scopeType": "allDevices",
  "resourceScopes": [
    "Resource Scopes value"
  ],
  "members": [
    "Members value"
  ],
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ]
}
```

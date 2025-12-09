---
title: "roleAssignment resource type"
description: "The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# roleAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Role Assignment resource. Role assignments tie together a role definition with members and scopes. There can be one or more role assignments per role. This applies to custom and built-in roles.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List roleAssignments](../api/intune-rbac-roleassignment-list.md)|[roleAssignment](../resources/intune-rbac-roleassignment.md) collection|List properties and relationships of the [roleAssignment](../resources/intune-rbac-roleassignment.md) objects.|
|[Get roleAssignment](../api/intune-rbac-roleassignment-get.md)|[roleAssignment](../resources/intune-rbac-roleassignment.md)|Read properties and relationships of the [roleAssignment](../resources/intune-rbac-roleassignment.md) object.|
|[Create roleAssignment](../api/intune-rbac-roleassignment-create.md)|[roleAssignment](../resources/intune-rbac-roleassignment.md)|Create a new [roleAssignment](../resources/intune-rbac-roleassignment.md) object.|
|[Delete roleAssignment](../api/intune-rbac-roleassignment-delete.md)|None|Deletes a [roleAssignment](../resources/intune-rbac-roleassignment.md).|
|[Update roleAssignment](../api/intune-rbac-roleassignment-update.md)|[roleAssignment](../resources/intune-rbac-roleassignment.md)|Update the properties of a [roleAssignment](../resources/intune-rbac-roleassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the request. This ID is assigned at when the entity is created. Read-only.|
|displayName|String|Indicates the display name of the role assignment. For example: 'Houston administrators and users'. Max length is 128 characters.|
|description|String|Indicates the description of the role assignment. For example: 'All administrators, employees and scope tags associated with the Houston office.' Max length is 1024 characters.|
|scopeMembers|String collection|Indicates the list of role scope member security groups Entra IDs. For example, {dec942f4-6777-4998-96b4-522e383b08e2}.|
|scopeType|[roleAssignmentScopeType](../resources/intune-rbac-roleassignmentscopetype.md)|Indicates the groups included as scope groups for the role assignment. The possible values are: `resourceScope`, `allDevices`, `allLicensedUsers`, `allDevicesAndLicensedUsers`. Default value is `resourceScope`. The possible values are: `resourceScope`, `allDevices`, `allLicensedUsers`, `allDevicesAndLicensedUsers`, `unknownFutureValue`.|
|resourceScopes|String collection|Indicates the list of resource scope security group Entra IDs. For example: {dec942f4-6777-4998-96b4-522e383b08e2}.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roleDefinition|[roleDefinition](../resources/intune-rbac-roledefinition.md)|Indicates the role definition for this role assignment.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleAssignment",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "scopeMembers": [
    "String"
  ],
  "scopeType": "String",
  "resourceScopes": [
    "String"
  ]
}
```
---
title: "roleManagementCustomCalloutExtension resource type"
description: "Represents a custom workflow extension for Privileged Identity Management role management operations."
author: "amanswaika"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# roleManagementCustomCalloutExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom workflow extension for Privileged Identity Management (PIM) role management operations. Use this resource to integrate external approval, ticketing, compliance, audit, or notification systems into role assignment lifecycle events.

Objects of this type belong to the **customExtensions** relationship of [privilegedAccessRoot](../resources/privilegedaccessroot.md).

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/privilegedaccessroot-list-customextensions.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) collection|Get a list of PIM custom extensions.|
|[Create](../api/privilegedaccessroot-post-customextensions.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md)|Create a PIM custom extension.|
|[Get](../api/rolemanagementcustomcalloutextension-get.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md)|Retrieve a PIM custom extension.|
|[Update](../api/rolemanagementcustomcalloutextension-update.md)|[roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md)|Update a PIM custom extension.|
|[Delete](../api/privilegedaccessroot-delete-customextensions.md)|None|Delete a PIM custom extension.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration used to secure calls to the external app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The HTTP connection settings for calls to the external app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|customAttributes|String collection|The custom attribute names to include in the callout payload.|
|description|String|The description of the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|The display name of the custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the external endpoint that PIM calls. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|The unique identifier for the custom extension. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the custom extension is enabled.|
|resourceType|[customExtensionResourceType](../resources/enums.md#customextensionresourcetype-values)|The PIM provider to which the extension applies. The possible values are: `entraRoles`, `azureResources`, `entraGroups`, `unknownFutureValue`, `applicationAuthorization`, `appRoles`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `applicationAuthorization`, `appRoles`. Supports `$filter` (`eq`).|
|type|[customCalloutExtensionType](../resources/enums.md#customcalloutextensiontype-values)|The role assignment lifecycle stage at which PIM invokes the extension. The possible values are: `preApproval`, `postApproval`, `grant`, `revoke`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleManagementCustomCalloutExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.roleManagementCustomCalloutExtension",
  "id": "String (identifier)",
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
  },
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  },
  "description": "String",
  "displayName": "String",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  },
  "resourceType": "String",
  "customAttributes": [
    "String"
  ],
  "isEnabled": "Boolean",
  "type": "String"
}
```

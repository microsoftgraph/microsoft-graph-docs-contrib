---
title: "customTaskExtension resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# customTaskExtension resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customTaskExtensions](../api/identitygovernance-lifecycleworkflowscontainer-list-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|Get a list of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) objects and their properties.|
|[Create customTaskExtension](../api/identitygovernance-lifecycleworkflowscontainer-post-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Create a new [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Get customTaskExtension](../api/identitygovernance-customtaskextension-get.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Read the properties and relationships of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Update customTaskExtension](../api/identitygovernance-customtaskextension-update.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Update the properties of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Delete customTaskExtension](../api/identitygovernance-lifecycleworkflowscontainer-delete-customtaskextensions.md)|None|Deletes a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the createdBy navigation property.|
|[Add user](../api/identitygovernance-customtaskextension-post-createdby.md)|[microsoft.graph.user](../resources/user.md)|Add createdBy by posting to the createdBy collection.|
|[Remove user](../api/identitygovernance-customtaskextension-delete-createdby.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the lastModifiedBy navigation property.|
|[Add user](../api/identitygovernance-customtaskextension-post-lastmodifiedby.md)|[microsoft.graph.user](../resources/user.md)|Add lastModifiedBy by posting to the lastModifiedBy collection.|
|[Remove user](../api/identitygovernance-customtaskextension-delete-lastmodifiedby.md)|None|Remove a [user](../resources/user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[microsoft.graph.customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|**TODO: Add Description**|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|**TODO: Add Description**|
|lastModifiedBy|[user](../resources/user.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtension",
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
  "callbackConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```


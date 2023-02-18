---
title: "accessPackageAssignmentRequestWorkflowExtension resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# accessPackageAssignmentRequestWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageAssignmentRequestWorkflowExtensions](../api/accesspackageassignmentrequestworkflowextension-list.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) collection|Get a list of the [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) objects and their properties.|
|[Get accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-get.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)|Read the properties and relationships of an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|
|[Update accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-update.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)|Update the properties of an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|
|[Delete accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-delete.md)|None|Delete an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|**TODO: Add Description**|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|**TODO: Add Description** Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
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
  "createdBy": "String",
  "lastModifiedBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "callbackConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
  }
}
```


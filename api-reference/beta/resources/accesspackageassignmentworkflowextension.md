---
title: "accessPackageAssignmentWorkflowExtension resource type"
description: "Defines the attributes of a logic app, which can be called at various stages of an access package assignment cycle."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAssignmentWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the attributes of a logic app, which can be called at various stages of an access package request cycle. You can integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases. 

The following use cases can be integrated with logic apps using [access package assignment](accesspackageassignment.md) workflow:
- When an [access package assignment going to expire in fourteen days](accesspackageassignment.md)
- When an [access package assignment going to expire in one day](accesspackageassignment.md)

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageCustomWorkflowExtensions](../api/accesspackagecatalog-list-accesspackagecustomworkflowextensions.md)|[accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) collection|Get a list of the [accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) objects and their properties.|
|[Get accessPackageCustomWorkflowExtension](../api/accessPackagecustomworkflowextension-get.md#retrieve-a-custom-extension-for-use-with-an-access-package-assignment)|[accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Read the properties and relationships of an [accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Create accessPackageCustomWorkflowExtension](../api/accesspackagecatalog-post-accesspackagecustomworkflowextensions.md#create-a-custom-extension-for-use-with-an-access-package-assignment)|[accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Update the properties of an [accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Update accessPackageCustomWorkflowExtension](../api/accessPackagecustomworkflowextension-update.md)|[accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Update the properties of an [accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Delete accessPackageCustomWorkflowExtension](../api/accessPackagecustomworkflowextension-delete.md)|None|Delete an [accessPackageCustomWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|
|createdBy|String|The userPrincipalName of the user or identity of the subject who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|Entity created datetime.|
|description|String|Description for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Read-only.|
|lastModifiedBy|String|Identity with UPN as display name who modified entity. |
|lastModifiedDateTime|DateTimeOffset|Entity modified datetime.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageAssignmentWorkflowExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentWorkflowExtension",
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


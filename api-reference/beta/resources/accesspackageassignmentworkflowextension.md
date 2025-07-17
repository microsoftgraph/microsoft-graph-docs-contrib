---
title: "accessPackageAssignmentWorkflowExtension resource type"
description: "Defines the attributes of a logic app that can be called at various stages of an access package assignment cycle."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# accessPackageAssignmentWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the attributes of a logic app that can be called at various stages of an access package request cycle. You can integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases. 

The following use cases can be integrated with logic apps in the [access package assignment](accesspackageassignment.md) workflow:
- When an [access package assignment expires in fourteen days](accesspackageassignment.md)
- When an [access package assignment expires in one day](accesspackageassignment.md)

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/accesspackagecatalog-list-accesspackagecustomworkflowextensions.md)|[customCalloutExtension](../resources/accesspackageassignmentworkflowextension.md) collection|Get a list of the [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) objects and their properties.|
|[Create](../api/accesspackagecatalog-post-accesspackagecustomworkflowextensions.md)|[accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Create a new [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Get](../api/accesspackageassignmentworkflowextension-get.md)|[accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Read the properties and relationships of an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Update](../api/accesspackageassignmentworkflowextension-update.md)|[accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)|Update the properties of an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|
|[Delete](../api/accesspackageassignmentworkflowextension-delete.md)|None|Delete an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)| HTTP connection settings that define how long Microsoft Entra ID can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdBy|String|The userPrincipalName of the user or identity of the subject that created this resource. Read-only.|
|createdDateTime|DateTimeOffset|When the entity was created.|
|description|String|Description for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Read-only.|
|lastModifiedBy|String|The userPrincipalName of the identity that last modified the entity. |
|lastModifiedDateTime|DateTimeOffset|When the entity was last modified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

---
title: "accessPackageAssignmentRequestWorkflowExtension resource type"
description: "Defines the attributes of a logic app that can be called at various stages of an access package request cycle."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAssignmentRequestWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the attributes of a logic app that can be called at various stages of an access package request cycle. You can integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases. 

The following use cases can be integrated with logic apps using [access package assignment request](accesspackageassignmentrequest.md) workflow:
- When an [access package is requested](accesspackageassignmentrequest.md)
- When an [access package request is approved](accesspackageassignmentrequest.md)
- When an [access package request is granted](accesspackageassignmentrequest.md)
- When an [access package assignment expires](accesspackageassignmentrequest.md)


Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageAssignmentRequestWorkflowExtension](../api/accesspackagecatalog-list-accesspackagecustomworkflowextensions.md)|[customCalloutExtension](../resources/accesspackageassignmentrequestworkflowextension.md) collection|Get a list of the [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) objects and their properties.|
|[Create accessPackageAssignmentRequestWorkflowExtension](../api/accesspackagecatalog-post-accesspackagecustomworkflowextensions.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)| Create a new [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|
|[Get accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-get.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)|Read the properties and relationships of an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|
|[Update accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-update.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)|Update the properties of an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|
|[Delete accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-delete.md)|None|Delete an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|
|createdBy|String|The userPrincipalName of the user or identity of the subject that created this resource. Read-only.|
|createdDateTime|DateTimeOffset|When the object was created.|
|description|String|Description for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|Display name for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String|Read-only.|
|lastModifiedBy|String|The userPrincipalName of the identity that last modified the object. |
|lastModifiedDateTime|DateTimeOffset|When the object was last modified.|

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


---
title: "customAccessPackageWorkflowExtension resource type"
description: "Defines the attributes of a logic app, which can be called at various stages of an access package request and assignment cycle."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customAccessPackageWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the attributes of a logic app, which can be called at various stages of an access package request and assignment cycle. You can integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases. The following use cases can be integrated with logic apps using this workflow:
- When an [access package is requested](accesspackageassignmentrequest.md)
- When an [access package request is granted](accesspackageassignment.md)
- When an [access package assignment expires](accesspackageassignment.md)

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customAccessPackageWorkflowExtension](../api/accesspackagecatalog-list-customaccesspackageworkflowextensions.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) collection|Get a list of the [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) objects and their properties.|
|[Create customAccessPackageWorkflowExtension](../api/accesspackagecatalog-post-customaccesspackageworkflowextensions.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Create a new [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Get customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-get.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Read the properties and relationships of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Update customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-update.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Update the properties of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Delete customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-delete.md)|None|Deletes a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdDateTime|DateTimeOffset|Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|Description for the customAccessPackageWorkflowExtension object. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Read only.|
|displayName|String|Display name for the customAccessPackageWorkflowExtension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Read only. Supports `$filter` (`contains`).|
|endpointConfiguration|[customExtensionEndPointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|  
|id|String|Identifier for the customAccessPackageWorkflowExtension object. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customAccessPackageWorkflowExtension",
  "baseType": "microsoft.graph.customCalloutExtension",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAccessPackageWorkflowExtension",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndPointConfiguration"
  }
}
```

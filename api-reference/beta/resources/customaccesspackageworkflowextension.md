---
title: "customAccessPackageWorkflowExtension resource type"
description: "A custom access package workflow extension defines the attributes of external API, which can be called at different stages of assignment request."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customAccessPackageWorkflowExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 A custom access package workflow extension defines the attributes of external API, which can be called at different stages of assignment request.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-list.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) collection|Get a list of the [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) objects and their properties.|
|[Create customAccessPackageWorkflowExtension](../api/customextensionhandler-post-customextension.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Create a new [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Get customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-get.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Read the properties and relationships of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Update customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-update.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Update the properties of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Delete customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-delete.md)|None|Deletes a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|microsoft.graph.customExtensionAuthenticationConfiguration|Configuration for securing the API call. For example, using OAuth client-credentials.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.|
|description|String|Description for [customExtension](../resources/customextension.md). Read only.|
|displayName|String|Display name for [customExtension](../resources/customextension.md). Read only.|
|endpointConfiguration|microsoft.graph.customExtensionEndPointConfiguration|The endpoint configuration type.|  
|id|String|Identification for [customExtension](../resources/customextension.md).|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customAccessPackageWorkflowExtension",
  "baseType": "microsoft.graph.customExtension",
  "openType": false
}
-->
``` json
{ 
  "id": "98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0", 
  "displayName": "test extension", 
  "description": "Custom access package workflow extension for testing", 
  "createdDateTime": "2022-01-24T21:48:57.15Z", 
  "lastModifiedDateTime": "2022-01-24T21:55:44.953Z", 
  "endpointConfiguration": { 
      "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", 
      "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", 
      "resourceGroupName": "resourcegroup", 
      "logicAppWorkflowName": "elm_extension_test" 
  }, 
    "authenticationConfiguration": { 
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
        "resourceId": "eed6dee9-7ff7-44a5-8980-c11e8886cea2" 
  } 
} 
```

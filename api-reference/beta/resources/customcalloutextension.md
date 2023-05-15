---
title: "customCalloutExtension resource type"
description: "An abstract type that defines the configuration for logic apps that can be integrated with the customer's entitlement management use cases to implement broader governance workflows. This abstract type is inherited by the customAccessPackageWorkflowExtension resource type"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customCalloutExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the configuration for logic apps that can extend the customer's entitlement management and lifecycle workflows processes.

This abstract type is inherited by:

- [customAccessPackageWorkflowExtension](customaccesspackageworkflowextension.md)
- [customTaskExtension](../resources/identitygovernance-customtaskextension.md)
- [accessPackageAssignmentRequestWorkflowExtension](accesspackageassignmentrequestworkflowextension.md)
- [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)

Inherits from [entity](entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. |
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)| HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.|
|description|String|Description for the customCalloutExtension object.|
|displayName|String|Display name for the customCalloutExtension object.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow.|
|id|String|Identifier for the customCalloutExtension object. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customCalloutExtension",
  "openType": false,
  "abstract": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customCalloutExtension",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "endpointConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
  },
  "clientConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
  },
  "authenticationConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
  }
}
```

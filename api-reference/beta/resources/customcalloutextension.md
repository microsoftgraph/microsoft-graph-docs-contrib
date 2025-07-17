---
title: "customCalloutExtension resource type"
description: "An abstract type that defines the configuration for apps that can be integrated with the customer's identity flows."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# customCalloutExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the configuration for apps that can extend the customer's identity flows.

This abstract type is inherited by the following derived types.

- [customAccessPackageWorkflowExtension](customaccesspackageworkflowextension.md)
- [customAuthenticationExtension](../resources/customauthenticationextension.md)
- [customTaskExtension](../resources/identitygovernance-customtaskextension.md)
- [accessPackageAssignmentRequestWorkflowExtension](accesspackageassignmentrequestworkflowextension.md)
- [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)

Inherits from [entity](entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow. |
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)| HTTP connection settings that define how long Microsoft Entra ID can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed.|
|description|String|Description for the customCalloutExtension object.|
|displayName|String|Display name for the customCalloutExtension object.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The type and details for configuring the endpoint to call the logic app's workflow.|
|id|String|Identifier for the customCalloutExtension object. Inherited from [entity](../resources/entity.md).|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
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

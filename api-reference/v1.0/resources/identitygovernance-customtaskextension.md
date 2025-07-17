---
title: "customTaskExtension resource type"
description: "Defines the attributes of a custom task that allows you to integrate lifecycle workflows with Azure Logic Apps and trigger custom tasks through the logic app."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customTaskExtension resource type

Namespace: microsoft.graph.identityGovernance

Defines the attributes of a customTaskExtension that allows you to integrate Lifecycle Workflows with Azure Logic Apps. While Lifecycle Workflows provide multiple built-in tasks (known as taskDefinitions) to automate common scenarios during the user lifecycle, you may eventually reach the limits of these built-in tasks. You can create a customTaskExtension that contains information about an Azure Logic app, and trigger the Azure Logic app with the built-in task "Run a custom task extension" that references the corresponding customTaskExtension.

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

For more information about using custom task extensions, refer to the links in the [see also](#related-content) section.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitygovernance-lifecycleworkflowscontainer-list-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|Get a list of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) objects and their properties.|
|[Create](../api/identitygovernance-lifecycleworkflowscontainer-post-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Create a new [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Get](../api/identitygovernance-customtaskextension-get.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Read the properties and relationships of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Update](../api/identitygovernance-customtaskextension-update.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Update the properties of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Delete](../api/identitygovernance-customtaskextension-delete.md)|None|Deletes a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Required.|
|callbackConfiguration|[microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)|The callback configuration for a custom task extension.|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Microsoft Entra ID can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdDateTime|DateTimeOffset|When the custom task extension was created.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|description|String|Describes the purpose of the custom task extension for administrative use. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|displayName|String|A unique string that identifies the custom task extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Required.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Details for allowing the custom task extension to call the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String| Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|When the custom extension was last modified.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The unique identifier of the Microsoft Entra user that created the custom task extension.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|lastModifiedBy|[user](../resources/user.md)|The unique identifier of the Microsoft Entra user that modified the custom task extension last.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|

## JSON representation

The following JSON representation shows the resource type.
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

## Related content

+ [Lifecycle Workflows Custom Task Extension (Preview)](/azure/active-directory/governance/lifecycle-workflow-extensibility)

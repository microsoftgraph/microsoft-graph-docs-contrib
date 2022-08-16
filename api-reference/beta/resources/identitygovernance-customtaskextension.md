---
title: "customTaskExtension resource type"
description: "List customTaskExtension methods, properties, and relationships.*"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customTaskExtension resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type that is the extension used to call out to Logic Apps for custom workflow tasks using Lifecycle Workflows.

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
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[microsoft.graph.customExtensionCallbackConfiguration](../resources/customextensionendpointconfiguration.md)|Configuration for setting up a callback from the logic app to the Custom Task Extension.|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|createdDateTime|DateTimeOffset|Custom Task Extension created date and time|
|description|String|A string that describes the purpose of the custom task extension for administrative use. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|A unique string that identifies the custom task extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Details for allowing the Custom Task Extension to call the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String| Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Custom Task Extension last modified date and time.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the Custom Task Extension.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the Custom Task Extension.|

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

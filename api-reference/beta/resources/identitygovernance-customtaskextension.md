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

A resource type with information for integration with Azure Logic Apps.

Inherits from [customCalloutExtension](../resources/customcalloutextension.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List customTaskExtensions](../api/identitygovernance-customtaskextension-list.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|Get a list of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) objects and their properties.|
|[Create customTaskExtension](../api/identitygovernance-customtaskextension-post.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Create a new [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Get customTaskExtension](../api/identitygovernance-customtaskextension-get.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Read the properties and relationships of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Update customTaskExtension](../api/identitygovernance-customtaskextension-update.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Update the properties of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|
|[Delete customTaskExtension](../api/identitygovernance-customtaskextension-delete.md)|None|Deletes a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Configuration for securing the API call to the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|HTTP connection settings that define how long Azure AD can wait for a connection to a logic app, how many times you can retry a timed-out connection and the exception scenarios when retries are allowed. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|callbackConfiguration|[microsoft.graph.identitygovernance.customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|
|createdDateTime|DateTimeOffset|Custom Task Extension created date and time|
|description|String|A string that describes the purpose of the custom task extension for administrative use. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|A unique string that identifies the custom task extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Details for allowing the Custom Task Extension to call the logic app. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|id|String| Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date time the custom extension was last modified.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The unique identifier of the AAD user that created the `customTaskExtension`.|
|lastModifiedBy|[user](../resources/user.md)|The unique identifier of the AAD user that modified the `customTaskExtension` last.|

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/customTaskExtensions/$entity",
    "id": "ffcc4c85-5a14-448e-a390-77abf2700369",
    "displayName": "Grant manager access to mailbox and OneDrive",
    "description": "Grant manager access to mailbox and OneDrive",
    "createdDateTime": "2022-08-24T20:36:14.7006029Z",
    "lastModifiedDateTime": "2022-08-24T20:42:07.9885265Z",
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
        "subscriptionId": "c500b67c-e9b7-4ad2-a90d-77d41385ae55",
        "resourceGroupName": "RG-LCM",
        "logicAppWorkflowName": "ManagerAccess"
    },
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "542dc01a-0b5d-4edc-b3f9-5cfe6393f557"
    },
    "clientConfiguration": {
        "@odata.type": "#microsoft.graph.customExtensionClientConfiguration",
        "maximumRetries": 1,
        "timeoutInMilliseconds": 1000
    },
    "callbackConfiguration": {
        "@odata.type": "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
        "timeoutDuration": "PT5M"
    },
    "createdBy": {
        "@odata.type": "#microsoft.graph.users",
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    },
    "lastModifiedBy": {
        "@odata.type": "#microsoft.graph.users",
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    }
}
```

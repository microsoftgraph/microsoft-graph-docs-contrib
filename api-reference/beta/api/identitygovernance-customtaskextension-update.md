---
title: "Update Custom Task Extension"
description: "Update the properties of a customTaskExtension object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update Custom Task Extension

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

> [!IMPORTANT]
> The calling user also requires one of the following Azure Resource Manager roles for the specified Azure Logic App: **Logic App contributor**, **Contributor**, or **Owner**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for the `customTaskExtension`. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The client configuration for a custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|description|String|The description of the `customTaskExtension`. Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|displayName|String|The display name of the `customTaskExtension` Inherited from [customCalloutExtension](../resources/customcalloutextension.md).|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The endpoint configuration for a custom extension. Inherited from [customCalloutExtension](../resources/customcalloutextension.md). Optional.|
|callbackConfiguration|[microsoft.graph.identitygovernance.customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)|The callback configuration for a custom extension.  Optional.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_customtaskextension"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/customTaskExtensions/ffcc4c85-5a14-448e-a390-77abf2700369
Content-Type: application/json
Content-length: 588

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/customTaskExtensions/$entity",
    "id": "ffcc4c85-5a14-448e-a390-77abf2700369",
    "displayName": "Grant manager access to mailbox and OneDrive",
    "description": "Grant manager access to mailbox and OneDrive",
    "createdDateTime": "2022-08-24T20:36:14.7006029Z",
    "lastModifiedDateTime": "2022-08-24T20:36:14.7006083Z",
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
        "timeoutDuration": "PT10M"
    },
    "createdBy": {
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    },
    "lastModifiedBy": {
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    }
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

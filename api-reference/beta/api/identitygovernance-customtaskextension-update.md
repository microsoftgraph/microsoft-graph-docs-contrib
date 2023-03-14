---
title: "Update customTaskExtension"
description: "Update the properties of a customTaskExtension object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update customTaskExtension

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

For delegated scenarios, the admin needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

- Lifecycle Workflows Administrator

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
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for the customTaskExtension.|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The client configuration for a custom extension.|
|description|String|The description of the customTaskExtension.|
|displayName|String|The display name of the customTaskExtension.|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The endpoint configuration for a custom extension.|
|callbackConfiguration|[microsoft.graph.identitygovernance.customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)|The callback configuration for a custom extension.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_update_customtaskextension"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/customTaskExtensions/ffcc4c85-5a14-448e-a390-77abf2700369
Content-Type: application/json
Content-length: 588

{
"displayName": "Grant manager access to mailbox and OneDrive",
"description": "Grant manager access to mailbox and OneDrive",
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
"timeoutDuration": "PT20M"
}
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
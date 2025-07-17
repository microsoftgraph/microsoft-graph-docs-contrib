---
title: "Create Custom Task Extension"
description: "Create a new customTaskExtension object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Create customTaskExtensions

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_post_customtaskextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-post-customtaskextensions-permissions.md)]

> [!IMPORTANT]
> The calling user also requires one of the following Azure Resource Manager roles for the specified Azure Logic App: **Logic App contributor**, **Contributor**, or **Owner**.

[!INCLUDE [rbac-lifecycle-workflows-apis-write](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/customTaskExtensions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.

You can specify the following properties when creating a **customTaskExtension**.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[microsoft.graph.customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration for the `customTaskExtension`.|
|clientConfiguration|[microsoft.graph.customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The client configuration for a custom extension.|
|description|String|The description of the `customTaskExtension`.|
|displayName|String|A unique string that identifies the `customTaskExtension`.|
|endpointConfiguration|[microsoft.graph.customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The endpoint configuration for a custom extension. Optional.|
|callbackConfiguration|[microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md)|The callback configuration for a custom extension.  Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_create_customtaskextension_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/customTaskExtensions
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
        "timeoutDuration": "PT5M"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-create-customtaskextension-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-create-customtaskextension-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-create-customtaskextension-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-create-customtaskextension-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-create-customtaskextension-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-create-customtaskextension-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-create-customtaskextension-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-create-customtaskextension-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtension"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/customTaskExtensions/$entity",
    "id": "ee2590e4-4572-4820-a397-969ecd7bd6a9",
    "displayName": "Grant manager access to mailbox and OneDrive",
    "description": "Grant manager access to mailbox and OneDrive",
    "createdDateTime": "2022-08-24T22:37:46.1790566Z",
    "lastModifiedDateTime": "2022-08-24T22:37:46.179062Z",
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
    }
}
```

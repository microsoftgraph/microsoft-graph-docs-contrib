---
title: "Get customTaskExtension"
description: "Read the properties and relationships of a customTaskExtension object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 03/13/2024
---

# Get customTaskExtension

Namespace: microsoft.graph.identityGovernance

Read the properties and relationships of a [customTaskExtension](../resources/identitygovernance-customtaskextension.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_customtaskextension_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-customtaskextension-get-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_get_customtaskextension"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/customTaskExtensions/ffcc4c85-5a14-448e-a390-77abf2700369
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-get-customtaskextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-get-customtaskextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-get-customtaskextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-get-customtaskextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-get-customtaskextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-get-customtaskextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-get-customtaskextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-get-customtaskextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.customTaskExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/customTaskExtensions/$entity",
    "id": "ffcc4c85-5a14-448e-a390-77abf2700369",
    "displayName": "Grant manager access to mailbox and OneDrive",
    "description": "Grant manager access to mailbox and OneDrive",
    "createdDateTime": "2022-08-24T20:36:14.7006029Z",
    "lastModifiedDateTime": "2022-08-24T22:42:34.0744491Z",
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
        "@odata.type": "#microsoft.graph.user",
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    },
    "lastModifiedBy": {
        "@odata.type": "#microsoft.graph.user",
        "id": "a698128f-b34f-44db-a9f9-7661c7aba8d8"
    }
}
```

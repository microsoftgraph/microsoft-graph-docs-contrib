---
title: "List customTaskExtensions"
description: "Get a list of the customTaskExtension objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List customTaskExtensions

Namespace: microsoft.graph.identityGovernance

Get a list of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecycleworkflowscontainer_list_customtaskextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecycleworkflowscontainer-list-customtaskextensions-permissions.md)]

[!INCLUDE [rbac-lifecycle-workflows-apis-read](../includes/rbac-for-apis/rbac-lifecycle-workflows-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/customTaskExtensions
```

## Optional query parameters

This method supports the `$select` `$search`, `$orderby`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "lifecycleworkflows_list_customtaskextension"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/lifecycleWorkflows/customTaskExtensions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/lifecycleworkflows-list-customtaskextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/lifecycleworkflows-list-customtaskextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/lifecycleworkflows-list-customtaskextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/lifecycleworkflows-list-customtaskextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/lifecycleworkflows-list-customtaskextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/lifecycleworkflows-list-customtaskextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/lifecycleworkflows-list-customtaskextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/lifecycleworkflows-list-customtaskextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.customTaskExtension)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/lifecycleWorkflows/customTaskExtensions",
    "@odata.count": 2,
    "value": [
        {
            "id": "c0c5b05b-6b5b-4c8d-8060-2ae8df425f4b",
            "displayName": "Query and assign Teams phone number",
            "description": "Query and assign Teams phone number",
            "createdDateTime": "2022-08-24T20:34:52.3028938Z",
            "lastModifiedDateTime": "2022-08-24T20:35:07.716353Z",
            "callbackConfiguration": null,
            "endpointConfiguration": {
                "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
                "subscriptionId": "c500b67c-e9b7-4ad2-a90d-77d41385ae55",
                "resourceGroupName": "RG-LCM",
                "logicAppWorkflowName": "TeamsPhoneNumber"
            },
            "authenticationConfiguration": {
                "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
                "resourceId": "b9c29c27-b116-47a9-925b-ff3b19bafa3b"
            },
            "clientConfiguration": {
                "@odata.type": "#microsoft.graph.customExtensionClientConfiguration",
                "maximumRetries": 1,
                "timeoutInMilliseconds": 1000
            }
        },
        {
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
            }
        }
    ]
}
```

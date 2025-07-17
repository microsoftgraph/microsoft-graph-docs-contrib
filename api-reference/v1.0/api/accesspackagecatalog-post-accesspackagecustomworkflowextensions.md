---
title: "Create accessPackageCustomWorkflowExtension"
description: "Create a new accessPackageCustomWorkflowExtension object."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create accessPackageCustomWorkflowExtension

Namespace: microsoft.graph

Create a new [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object and add it to an existing [accessPackageCatalog](../resources/accesspackagecatalog.md) object.

You must explicitly provide an `@odata.type` property that indicates whether the object is an  **accessPackageAssignmentRequestWorkflowExtension** or an **accessPackageAssignmentWorkflowExtension**.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagecatalog_post_accesspackagecustomworkflowextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-post-accesspackagecustomworkflowextensions-permissions.md)]

[!INCLUDE [rbac-for-logic-apps-write](../includes/rbac-for-apis/rbac-entitlement-management-logic-apps-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/catalogs/{catalogId}/customWorkflowExtensions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.

You can specify the following properties when creating a **accessPackageCustomWorkflowExtension**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for the customAccessPackageWorkflowExtension object.|
|displayName|String|Required. Display name for the customAccessPackageWorkflowExtension.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|Required. The type and details for configuring the endpoint to call the logic app's workflow.|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|Required. Configuration for securing the API call to the logic app. For example, using OAuth client credentials flow.|
|callbackConfiguration|[customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md)|The callback configuration for a custom extension. This is supported for `accessPackageAssignmentRequestWorkflowExtension`. |

You must also supply an **@odata.type** property with a value of the specific access package workflow extension type. For example, `"@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension"`.

## Response

If successful, this method returns a `201 Created` response code and a [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object in the response body.

## Examples

###  Example 1: Create a custom extension for use with an access package assignment request

The following is an example of a access package assignment request custom workflow extension.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accessPackageAssignmentRequestWorkflowExtension"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customWorkflowExtensions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
  "displayName": "test_action_0124_email",
  "description": "this is for graph testing only",
  "endpointConfiguration": {
    "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration",
    "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d",
    "resourceGroupName": "test",
    "logicAppWorkflowName": "elm-extension-email"
  },
  "authenticationConfiguration": {
    "@odata.type": "#microsoft.graph.azureAdPopTokenAuthentication"
  },
  "callbackConfiguration": {
    "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration",
    "durationBeforeTimeout": "PT1H"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageassignmentrequestworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageassignmentrequestworkflowextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageassignmentrequestworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageassignmentrequestworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageassignmentrequestworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageassignmentrequestworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageassignmentrequestworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageassignmentrequestworkflowextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customCalloutExtension"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
   "value":{
      "@odata.type":"#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
      "id":"98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0",
      "displayName":"test_action_0124_email",
      "description":"this is for graph testing only",
      "createdDateTime":"2022-01-24T21:48:57.15Z",
      "lastModifiedDateTime":"2022-01-24T21:55:44.953Z",
      "clientConfiguration":null,
      "endpointConfiguration":{
         "@odata.type":"#microsoft.graph.logicAppTriggerEndpointConfiguration",
         "subscriptionId":"38ab2ccc-3747-4567-b36b-9478f5602f0d",
         "resourceGroupName":"test",
         "logicAppWorkflowName":"elm-extension-email",
         "url":"https://prod-31.eastus.logic.azure.com:443/workflows/8ccffea766ae48e680gd9a22d1549bbc/triggers/manual/paths/invoke?api-version=2016-10-01"
      },
      "authenticationConfiguration":{
         "@odata.type":"#microsoft.graph.azureAdPopTokenAuthentication"
      },
      "callbackConfiguration":{
         "@odata.type":"microsoft.graph.customExtensionCallbackConfiguration",
         "durationBeforeTimeout":"PT1H"
      }
   }
}
```

### Example 2: Create a custom extension for use with an access package assignment

The following is an example of a access package assignment custom workflow extension.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accessPackageAssignmentWorkflowExtension"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customWorkflowExtensions
Content-Type: application/json

{
   "value":{
      "@odata.type":"#microsoft.graph.accessPackageAssignmentWorkflowExtension",
      "displayName":"test_action_0127_email",
      "description":"this is for graph testing only",
      "endpointConfiguration":{
         "@odata.type":"#microsoft.graph.logicAppTriggerEndpointConfiguration",
         "subscriptionId":"38ab2ccc-3747-4567-b36b-9478f5602f0d",
         "resourceGroupName":"test",
         "logicAppWorkflowName":"elm-extension-email"
      },
      "authenticationConfiguration":{
         "@odata.type":"#microsoft.graph.azureAdPopTokenAuthentication"
      }
   }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageassignmentworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageassignmentworkflowextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageassignmentworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageassignmentworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageassignmentworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageassignmentworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageassignmentworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageassignmentworkflowextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customCalloutExtension"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
   "value":{
      "@odata.type":"#microsoft.graph.accessPackageAssignmentWorkflowExtension",
      "id":"78ffaec5-ae8e-4902-a434-5ffc5d3d3cd0",
      "displayName":"test_action_0127_email",
      "description":"this is for graph testing only",
      "createdDateTime":"2022-01-24T21:48:57.15Z",
      "lastModifiedDateTime":"2022-01-24T21:55:44.953Z",
      "clientConfiguration":null,
      "endpointConfiguration":{
         "@odata.type":"#microsoft.graph.logicAppTriggerEndpointConfiguration",
         "subscriptionId":"38ab2ccc-3747-4567-b36b-9478f5602f0d",
         "resourceGroupName":"test",
         "logicAppWorkflowName":"elm-extension-email",
         "url":"https://prod-31.eastus.logic.azure.com:443/workflows/7ccffea766ae48e680gd9a22d1549bbc/triggers/manual/paths/invoke?api-version=2016-10-01"
      },
      "authenticationConfiguration":{
         "@odata.type":"#microsoft.graph.azureAdPopTokenAuthentication"
      }
   }
}
```

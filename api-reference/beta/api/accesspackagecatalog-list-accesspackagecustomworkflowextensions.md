---
title: "List accessPackagecustomWorkflowExtensions"
description: "Get a list of the accessPackageCustomWorkflowExtension objects and their properties."
author: "vikama-Microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List accessPackageCustomWorkflowExtensions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) and [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) objects and their properties. The resulting list includes all the **customAccessPackageWorkflowExtension** objects for the catalog that the caller has access to read. Each object includes an `@odata.type` property that indicates whether the object is an  **accessPackageAssignmentRequestWorkflowExtension** or an **accessPackageAssignmentWorkflowExtension**.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/accessPackageCustomWorkflowExtensions
```

## Optional query parameters
This method supports the `$select` and `$filter` OData query parameters to help customize the response. For example, to search for access packages with a particular name, include a filter such as `$filter=contains(tolower(displayName),'team')` in the query. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accesspackagecustomworkflowextension"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackageCustomWorkflowExtensions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accesspackagecustomworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accesspackagecustomworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accesspackagecustomworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accesspackagecustomworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accesspackagecustomworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accesspackagecustomworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customCalloutExtension)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackageCustomWorkflowExtensions",
   "value":[
      {
         "@odata.type":"#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
         "id":"98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0",
         "displayName":"test_action_0124",
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
      },
      {
         "@odata.type":"#microsoft.graph.accessPackageAssignmentWorkflowExtension",
         "id":"98ffaec5-ae8e-4902-a434-5ffc5d3d3cd0",
         "displayName":"test_action_0124",
         "description":"this is for graph testing only",
         "createdDateTime":"2022-01-24T21:48:57.15Z",
         "lastModifiedDateTime":"2022-01-24T21:55:44.953Z",
         "clientConfiguration":null,
         "endpointConfiguration":{
            "@odata.type":"#microsoft.graph.logicAppTriggerEndpointConfiguration",
            "subscriptionId":"38ab2ccc-3747-4567-b36b-9478f5602f0d",
            "resourceGroupName":"test",
            "logicAppWorkflowName":"elm-extension-email",
            "url":"https://prod-31.eastus.logic.azure.com:443/workflows/9ccffea766ae48e680gd9a22d1549bbc/triggers/manual/paths/invoke?api-version=2016-10-01"
         },
         "authenticationConfiguration":{
            "@odata.type":"#microsoft.graph.azureAdPopTokenAuthentication"
         }
      }
   ]
}
```

---
title: "Get accessPackageAssignmentWorkflowExtension"
description: "Read the properties and relationships of an accessPackageAssignmentWorkflowExtension object."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get accessPackageAssignmentWorkflowExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/accessPackageCustomWorkflowExtensions/{accessPackageCustomWorkflowExtensionId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignmentworkflowextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackageCustomWorkflowExtensions/78ffaec5-ae8e-4902-a434-5ffc5d3d3cd0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageassignmentworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageassignmentworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageassignmentworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageassignmentworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageassignmentworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageassignmentworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentWorkflowExtension"
}
-->
``` http
HTTP/1.1 200 OK
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


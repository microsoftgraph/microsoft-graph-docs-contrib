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
<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignmentworkflowextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackageCustomWorkflowExtensions/85a68644-325e-29ec-2dc5-2f617fcf7ded
```


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
  "value": {
    "@odata.type": "#microsoft.graph.accessPackageAssignmentWorkflowExtension",
    "id": "85a68644-325e-29ec-2dc5-2f617fcf7ded",
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
    "createdBy": "String",
    "lastModifiedBy": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "callbackConfiguration": {
      "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
    }
  }
}
```


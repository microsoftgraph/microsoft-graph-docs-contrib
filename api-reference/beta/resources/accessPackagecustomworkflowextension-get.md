---
title: "Get accessPackageCustomWorkflowExtension"
description: "Read the properties and relationships of an accessPackageCustomWorkflowExtension object."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get accessPackageCustomWorkflowExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.Read.All EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/accessPackageAssignmentRequestWorkflowExtensions/{accessPackageCustomWorkflowExtensionId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object in the response body.

## Examples

### Access Package Assignment Request Workflow Extension
The following is an example of a access package assignment request workflow extension type request.
<!-- {
  "blockType": "accessPackageAssignmentRequestWorkflowExtensionrequest",
  "name": "get_accessPackageAssignmentRequestWorkflowExtension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/accessPackageAssignmentRequestWorkflowExtensions/{accessPackageCustomWorkflowExtensionId}
```


### Response
The following is an example of the access package assignment request workflow extension type response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequestWorkflowExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
    "id": "c0dd20c0-8e71-e35c-c2a8-926b673e09f8",
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

### Access Package Assignment Workflow Extension
The following is an example of a access package assignment workflow extension type request.
<!-- {
  "blockType": "accessPackageAssignmentWorkflowExtensionrequest",
  "name": "get_accessPackageAssignmentWorkflowExtension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/accessPackageAssignmentRequestWorkflowExtensions/{accessPackageCustomWorkflowExtensionId}
```


### Response
The following is an example of the access package assignment workflow extension type response
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
    "id": "c0dd20c0-8e71-e35c-c2a8-926b673e09f8",
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
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```

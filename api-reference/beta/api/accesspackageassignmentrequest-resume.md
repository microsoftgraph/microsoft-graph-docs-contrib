---
title: "accessPackageAssignmentRequest: resume"
description: "Resume accessPackageAssignmentRequest objects."
ms.localizationpriority: medium
author: "vikama-microsoft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignmentRequest: resume
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), when an access package policy has been enabled to call out a custom extension and the request processing is waiting for the callback from the customer, the customer can initiate a resume action. It is performed on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object whose **requestStatus** is in a `WaitingForCallback` state. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
| Delegated (work or school account) | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackageAssignmentRequests/{accessPackageAssignmentRequestId}/resume
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|source|String|Source from where customer is trying to resume the request, which can be stored in service and will be helpful for auditing.|
|type|String|Indicate at which stage the custom callout extension was executed. The possible values are: `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestApproved`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestGranted`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestRemoved`|
|data|[accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md)| Contains information about the instance of the callout that was made to the customer endpoint. |



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Resume an access package assignment request

#### Request
The following is an example of a call to resume an access package assignment request that's waiting for a callback.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequestthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/0e60f18c-b2a0-4887-9da8-da2e30a39d99/resume
Content-Type: application/json

{
  "source": "Contoso.SodCheckProcess",
  "type": "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
  "data": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCallbackData",
    "stage": "assignmentRequestCreated",
    "customExtensionStageInstanceId": "957d0c50-466b-4840-bb5b-c92cea7141ff",
    "customExtensionStageInstanceDetail": "This user is all verified"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accesspackageassignmentrequestthisresume-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accesspackageassignmentrequestthisresume-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accesspackageassignmentrequestthisresume-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accesspackageassignmentrequestthisresume-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accesspackageassignmentrequestthisresume-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accesspackageassignmentrequestthisresume-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Resume and deny an access package assignment request

#### Request
The following is an example to resume the processing of an access package assignment request by denying the request that's waiting for a callback. A request cannot be denied at the `assignmentRequestCreated` stage of the callout.
<!-- {
  "blockType": "request"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/9e60f18c-b2a0-4887-9da8-da2e30a39d99/resume
Content-Type: application/json

{
  "source": "Contoso.SodCheckProcess",
  "type": "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
  "data": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCallbackData",
    "stage": "AssignmentRequestCreated",
    "customExtensionStageInstanceId": "857d0c50-466b-4840-bb5b-c92cea7141ff",
    "state": "denied",
    "customExtensionStageInstanceDetail": "Potential risk user based on the SOD check"
  }
}
```


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


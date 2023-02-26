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

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), when a access package policy has been enabled to call out custom extension and is excepted and the request processing is waiting for the callback from customer a resume action can be triggered by customer.It is performed on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object whose **requestStatus** in `WaitingForCallback` status. 

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
|type|String|Indicate at which stage the custom callout extension was executed.The possible values are: `microsoft.graph.accessPackageCustomExtensionStage.ssignmentRequestCreated`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestApproved`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestGranted`, `microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestRemoved`|
|data|[customExtensionData](../resources/customextensiondata.md)|[Access Package Assignment Request Callback Data](../resources/accesspackageassignmentrequestcallbackdata.md)|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Resume a request
The following is an example of a on how to resume a resume that waiting for callback.
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequestthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/0e60f18c-b2a0-4887-9da8-da2e30a39d99/resume
Content-Type: application/json

{
  "source": "Contoso.SodCheckProcess"
  "type": "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
  "data": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCallbackData"
    "stage": "AssignmentRequestCreated",
    "customExtensionStageInstanceId": "957d0c50-466b-4840-bb5b-c92cea7141ff",
    "customExtensionStageInstanceDetail": "This user is all verified"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Deny an access package assignment request
The following is an example to deny an assignment request which is waiting for callback which resuming the processing of a request. Request can not be denied at `assignmentRequestCreated` stage of callout.
<!-- {
  "blockType": "request",
  "name": "accesspackageassignmentrequestthis.resume"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/9e60f18c-b2a0-4887-9da8-da2e30a39d99/resume
Content-Type: application/json

{
  "source": "Contoso.SodCheckProcess"
  "type": "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
  "data": {
    "@odata.type": "microsoft.graph.accessPackageAssignmentRequestCallbackData"
    "stage": "AssignmentRequestCreated",
    "customExtensionStageInstanceId": "857d0c50-466b-4840-bb5b-c92cea7141ff",
    "state": "denied",
    "customExtensionStageInstanceDetail": "Protentail risk user based on the SOD check"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


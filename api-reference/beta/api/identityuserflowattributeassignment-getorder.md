---
title: "identityUserFlowAttributeAssignment: getOrder"
description: "Get the order of identityUserFlowAttributeAssignments being collected within a user flow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# identityUserFlowAttributeAssignment: getOrder

Namespace: microsoft.graph

Get the order of identityUserFlowAttributeAssignments being collected within a user flow.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identity/b2cUserFlows/{b2cIdentityUserFlowId}/userAttributeAssignments/getOrder
GET /identity/b2xUserFlows/{b2xIdentityUserFlowId}/userAttributeAssignments/getOrder
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Function parameters

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [assignmentOrder](../resources/assignmentorder.md) in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "identityuserflowattributeassignment_getorder"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/b2cUserFlows/{id}/userAttributeAssignments/getOrder
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.assignmentOrder"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta$metadata#microsoft.graph.assignmentOrder",
    "order": [
        "extension_GUID_ShoeSize",
        "City"
    ]
}
```

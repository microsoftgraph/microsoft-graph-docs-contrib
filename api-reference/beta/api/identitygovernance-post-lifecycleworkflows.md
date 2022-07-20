---
title: "Create lifecycleWorkflowsContainer"
description: "Create a new lifecycleWorkflowsContainer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create lifecycleWorkflowsContainer
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.identityGovernance.lifecycleWorkflowsContainer not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.

You can specify the following properties when creating a **lifecycleWorkflowsContainer**.

|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `201 Created` response code and a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_lifecycleworkflowscontainer_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.identityGovernance.lifecycleWorkflowsContainer not found
Content-Type: application/json
Content-length: 88

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleWorkflowsContainer"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleWorkflowsContainer"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleWorkflowsContainer",
  "id": "38c6b28a-649e-3e3b-e302-d89a3bb8503c"
}
```


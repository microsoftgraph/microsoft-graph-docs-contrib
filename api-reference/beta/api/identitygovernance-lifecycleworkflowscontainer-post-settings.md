---
title: "Create lifecycleManagementSettings"
description: "Create a new lifecycleManagementSettings object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create lifecycleManagementSettings
Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.

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
POST ** Collection URI for microsoft.graph.identityGovernance.lifecycleManagementSettings not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object.

You can specify the following properties when creating a **lifecycleManagementSettings**.

|Property|Type|Description|
|:---|:---|:---|
|workflowScheduleIntervalInHours|Int32|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_lifecyclemanagementsettings_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.identityGovernance.lifecycleManagementSettings not found
Content-Type: application/json
Content-length: 137

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "workflowScheduleIntervalInHours": "Integer"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleManagementSettings"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleManagementSettings",
  "id": "1daafe5e-7b19-9220-d761-869068528401",
  "workflowScheduleIntervalInHours": "Integer"
}
```


---
title: "Create directoryRoleAccessReviewPolicy"
description: "Create a new directoryRoleAccessReviewPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create directoryRoleAccessReviewPolicy
Namespace: microsoft.graph

Create a new [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST ** Collection URI for microsoft.graph.directoryRoleAccessReviewPolicy not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object.

The following table shows the properties that are required when you create the [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_directoryroleaccessreviewpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.directoryRoleAccessReviewPolicy not found
Content-Type: application/json
Content-length: 163

{
  "@odata.type": "#microsoft.graph.directoryRoleAccessReviewPolicy",
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryRoleAccessReviewPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryRoleAccessReviewPolicy",
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```


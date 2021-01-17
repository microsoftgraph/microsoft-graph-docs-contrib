---
title: "Add appScope"
description: "Add appScope by posting to the appScope collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add appScope
Namespace: microsoft.graph

Add appScope by posting to the appScope collection.

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
POST /unifiedRoleEligibilityRequests/{unifiedRoleEligibilityRequestsId}/appScope/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [appScope](../resources/appscope.md) object.

The following table shows the properties that are required when you create the [appScope](../resources/appscope.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `204 No Content` response code and an [appScope](../resources/appscope.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_appscope_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/unifiedRoleEligibilityRequests/{unifiedRoleEligibilityRequestsId}/appScope/$ref
Content-Type: application/json
Content-length: 94

{
  "@odata.type": "#Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.appScope"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.appScope"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.appScope",
  "id": "0bac8bc9-8bc9-0bac-c98b-ac0bc98bac0b"
}
```


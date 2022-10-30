---
title: "Update deploymentAudience"
description: "Update the properties of a deploymentAudience object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update deploymentAudience
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.

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
PATCH /admin/windows/updates/deployments/{deploymentId}/audience
PATCH /admin/windows/updates/updatePolicies/{updatePolicyId}/audience
PATCH /admin/windows/updates/deploymentAudiences/{deploymentAudienceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection|**TODO: Add Description** Optional.|
|reportingDeviceCount|Int32|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_deploymentaudience"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/deployments/{deploymentId}/audience
Content-Type: application/json
Content-length: 232

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentAudience",
  "applicableContent": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.applicableContent"
    }
  ],
  "reportingDeviceCount": "Integer"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentAudience",
  "id": "7f960f66-b6ed-6d54-f24a-9b1021a1d17f",
  "applicableContent": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.applicableContent"
    }
  ],
  "reportingDeviceCount": "Integer"
}
```


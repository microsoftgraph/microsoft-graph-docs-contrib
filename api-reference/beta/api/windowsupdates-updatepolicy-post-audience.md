---
title: "Add deploymentAudience"
description: "Add audience by posting to the audience collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add deploymentAudience
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add audience by posting to the audience collection.

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
POST /admin/windows/updates/updatePolicies/{updatePolicyId}/audience/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.

You can specify the following properties when creating a **deploymentAudience**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](../resources/windowsupdates-applicablecontent.md) collection|**TODO: Add Description** Optional.|
|reportingDeviceCount|Int32|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_deploymentaudience_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/{updatePolicyId}/audience/$ref
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
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentAudience"
}
-->
``` http
HTTP/1.1 204 No Content
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


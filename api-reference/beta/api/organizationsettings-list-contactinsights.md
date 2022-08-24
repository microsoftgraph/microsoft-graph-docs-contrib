---
title: "List organizationContactInsights"
description: "Retrieve properties of organizationContactInsights object for displaying or returning contact insights in an organization."
author: "rogoy"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# List organizationContactInsights
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [organizationContactInsights](../resources/organizationcontactinsights.md) object.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Organization.Read.All, Organization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/settings/contactInsights
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [organizationContactInsights](../resources/organizationcontactinsights.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_insightssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/contactInsights
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```


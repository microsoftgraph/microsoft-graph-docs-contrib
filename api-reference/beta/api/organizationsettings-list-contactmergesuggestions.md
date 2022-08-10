---
title: "Get contactMergeSuggestions"
description: "Get the settings for contact merge suggestions in an organization."
author: "rogoy"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Get contactMergeSuggestions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [contactMergeSuggestions](../resources/organizationcontactmergesuggestions.md) object.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|User.Read.All, User.ReadWrite.All|
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

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [contactMergeSuggestionsSettings](../resources/organizationcontactmergesuggestions.md) objects in the response body.

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
  "@odata.type": "Collection(microsoft.graph.insightsSettings)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "isEnabledInOrganization": true,
      "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
    }
  ]
}
```

